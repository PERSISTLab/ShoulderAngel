#include "pins.h"
#include "lib_spi.h"
#include "lib_cc1101.h"
#include "lib_clock.h"
#include "lib_led.h"
#include "lib_uart.h"
#include "lib_bsl.h"
#include "lib_adc.h"
#include "lib_general_definitions.h"
#include "cc1101_registers.h"

#include "radio_tests_info.h" // for radio test testing

#include "shoulder_angel.h"
#include "goldenImage.dat"

/* What currently works and doesn't
 - Reprogramming - works (
        - but doesn't if you power cycle off SA and turn it back on again 
        - you CAN reprogram multiple times as long as you don't lose power
        - probably not intitializing something correctly
 - spiTxSnooping - works
 - spiRxSnooping - works
 - handshake     - works
 - radio takeover - works
 - power monitoring - untested
 - receive update - works
        - target must handshake correctly (or not use radio at all)
        - Only confirmed to work with the t_handshake image

 Current Bugs (TODO)
 - Reprogramming doesn't work after power cycling SA
 */

//TODO: make these defaults
//#ifndef PROGRAMMING_ENABLED
//  #define REPROGRAMMING_ENABLED       YES
//#endif

#define REPROGRAMMING_ENABLED       YES
#define HANDSHAKE_ENABLED           NO
#define RADIO_TAKEOVER_ENABLED      NO
#define RECEIVE_UPDATE_ENABLED      NO
#define SPI_SNOOPING_ENABLED        NO
#define POWER_MONITORING_ENABLED    YES
#define LEDS_ENABLED                YES

uint16_t adc_current_high_count;
// NOTE: NEED TO DIAL THIS IN
#define SLEEP_CURRENT_THRESHOLD_VALUE 6
#define ADC_HIGH_COUNT 4 //if it's high for 4 times in a row, it's been on too long.

/*****************************************************************************/
/* GLOBAL VARIABLES */
/*****************************************************************************/
// Periphrial Stacks
cc1101_stack_t __radio__;
bsl_stack_t __bslStack__;
spi_stack_t __spiSnoopTx__;
spi_stack_t __spiSnoopRx__;

// Periphrial Stack Pointers
cc1101_stack_t *radio;
bsl_stack_t *bslStack;
spi_stack_t *spiSnoopTx;
spi_stack_t *spiSnoopRx;

// Mode PQ Variables
#define MODE_PQ_SIZE 100
volatile uint8_t modePq[MODE_PQ_SIZE] = {0};
volatile uint8_t modePqHead;
volatile uint8_t modePqTail;
volatile uint8_t modePqSize;
volatile uint8_t currMode;

// Other Variables
uint8_t timerA0SetBy;
uint8_t handshakeTimerHasExpired;
uint8_t radioHasTimedOut;
uint8_t spiHasTimedOut;
uint16_t totalUpdateDataPacketsReceived;
/*****************************************************************************/
/* SLEEP FUNCTIONS */
/*****************************************************************************/
void enter_sleep (void) {
    __bis_SR_register (LPM3_bits + GIE);
    __no_operation();
}

/*****************************************************************************/
/* INITIALIZATION FUNCTIONS */
/*****************************************************************************/
void config_clock(void) {
    FRCTL0 = FRCTLPW | NWAITS_2; // FRAM can only be written at 8MHz, puts 2 no-op waits
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_24MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_MCLK_DIV_BY_1();
    CLOCK_SMCLK_DIV_BY_2();
    TIMER_DIV_ACLK(); // div clock by setting given by user
}


void init_lpm_state (void) {
    // Set GPIO pins to low power state
    // leaving the pins at their defaults will draw more power.
    P1DIR = 0x00; //input
    P1OUT = 0x00; //would be low if it were an output. (pull down)
    P1REN = 0xFF; //pull down
    P1SEL0 = 0x00; //mode = GPIO
    P1SEL1 = 0x00; //mode = GPIO

    P2DIR = 0x00;
    P2OUT = 0x00;
    P2REN = 0xFF;
    P2SEL0 = 0x00;
    P2SEL1 = 0x00;

    P3DIR = 0x00;
    P3OUT = 0x00;
    P3REN = 0xFF;
    P3SEL0 = 0x00;
    P3SEL1 = 0x00;

    P4DIR = 0x00;
    P4OUT = 0x00;
    P4REN = 0xFF;
    P4SEL0 = 0x00;
    P4SEL1 = 0x00;
#ifdef __msp430fr6989__
    P5DIR = 0x00;
    P5OUT = 0x00;
    P5REN = 0xFF;
    P5SEL0 = 0x00;
    P5SEL1 = 0x00;

    P6DIR = 0x00;
    P6OUT = 0x00;
    P6REN = 0xFF;
    P6SEL0 = 0x00;
    P6SEL1 = 0x00;

    P7DIR = 0x00;
    P7OUT = 0x00;
    P7REN = 0xFF;
    P7SEL0 = 0x00;
    P7SEL1 = 0x00;

    P8DIR = 0x00;
    P8OUT = 0x00;
    P8REN = 0xFF;
    P8SEL0 = 0x00;
    P8SEL1 = 0x00;

    P9DIR = 0x00;
    P9OUT = 0x00;
    P9REN = 0xFF;
    P9SEL0 = 0x00;
    P9SEL1 = 0x00;

    P10DIR = 0x00;
    P10OUT = 0x00;
    P10REN = 0xFF;
    P10SEL0 = 0x00;
    P10SEL1 = 0x00;
#endif

    PJDIR = 0x00;
    PJOUT = 0x00;
    PJREN = 0xFF;
    PJSEL0 = 0x00;
    PJSEL1 = 0x00;

    // Turn off ADC
    ADC_CONVERSION_DISABLE();
    ADC_TURN_OFF();
}




/*****************************************************************************/
/* Mode Priority Queue Functions */
/*****************************************************************************/

//TODO: fix magic number
uint8_t numModesAdded[10];
// reset the mode pq
void resetModePq (void) {
    modePqHead = modePqTail = modePqSize = 0;
    uint8_t i;
    for (i = 0; i < 10; i++) {
        numModesAdded[i] = 0;
    }
}


//TODO: fix 0xF0 magic number
// add mode to the mode pq
void add_mode(uint8_t nextMode) {
    // See if it should be added to the queue
    if (numModesAdded[nextMode - 0xF0] == 0) {
        numModesAdded[nextMode - 0xF0]++;

        _DINT(); // Disable Interupts
        if (modePqSize < MODE_PQ_SIZE) {
            modePq[modePqHead] = nextMode;
            modePqSize++;
            modePqHead++;
            if (modePqHead == MODE_PQ_SIZE) {
                modePqHead = 0;
            }
        }
        _EINT(); // Enable interrupts
    }
}

// set the currMode as the next mode in the pq
// NOTE: Defaults to sleep if no next mode queued
void set_mode (void) {
    _DINT(); // Disable interrupts
    uint8_t nextMode = MODE_SLEEP;
    if (modePqSize > 0) {
        nextMode = modePq[modePqTail];
        modePqSize--;
        modePqTail++;
        if (modePqTail == MODE_PQ_SIZE) {
            modePqTail = 0;
        }
    }
    if (numModesAdded[currMode - 0xF0] > 0) {
        numModesAdded[currMode - 0xF0]--;
    }
    currMode = nextMode;
    _EINT(); // Enable Interrupts
}

/*****************************************************************************/
/* General Purpose / Calculation Functions */
/*****************************************************************************/

//Used for debugging.
void blink_forever(void) {
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    while (1) {
        LED0_TOGGLE();
        LED1_TOGGLE();
        __delay_cycles(1000000);
    }
}

//If we get time, look into hardware CRC module for better speed.
uint16_t calcCrc (uint8_t *data, uint16_t size) {
    uint16_t crc = 0xFFFF;
    while (size) {
        crc = (uint8_t) (crc >> 8) | (crc << 8);
        crc ^= (uint8_t) *data;
        crc ^= (uint8_t) (crc & 0xff) >> 4;
        crc ^= (crc << 8) << 4;
        crc ^= ((crc & 0xff) << 4) << 1;
        size--;
        data++;
    }
    return crc;
}


/*****************************************************************************/
/* TIMER RESETS */
/*****************************************************************************/
void clear_A0_timer(void) {
    TA0CCTL0 = 0;
}
void reset_radio_takeover_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 10000;
    TA0CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA0CTL |= ID__2;
    //TA0EX0 = TAIDEX_5;
    TA0EX0 = TAIDEX_0;
    timerA0SetBy = RADIO_TAKEOVER_TIMER;

}

void reset_handshake_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 10000;
    TA0CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA0EX0 = TAIDEX_1;
    timerA0SetBy = HANDSHAKE_TIMER;
}

void reset_radio_receive_timeout_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 5000;
    TA0CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA0EX0 = TAIDEX_0;
    timerA0SetBy = RADIO_RECEIVE_TIMEOUT;
}

void reset_update_receive_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 15000;
    //TA0CCR0 = 1000;
    TA0CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA0EX0 = TAIDEX_0;
    timerA0SetBy = UPDATE_RECEIVE_TIMEOUT;
}

void reset_wait_for_spi_bytes_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 10000;
    TA0CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA0EX0 = TAIDEX_0;
    timerA0SetBy = WAIT_FOR_SPI_BYTES_TIMER;
}

// Reset Current Timer
void reset_current_timer (void) {
    TA1CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA1CCR0 = 2500;
    TA1CTL = TASSEL_1 | MC_1;                 // ACLK, upmode
    TA1EX0 = TAIDEX_0;
}

/*****************************************************************************/
/* General Purpose Radio Functions */
/* NOTE: Need to make sure that the target isnt using the radio at this time */
/*****************************************************************************/
// TODO: look into using memcmp instead (smaller?)
uint8_t compare_packets(const uint8_t *p1, uint8_t s1, const uint8_t *p2, uint8_t s2) {
    uint8_t isCorrect = CORRECT;
    uint8_t i;
    if (s1 != s2) {
        isCorrect = INCORRECT;
    } else {
        for (i = 0; i < s1; i++) {
            // Check that packet is the same as packet1
            if (p1[i] != p2[i]) {
                isCorrect = INCORRECT;
                break;
            }
        }
    }
    return isCorrect;
}


void check_received_packet (const uint8_t *p, uint8_t s) {

    uint8_t result;
    result = compare_packets (p, s,recoveryPacket, RECOVERY_PACKET_SIZE);
    if (result == CORRECT) {
        add_mode(MODE_REPROGRAM_DEVICE);
        return;
    }
    result = compare_packets (p, s, updateStartPacket, UPDATE_START_PACKET_SIZE);
    if (result == CORRECT && currMode != MODE_RECEIVE_UPDATE) {
        add_mode(MODE_RECEIVE_UPDATE);
        return;
    }

    result = compare_packets (p, s, packet1, PACKET_SIZE_1);
      if (result == CORRECT) {
      add_mode(MODE_BLINK_LED0);
      return;
      }

    /*result = compare_packets (p, s, packet2, PACKET_SIZE_2);
      if (result == CORRECT) {
      add_mode(MODE_BLINK_LED0);
      return;
      }

    result = compare_packets (p, s, packet3, PACKET_SIZE_3);
    if (result == CORRECT) {
        add_mode(MODE_BLINK_LED1);
        return;
    }*/

}


void radio_setup (void) {
    // Reset SPI
    SPI_RESET(radio->cc1101_spi);

    // Set SPI Options
    SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE(radio->cc1101_spi);
    SPI_CLK_INACTIVE_IS_LOW(radio->cc1101_spi);
    SPI_MSB_FIRST(radio->cc1101_spi);
    SPI_8BIT_CHAR(radio->cc1101_spi);
    SPI_MASTER_MODE(radio->cc1101_spi);
    SPI_3PIN_MODE(radio->cc1101_spi);
    SPI_SYNC_MODE(radio->cc1101_spi);
    SPI_SELECT_SMCLK(radio->cc1101_spi);
    SPI_SET_UCBRx(radio->cc1101_spi, 2);

    // Set Pins and ports
    spi.configure_pins_for_spi (radio->cc1101_spi);

    // Start SPI
    SPI_START(radio->cc1101_spi);
}

void radio_destruct(void) {
    CC1101_CSN_DRIVE_HIGH(radio);
    CC1101_GDO0_DRIVE_LOW(radio);
    CC1101_GDO2_DRIVE_LOW(radio);
    CC1101_CSN_CONFIG_AS_INPUT(radio);
    CC1101_GDO0_CONFIG_AS_INPUT(radio);
    CC1101_GDO2_CONFIG_AS_INPUT(radio);
    CC1101_CSN_SEL_GPIO(radio);
    CC1101_GDO0_SEL_GPIO(radio);
    CC1101_GDO2_SEL_GPIO(radio);

    spi.configure_pins_for_gpio(radio->cc1101_spi);
    SPI_RESET(radio->cc1101_spi);
}
void radio_sleep(void) {
    radio_setup();
    cc1101.init(radio);
    cc1101.idle(radio);
    cc1101.sleep(radio);
    radio_destruct();
}

void send_single_packet_over_radio (const uint8_t *p, const uint8_t s) {

    radio_setup();
    cc1101.init(radio);
    cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_1); // Needs to be the same in Tx and Rx
    cc1101.set_data_rate(radio, DATA_RATE_1); // Needs to be the same in Tx and Rx
    cc1101.set_tx_power(radio, SEND_POWER_1);
    cc1101.send_data(radio, p, s);
    cc1101.idle(radio);
    cc1101.sleep(radio);
    radio_destruct();

}

//Wait for packet (with timeout)
uint8_t receive_single_packet_over_radio(uint8_t *p, uint8_t *s_ptr) {
    uint8_t result;

    radio_setup();
    cc1101.init(radio);
    cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_1);
    cc1101.set_data_rate(radio, DATA_RATE_1);
    cc1101.rx_on(radio);
    radioHasTimedOut = NO;
    reset_radio_receive_timeout_timer();
    while((! cc1101.check_receive_flag(radio)) && radioHasTimedOut == NO);
    clear_A0_timer();
    if (radioHasTimedOut == NO) {
        *s_ptr = cc1101.receive_data(radio, p);
        result = PACKET_REC;
    } else {
        cc1101.rx_mode_off(radio);
        result = TIMEOUT;
    }
    cc1101.idle(radio);
    cc1101.sleep(radio);
    radio_destruct();   // Turn radio off

    return result;
}

/*****************************************************************************/
/* BSL - BOOTLOADER */
/*****************************************************************************/
void bsl_uart_setup_9600baud(void) {
    // Reset UART
    UART_RESET (bslStack->bsl_uart);

    // Set UART Options
    UART_PARITY_BIT_ENABLE(bslStack->bsl_uart);
    UART_EVEN_PARITY(bslStack->bsl_uart);
    UART_LSB_FIRST(bslStack->bsl_uart);
    UART_8BIT_CHAR(bslStack->bsl_uart);
    UART_1_STOP_BIT(bslStack->bsl_uart);
    UART_SET_UART_MODE(bslStack->bsl_uart);
    UART_ASYNC_MODE(bslStack->bsl_uart);
    UART_SELECT_SMCLK(bslStack->bsl_uart);
    UART_ERROR_CHAR_INT_DISABLE(bslStack->bsl_uart);
    UART_BREAK_CHAR_INT_DISABLE(bslStack->bsl_uart);
    UART_NOT_DORMANT(bslStack->bsl_uart);
    UART_NEXT_FRAME_IS_DATA(bslStack->bsl_uart);
    UART_NEXT_FRAME_IS_NOT_BREAK(bslStack->bsl_uart);

    UART_OVERSAMPLING_ENABLED(bslStack->bsl_uart);
    UART_SET_UCBRx(bslStack->bsl_uart, 78);
    UART_SET_UCBRFx(bslStack->bsl_uart, 2);
    UART_SET_UCBRSx(bslStack->bsl_uart, 0x00);

    // Set pins and ports
    uart.configure_pins (bslStack->bsl_uart);

    // Start Uart
    UART_START(bslStack->bsl_uart);
}

void bsl_uart_setup_115200baud(void) {

    // Reset UART
    UART_RESET (bslStack->bsl_uart);

    // Set UART Options
    UART_PARITY_BIT_ENABLE(bslStack->bsl_uart);
    UART_EVEN_PARITY(bslStack->bsl_uart);
    UART_LSB_FIRST(bslStack->bsl_uart);
    UART_8BIT_CHAR(bslStack->bsl_uart);
    UART_1_STOP_BIT(bslStack->bsl_uart);
    UART_SET_UART_MODE(bslStack->bsl_uart);
    UART_ASYNC_MODE(bslStack->bsl_uart);
    UART_SELECT_SMCLK(bslStack->bsl_uart);
    UART_ERROR_CHAR_INT_DISABLE(bslStack->bsl_uart);
    UART_BREAK_CHAR_INT_DISABLE(bslStack->bsl_uart);
    UART_NOT_DORMANT(bslStack->bsl_uart);
    UART_NEXT_FRAME_IS_DATA(bslStack->bsl_uart);
    UART_NEXT_FRAME_IS_NOT_BREAK(bslStack->bsl_uart);

    UART_OVERSAMPLING_ENABLED(bslStack->bsl_uart);
    UART_SET_UCBRx(bslStack->bsl_uart, 6);
    UART_SET_UCBRFx(bslStack->bsl_uart, 8);
    UART_SET_UCBRSx(bslStack->bsl_uart, 0x20);

    // Set pins and ports
    uart.configure_pins (bslStack->bsl_uart);

    // Start Uart
    UART_START(bslStack->bsl_uart);
}

void bsl_setup (void) {
    // we have to start in slow mode (9600 baud)
    bsl_uart_setup_9600baud();

    // Enable Uart interrupt
    UART_RX_INT_ENABLE(bslStack->bsl_uart);
}


void reset_target_device (void) {
    UART_TXD_SEL_GPIO(bslStack->bsl_uart);
    UART_RXD_SEL_GPIO(bslStack->bsl_uart);
    UART_TXD_DRIVE_LOW(bslStack->bsl_uart);
    UART_RXD_DRIVE_LOW(bslStack->bsl_uart);
    UART_TXD_CONFIG_AS_INPUT(bslStack->bsl_uart);
    UART_RXD_CONFIG_AS_INPUT(bslStack->bsl_uart);

    BSL_TEST_CONFIG_AS_INPUT(bslStack);
    BSL_TEST_DRIVE_LOW(bslStack);

    BSL_RST_CONFIG_AS_OUTPUT(bslStack);
    BSL_RST_DRIVE_HIGH(bslStack);
    __delay_cycles(100);
    BSL_RST_DRIVE_LOW(bslStack);
    __delay_cycles(100);
    BSL_RST_DRIVE_HIGH(bslStack);
    BSL_RST_CONFIG_AS_INPUT(bslStack);
}

// Parse through a program stored in FRAM, and prepare it for Reprogramming
// result: prog is populated.
void get_program (prog_parser_t *prog, uint8_t prog_num, uint8_t origOrRec) {
    uint8_t i;
    uint32_t addr;

    // Set header to address to get the info
    if (origOrRec == RECEIVED_PROGRAMS) {
        prog->header = (prog_header_t *) &update_prog_addr[0];
    } else {
        prog->header = (prog_header_t *) &orig_prog_addr[0];
    }

    // Jump from header to header till at the right one
    for (i = 0; i < prog_num; i++) {
        addr = (uint32_t) (prog->header);
        addr += sizeof (prog_header_t);
        addr += prog->header->numCommands * sizeof (uint16_t);
        addr += prog->header->size;
        prog->header = (prog_header_t *) addr;
    }

    // Set the pointers to the commandSizes and commandBin (hacky address fun fun)
    prog->commandSizes = (uint16_t *) (&(prog->header[1]));
    prog->commandBin = (uint8_t *) (&(prog->commandSizes[prog->header->numCommands]));
}


// Reprogram the device using the commands stored in allCommands (included from goldenImage.dat)
void reprogram_device (uint8_t orig_or_update, uint8_t prog_number) {
    uint8_t result;
    uint32_t byteIdx = 0;
    uint32_t i;
    uint8_t *ptr;
    uint16_t *size_ptr;
    uint16_t size;
    prog_parser_t prog;

    // Set the program that will be programmed
    get_program(&prog, prog_number, orig_or_update);

    // Have BSL Ready to be initiated
    bsl_setup();

    // Start BSL
    bsl.initialize_password(bslStack);
    do {
        result = bsl.init_sequence(bslStack);
    } while (result == TIMEOUT);

    // Erase the device
    result = bsl.send_mass_erase(bslStack);

    // After sending a erase command the RX line is low till the target is
    // ready to receive more commands
    // Wait until ready
    UART_RXD_SEL_GPIO(bslStack->bsl_uart);
    UART_RXD_CONFIG_AS_INPUT(bslStack->bsl_uart);
    while (UART_RXD_IS_HIGH(bslStack->bsl_uart));
    while (UART_RXD_IS_LOW(bslStack->bsl_uart));
    UART_RXD_SEL_UART(bslStack->bsl_uart);

    // Tell target to change baud rate to 115200
    const uint8_t BSL_BAUD_RATE_TO_115200[] = {0x80, 0x02, 0x00, 0x52, 0x06, 0x14, 0x15};
    bsl.send_command(bslStack, &BSL_BAUD_RATE_TO_115200[0], 7);
    result = bsl.check_correct_responce(bslStack, BSL_ACK, BSL_ACK_SIZE);

    // Change SA baud to 115200
    bsl_uart_setup_115200baud();
    // Re-enable Uart interrupt
    UART_RX_INT_ENABLE(bslStack->bsl_uart);

    // Send Password Once to Unlock Device (seems you don't need to do it before every command)
    result = bsl.send_password(bslStack);

    // Send each command
    for (i = 0; i < prog.header->numCommands; i++) {
#if LEDS_ENABLED == YES
        LED0_TOGGLE();
#endif
        // The msp430 compiler has serious issues reading packed structs correctly so this
        // ensures that it reads the correct data from the memory
        ptr = &(prog.commandBin[byteIdx]);
        size_ptr = &(prog.commandSizes[i]);
        size = (((uint16_t)((uint8_t *)size_ptr)[1]) << 8) | ((uint16_t) ((uint8_t *)size_ptr)[0]);
        if (bsl.is_valid_command(bslStack, ptr, size) == VALID){
            do {
                bsl.send_command(bslStack, ptr, size);
                result = bsl.check_correct_responce (bslStack, BSL_ACK, BSL_ACK_SIZE);
                __delay_cycles(50000); // This fixes a rather odd bug. If its not here the rxBuffer overflows quickly and the program halts at that time
            } while (result != SUCCESS);
        }
        byteIdx += size;
    }

    reset_target_device();

}


/*****************************************************************************/
/* SPI_SNOOPING */
/*****************************************************************************/
void spi_snoop_periphrial_setup (spi_stack_t *s, uint8_t periphrial) {
    // setup the spi stack
    spi.setup (s, periphrial, SLAVE_MODE);

    // Reset SPI
    SPI_RESET(s);

    // Set SPI Options
    SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE(s);
    SPI_CLK_INACTIVE_IS_LOW(s);
    SPI_MSB_FIRST(s);
    SPI_8BIT_CHAR(s);
    SPI_SLAVE_MODE(s);
    SPI_3PIN_MODE(s);
    SPI_SYNC_MODE(s);
    SPI_SELECT_SMCLK(s);
    SPI_SET_UCBRx(s, 2);

    // Configure the pins for SPI snoop
    spi.configure_pins_for_spi(s);
    SPI_SO_CONFIG_AS_INPUT(s);
    SPI_SO_SEL_GPIO(s);

    // Start SPI
    SPI_START(s);

    // Reset the receive buffer
    spi.reset_rx_buffer(s);
}


void spi_snoop_setup (void) {
    // Ensure stack pointers are pointing to the right thing
    spiSnoopTx = &__spiSnoopTx__;
    spiSnoopRx = &__spiSnoopRx__;

    // Setup the spi for tx and rx
    spi_snoop_periphrial_setup (spiSnoopTx, SNOOP_TX_UC_ID__);
    spi_snoop_periphrial_setup (spiSnoopRx, SNOOP_RX_UC_ID__);

    // Set Receive Interrupt
    SPI_RECEIVE_INTERRUPT_ENABLE(spiSnoopRx); // rx only as tx and rx are at same time
}


void spi_snoop_destruct (void) {
    // Clear Receive Interrupt
    SPI_RECEIVE_INTERRUPT_DISABLE(spiSnoopRx); // rx only as tx and rx are at same time

    spi.configure_pins_for_gpio(spiSnoopTx);
    spi.configure_pins_for_gpio(spiSnoopRx);
}

uint8_t wait_for_spi_bytes(void) {
    // TODO: add timer
    spiHasTimedOut = NO;
    //reset_wait_for_spi_bytes_timer();
    while ( (spi.rx_buffer_is_empty(spiSnoopTx) ||
                spi.rx_buffer_is_empty(spiSnoopRx)) && spiHasTimedOut == NO);
    //clear_A0_timer();
    if (spiHasTimedOut == YES) {
        return TIMEOUT;
    } else {
        return BYTE_RECEIVED;
    }
}


void get_spi_bytes(uint8_t *txByte, uint8_t *rxByte) {
    *txByte = spi.read_byte_from_rx_buffer (spiSnoopTx);
    *rxByte = spi.read_byte_from_rx_buffer (spiSnoopRx);
}


uint8_t snoop_tx_packet(void) {
    uint16_t i;
    uint8_t txByte, rxByte;
    uint8_t txSendSize;
    uint8_t txSendData[64];

    // Get Size of outgoing packet
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    txSendSize = txByte;

    // next byte must be CC1101_TXFIFO | WRITE_BURST to be valid
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if (txByte != (CC1101_TXFIFO | WRITE_BURST))    return PARSE_ERROR;

    // Get the packet being sent
    for (i = 0; i < txSendSize; i++) {
        if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
        get_spi_bytes(&txByte, &rxByte);
        txSendData[i] = txByte;
    }

    // next byte must be CC1101_STX
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes(&txByte, &rxByte);
    if (txByte != CC1101_STX)   return PARSE_ERROR;

    // next byte must be CC1101_SFTX
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes(&txByte, &rxByte);
    if (txByte != CC1101_SFTX)  return PARSE_ERROR;

    // Check if packet is a special packet that we need to do something with
    if (compare_packets(txSendData, txSendSize, packet1, PACKET_SIZE_1) == CORRECT) {
        add_mode(MODE_BLINK_LED0);
    }

    /*if (compare_packets(txSendData, txSendSize, packet3, PACKET_SIZE_3) == CORRECT) {
      add_mode(MODE_REPROGRAM_DEVICE);
      }*/

    return PACKET_SENT;
}


uint8_t snoop_rx_packet(void) {
    uint16_t i;
    uint8_t txByte, rxByte;
    uint8_t rxRecSize;
    uint8_t rxRecData[64];
    uint8_t status[2];

    // Check that there are bytes in the buffer
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if ((rxByte & BYTES_IN_RXFIFO) == 0)    return PARSE_ERROR;

    // Get size of packet
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if (txByte != (CC1101_RXFIFO | READ_SINGLE))    return PARSE_ERROR;
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    rxRecSize = rxByte;

    // Read Packet
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if (txByte != (CC1101_RXFIFO | READ_BURST)) return PARSE_ERROR;
    for (i = 0; i < rxRecSize; i++) {
        if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
        get_spi_bytes (&txByte, &rxByte);
        rxRecData[i] = rxByte;
    }

    // Read status bytes
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if (txByte != (CC1101_RXFIFO | READ_BURST)) return PARSE_ERROR;
    for (i = 0; i < 2; i++) {
        if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
        get_spi_bytes (&txByte, &rxByte);
        status[i] = rxByte;
    }
    // TODO: Parse status bytes to make sure they are right


    // Make sure that radio is turned on again
    if (wait_for_spi_bytes() == TIMEOUT)    return TIMEOUT;
    get_spi_bytes (&txByte, &rxByte);
    if (txByte != CC1101_SFRX) return PARSE_ERROR;

    // Check if packet is a special packet that we need to do something with
    check_received_packet(rxRecData, rxRecSize);

    return PACKET_REC;
}


/*
 * Assumptions:
 * 1. a byte was just received from spiSnoopTx (which also means spiSnoopRx)
 * 2. spiSnoopSetup has been called before this
 */
void spi_snoop_radio (void) {
    uint8_t txByte, rxByte;
    uint8_t result;
    do {
        // Byte has already been received (which is why this function was called)
        get_spi_bytes (&txByte, &rxByte);

        // TODO: possible other things that could be snooped for statistics
        // Resets
        // Register Configuration Settigns
        // PATABLE writes
        // RX modes (reset, rx_mode_on, rx_mode_off, sleep)
        // set logical channel
        // data_rate
        // tx_power

        // Snooping Outgoing Packets
        if (txByte == CC1101_TXFIFO) {
            result = snoop_tx_packet();

        } else if (txByte == (CC1101_RXBYTES | READ_BURST)) {
            result = snoop_rx_packet();
        }

    } while ( ! spi.rx_buffer_is_empty(spiSnoopTx));
}


/*****************************************************************************/
/* Radio Takeover Functions */
/*****************************************************************************/
// Handshake with target
// RETURNS: returns if the handshake failed or not
uint8_t target_handshake (void) {
#if HANDSHAKE_ENABLED == YES
    handshakeTimerHasExpired = NO;

    // drive TXD high via pullup
    UART_TXD_DRIVE_HIGH(bslStack->bsl_uart);
    UART_TXD_PULL_EN(bslStack->bsl_uart);
    UART_RXD_PULL_EN(bslStack->bsl_uart);

    // start timer
    reset_handshake_timer(); // repurpose radio timer
    // Wait for either timer to go off or line to be driven down
    while (UART_TXD_IS_HIGH(bslStack->bsl_uart) && (handshakeTimerHasExpired == NO));

    UART_TXD_DRIVE_LOW(bslStack->bsl_uart);

    if (handshakeTimerHasExpired == YES) {
        return HANDSHAKE_FAILURE;
    } else {
        return HANDSHAKE_SUCCESS;
    }
#endif
#if HANDSHAKE_ENABLED == NO
    return HANDSHAKE_SUCCESS;
#endif
}


// Takeover (and return) the control of the radio
// Performs an action (send or rec)
void radio_takeover(void) {
    uint8_t rxData[70];
    uint8_t rxSize;
    uint8_t result;
    result = target_handshake();
    if (result == HANDSHAKE_SUCCESS) {
        // Turn off spi snooping while SA has control (no need for it)
        spi_snoop_destruct();
        UART_RXD_DRIVE_HIGH(bslStack->bsl_uart);
        UART_RXD_CONFIG_AS_OUTPUT(bslStack->bsl_uart);
        __delay_cycles(720000);
        send_single_packet_over_radio(packet2, PACKET_SIZE_2);
        result = receive_single_packet_over_radio(rxData, &rxSize);
#if RECEIVE_UPDATE_ENABLED == YES
        if (result == PACKET_REC) {
            check_received_packet(rxData, rxSize);
        }
#endif
        UART_RXD_CONFIG_AS_INPUT(bslStack->bsl_uart);
        UART_RXD_DRIVE_LOW(bslStack->bsl_uart);
        //add_mode(MODE_BLINK_LED1);
        add_mode(MODE_START_SPI_SNOOPING);
    } else {
        add_mode(MODE_REPROGRAM_DEVICE);
    }
}


/*****************************************************************************/
/* RECEIVE UPDATE */
/* The update start packet has been received */
/*****************************************************************************/
uint8_t check_if_valid_packet (uint8_t *packet, uint8_t size, uint16_t identifier) {
    update_data_packet_t *data_ptr = (update_data_packet_t *) packet;
    update_stats_t *stats_ptr = (update_stats_t *) packet;
    if (
            (identifier == UPDATE_STATS_IDENTIFIER) &&
            (stats_ptr->identifier == identifier) &&
            (size == sizeof(update_stats_t)) &&
            (calcCrc(packet, size - 2) == stats_ptr->crc)) {
        return CORRECT;
    } else if (
            (identifier == UPDATE_DATA_IDENTIFIER) &&
            (data_ptr->identifier == identifier) &&
            (size == sizeof(update_data_packet_t)) &&
            (calcCrc(packet, size - 2) == data_ptr->crc)) {
        return CORRECT;
    }

    return INCORRECT;
}


void copyPacketsIntoMemory (update_data_packet_t *recPackets, uint16_t *lastRecPacketNums, uint8_t num) {
    uint16_t i, j;
    uint8_t chan;
    uint32_t dataIdx;
    uint8_t *progStartAddr = (uint8_t *) &update_prog_addr[0];

    for (i = 0; i < num; i++) {
        chan = recPackets[i].channel;

        // If we haven't already received this packet
        if (lastRecPacketNums[chan] != recPackets[i].num) {
            lastRecPacketNums[chan] = recPackets[i].num;
            dataIdx = recPackets[i].num * DATA_PER_PACKET;
            for (j = 0; j < DATA_PER_PACKET; j++, dataIdx++) {
                progStartAddr[dataIdx] = recPackets[i].data[j];
            }
            totalUpdateDataPacketsReceived++;
        }
    }
}


void send_packet_and_rec_valid_packet (
        const uint8_t *p, const uint8_t s,
        uint8_t *buff, uint16_t identifier) {
    uint8_t result;
    uint8_t rxSize;
    do {
        __delay_cycles(48000);
        // Send Confirmation that SA is ready to receive update
        send_single_packet_over_radio(p, s);

        // Receive packet and check to see if it is valid
        result = receive_single_packet_over_radio(buff, &rxSize);
        if (result == PACKET_REC) {
            result = check_if_valid_packet(buff, rxSize, identifier);
        }
    } while (result != CORRECT);
}


void send_update_data_ack(update_data_packet_t *recPackets, uint16_t *lastRecPacketNums) {
    uint8_t i;
    update_data_ack_t ack;

    ack.identifier = UPDATE_DATA_ACK_IDENTIFIER;
    for (i = 0; i < NUM_CHANNELS; i++) {
        ack.packetNums[i] = lastRecPacketNums[i];
    }
    ack.crc = calcCrc ((uint8_t *)&ack, sizeof (update_data_ack_t) - 2);

    send_single_packet_over_radio ((uint8_t *)&ack, sizeof(update_data_ack_t));
}

void receive_update(void) {
    uint8_t rxData[70];
    uint8_t rxSize;
    uint8_t result;
    uint8_t i;
    update_stats_t *temp_stats_ptr;
    update_stats_t uStats;
    update_data_packet_t recPackets[NUM_CHANNELS];
    uint8_t numPacketsRec;
    uint16_t lastRecPacketNums[NUM_CHANNELS];

    // Set LastRecPacketNums to a state tomake the first
    // acks make sense to the sender
    lastRecPacketNums[0] = 0xFFFF;
    for (i = 1; i < NUM_CHANNELS; i++) {
        lastRecPacketNums[i] = 0x0000;
    }

    // Take over the radio
    result = target_handshake();

    // TODO:
    // If you can't the device needs to be reprogrammed
    // to a blink program before getting the update
    if (result == HANDSHAKE_FAILURE) {
        reprogram_device(ORIGINAL_PROGRAMS, 0);
    }

    // Turn off spi snooping while SA has control (no need for it)
    spi_snoop_destruct();

    // Make the Target wait while we are receiving the update
    UART_RXD_DRIVE_HIGH(bslStack->bsl_uart);
    UART_RXD_CONFIG_AS_OUTPUT(bslStack->bsl_uart);

    // Send the update confirm packet
    // + rec packet
    // + check rec packet is valid update stats
    send_packet_and_rec_valid_packet (
            updateConfirmPacket, UPDATE_CONFIRM_PACKET_SIZE,
            rxData, UPDATE_STATS_IDENTIFIER);

    // Copy the data into a permanent struct
    temp_stats_ptr = (update_stats_t *) rxData;
    uStats.identifier = temp_stats_ptr->identifier;
    uStats.numPackets = temp_stats_ptr->numPackets;
    uStats.lastPacketSize = temp_stats_ptr->lastPacketSize;
    uStats.crc = temp_stats_ptr->crc;

    // Send the stats packet back
    // + rec packet
    // + check rec packet is valid update data
    send_packet_and_rec_valid_packet (
            (uint8_t *)&uStats, sizeof (update_stats_t),
            (uint8_t *)&recPackets[0], UPDATE_DATA_IDENTIFIER);

    // Copy the data received into its permanent location
    copyPacketsIntoMemory(recPackets, lastRecPacketNums, 1);
    totalUpdateDataPacketsReceived = 1;

    // Send ACK for this first piece of data
    send_update_data_ack(recPackets, lastRecPacketNums);

    // Start receiving the bulk of the data
    while (totalUpdateDataPacketsReceived < uStats.numPackets) {
        radio_setup();
        cc1101.init(radio);
        cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_1);
        cc1101.set_data_rate(radio, DATA_RATE_1);
        cc1101.rx_on(radio);

        radioHasTimedOut = NO;
        reset_update_receive_timer();
        numPacketsRec = 0;
        while (numPacketsRec < NUM_CHANNELS && radioHasTimedOut == NO){
            while((! cc1101.check_receive_flag(radio)) && radioHasTimedOut == NO);
            if (radioHasTimedOut == NO) {
                rxSize = cc1101.receive_data(radio, (uint8_t *) &recPackets[numPacketsRec]);
                result = check_if_valid_packet((uint8_t *) &recPackets[numPacketsRec], rxSize, UPDATE_DATA_IDENTIFIER);
                if (result == CORRECT) {
                    numPacketsRec++;
                }
            }
        }
        cc1101.rx_mode_off(radio);
        cc1101.idle(radio);
        cc1101.sleep(radio);

        clear_A0_timer();
        copyPacketsIntoMemory(recPackets, lastRecPacketNums, numPacketsRec);
        send_update_data_ack(recPackets, lastRecPacketNums);
    }

    UART_RXD_CONFIG_AS_INPUT(bslStack->bsl_uart);
    UART_RXD_DRIVE_LOW(bslStack->bsl_uart);
    reprogram_device(RECEIVED_PROGRAMS, 0);
}

/*****************************************************************************/
/* CURRENT READING */
/*****************************************************************************/
// Config the ADC for sampling the current sensor
void take_current_reading(void) {
    uint16_t reading;
    uint16_t i;
    // Sel the adc on the pin
    CURR_SENSE_SET_TO_ADC();

    // Config the ADC
    ADC_TURN_ON();
    ADC_LH_SAMPLE_TIME_SET_TO_128();
    ADC_SAMPCON_SOURCE_IS_SAMPLING_TIMER();
    ADC_RES_SET_TO_12_BITS();
    ADC_DATA_IS_UNSIGNED();
    ADC12MCTL0 = ADC12VRSEL_0;
    MCTL0_SEL_CURR_SENSE_ADC();

    // Get 5 values to smooth the result out
    reading = 0;
    __delay_cycles(48000);
    for ( i = 0; i < 1; i++) {
        __delay_cycles(48000);
        ADC_PERFORM_CONVERSION();
        while (ADC_IS_BUSY());
        reading += ADC_READ_VALUES();
    }

    // Turn off the ADC
    ADC_TURN_OFF();

    // Put pin back to gpio
    CURR_SENSE_SET_TO_GPIO();

    if (reading <= SLEEP_CURRENT_THRESHOLD_VALUE) {
        adc_current_high_count = 0;
        LED1_DRIVE_LOW();
        LED1_SET_AS_INPUT();
    } else {
        adc_current_high_count++;
        if (adc_current_high_count >= ADC_HIGH_COUNT) {
            //LED1_DRIVE_HIGH();
            //LED1_SET_AS_OUTPUT();
            add_mode(MODE_REPROGRAM_DEVICE);
        }
        LED1_DRIVE_HIGH();
        //LED1_SET_AS_OUTPUT();
    }
}


/*************/
void reset_system (void) {
    _DINT();
    TURN_OFF_TARGET();
    TURN_OFF_RADIO();

    // Reset Mode PQ
    resetModePq();

    // Init LPM state
    init_lpm_state();

    spi_snoop_destruct();
    clear_A0_timer();
    // TODO: clear_A1_timer();

    // Setup the object stacks
    bslStack = &__bslStack__;
    bsl.setup (bslStack, BSL_UC_ID__,
            BSL_RST_BIT__,  &BSL_RST_DIR__,  &BSL_RST_OUT__,
            (volatile uint8_t *) &BSL_RST_IN__,  &BSL_RST_REN__,
            &BSL_RST_SEL0__,  &BSL_RST_SEL1__,
            BSL_TEST_BIT__,  &BSL_TEST_DIR__,  &BSL_TEST_OUT__,
            (volatile uint8_t *) &BSL_TEST_IN__,  &BSL_TEST_REN__,
            &BSL_TEST_SEL0__,  &BSL_TEST_SEL1__
            );

    radio = &__radio__;
    cc1101.setup(radio, RADIO_UC_ID__,
            RADIO_CSN_BIT__,  &RADIO_CSN_DIR__,  &RADIO_CSN_OUT__,
            (volatile uint8_t *) &RADIO_CSN_IN__,  &RADIO_CSN_REN__,
            &RADIO_CSN_SEL0__,  &RADIO_CSN_SEL1__,
            RADIO_GDO0_BIT__, &RADIO_GDO0_DIR__, &RADIO_GDO0_OUT__,
            (volatile uint8_t *) &RADIO_GDO0_IN__, &RADIO_GDO0_REN__,
            &RADIO_GDO0_SEL0__, &RADIO_GDO0_SEL1__,
            RADIO_GDO2_BIT__,  &RADIO_GDO2_DIR__, &RADIO_GDO2_OUT__,
            (volatile uint8_t *) &RADIO_GDO2_IN__, &RADIO_GDO2_REN__,
            &RADIO_GDO2_SEL0__, &RADIO_GDO2_SEL1__
            );

    // Pull up the target RST line
    BSL_RST_DRIVE_HIGH(bslStack);

    // Put the radio into sleep mode
    TURN_ON_RADIO();
    __delay_cycles(2400000); //0.1 s
    radio_sleep();

    // Turn on global interupts
    //__bis_SR_register( GIE );

    //START TIMERS
    reset_radio_takeover_timer();
    reset_current_timer();

    adc_current_high_count = 0;

    // Start Snooping the radio
    add_mode(MODE_START_SPI_SNOOPING);

    // Turn on the LEDs if needed
#if LEDS_ENABLED == YES
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();
#endif

    TURN_ON_TARGET();
    __delay_cycles(1000000); // Not sure why needed. Seems to fix an issue with SPI snooping
    _EINT();
}


/*****************************************************************************/
/* MAIN */
/*****************************************************************************/
int main (void) {

    //Stop watchdog timer
    WDTCTL = WDTPW + WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    // Config Clock
    config_clock();

    reset_system();

    add_mode(MODE_REPROGRAM_DEVICE);
    while (1) {
        set_mode();
        switch (currMode){
#if SPI_SNOOPING_ENABLED == YES
            case MODE_START_SPI_SNOOPING :
                spi_snoop_setup();
                break;

            case MODE_SNOOP_RADIO_DATA :
                spi_snoop_radio();
                break;
#endif

            // TODO: Make a way for this to happen or remove
            case MODE_STOP_SPI_SNOOPING :
                spi_snoop_destruct();
                break;

            case MODE_REPROGRAM_DEVICE :
#if REPROGRAMMING_ENABLED == YES
                reprogram_device(ORIGINAL_PROGRAMS, 0);
                reset_system();
                LED0_SET_AS_OUTPUT();
                LED1_SET_AS_OUTPUT();

                LED0_DRIVE_LOW();
                LED1_DRIVE_LOW();

#endif
                break;

            case MODE_RADIO_TAKEOVER :
#if RADIO_TAKEOVER_ENABLED == YES
                radio_takeover();
                reset_radio_takeover_timer();
                //add_mode(MODE_REPROGRAM_DEVICE);
#endif
                break;

            case MODE_RECEIVE_UPDATE :
#if RECEIVE_UPDATE_ENABLED == YES
                clear_A0_timer();
                receive_update();
                reset_radio_takeover_timer();
#endif
                break;

            case MODE_READ_CURRENT :
#if POWER_MONITORING_ENABLED == YES
                take_current_reading();
                reset_current_timer();
#endif
                break;
#if LEDS_ENABLED == YES
            case MODE_BLINK_LED0 :
                LED0_TOGGLE();
                break;

            case MODE_BLINK_LED1 :
                LED1_TOGGLE();
                break;
#endif
            case MODE_SLEEP :
                enter_sleep();
        }
    }
}

/*****************************************************************************/
/* INTERRUPTS */
/*****************************************************************************/
void __attribute__ ((interrupt (__USCI_BSL_VECTOR__))) BSL_ISR (void);
void BSL_ISR (void) {
    uart.isr(bslStack->bsl_uart);
}

void __attribute__ ((interrupt (__USCI_SPI_SNOOP_RX_VECTOR__))) SPI_SNOOP_ISR (void);
void SPI_SNOOP_ISR (void) {
    spi.slave_isr(spiSnoopTx);
    spi.slave_isr(spiSnoopRx);
    add_mode(MODE_SNOOP_RADIO_DATA);
    LPM3_EXIT;
}

// Timer A0 interrupt service routine
void __attribute__ ((interrupt(TIMER0_A0_VECTOR))) Timer_A_ISR (void) {
    TA0CTL = 0;
    TA0CTL &= ~TAIFG;
    LPM3_EXIT;
    if (timerA0SetBy == RADIO_TAKEOVER_TIMER) {
        add_mode(MODE_RADIO_TAKEOVER);
    } else if (timerA0SetBy == HANDSHAKE_TIMER) {
        handshakeTimerHasExpired = YES;
    } else if (timerA0SetBy == RADIO_RECEIVE_TIMEOUT) {
        radioHasTimedOut = YES;
    } else if (timerA0SetBy == UPDATE_RECEIVE_TIMEOUT) {
        radioHasTimedOut = YES;
    } else if (timerA0SetBy == WAIT_FOR_SPI_BYTES_TIMER) {
        spiHasTimedOut = YES;
    }
}

// Timer ISR for current reading
void __attribute__ ((interrupt(TIMER1_A0_VECTOR))) Timer1_A0_ISR (void) {
    TA1CTL = 0;
    TA1CTL &= ~TAIFG;
    add_mode(MODE_READ_CURRENT);
    LPM3_EXIT;
}
