#include "pins.h"
#include "lib_spi.h"
#include "lib_cc1101.h"
#include "lib_clock.h"
#include "lib_led.h"
#include "lib_general_definitions.h"
#include "radio_tests_info.h"

cc1101_stack_t __radio__;
cc1101_stack_t *radio;

void config_clock(void) {
    FRCTL0 = FRCTLPW | NWAITS_2; // FRAM can only be written at 8MHz, puts 2 no-op waits
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_24MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_MCLK_DIV_BY_1();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_SMCLK_DIV_BY_2();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_ACLK_DIV_BY_1();
}


uint8_t radioHasTimedOut = NO;
void clear_timers(void) {
    TA0CCTL0 = 0;
}
void reset_radio_receive_timeout_timer(void) {
    TA0CCTL0 = CCIE;                          // TACCR0 interrupt enabled
    TA0CCR0 = 5000;	
    TA0CTL = TASSEL_1 + MC_1;                 // ACLK, upmode
}


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


void radio_setup (void) {
    // setup the cc1101 stack
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
    CC1101_CSN_CONFIG_AS_INPUT(radio);
    CC1101_GDO0_CONFIG_AS_INPUT(radio);
    CC1101_GDO2_CONFIG_AS_INPUT(radio);
    CC1101_CSN_SEL_GPIO(radio);
    CC1101_GDO0_SEL_GPIO(radio);
    CC1101_GDO2_SEL_GPIO(radio);

    spi.configure_pins_for_gpio(radio->cc1101_spi);
    SPI_RESET(radio->cc1101_spi);
}

void send_single_packet_over_radio (const uint8_t *p, const uint8_t s) {
    //TODO: Make turning on the radio cleaner
    //TODO: RADIOENABLE_CONFIG_AS_OUTPUT();
    //TODO: RADIOENABLE_DRIVE_HIGH();

    radio_setup(); 
    cc1101.init(radio);	
    cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_1); // Needs to be the same in Tx and Rx
    cc1101.set_data_rate(radio, DATA_RATE_1); // Needs to be the same in Tx and Rx
    cc1101.set_tx_power(radio, SEND_POWER_1);
    cc1101.send_data(radio, p, s);
    cc1101.sleep(radio);
    radio_destruct();

    //TODO: RADIOENABLE_DRIVE_LOW();
    //TODO: RADIOENABLE_CONFIG_AS_INPUT();
}

uint8_t receive_single_packet_over_radio(uint8_t *p, uint8_t *s_ptr) {

    radio_setup(); 
    cc1101.init(radio);	
    cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_1);
    cc1101.set_data_rate(radio, DATA_RATE_1);
    cc1101.rx_on(radio);
    radioHasTimedOut = NO;
    reset_radio_receive_timeout_timer();
    while((! cc1101.check_receive_flag(radio)) && radioHasTimedOut == NO);
    clear_timers();
    if (radioHasTimedOut == NO) {
        *s_ptr = cc1101.receive_data(radio, p);
        return PACKET_REC;
    } else {
        return TIMEOUT;
    }
    cc1101.sleep(radio);
    radio_destruct();
}


int main(void){

    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    //config_leds
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();

    //config_clock
    config_clock();

    uint8_t rxData[70];
    uint8_t rxSize, result;
    uint8_t count = 0;
    while(1) {
        if (count < 24) {
            send_single_packet_over_radio(packet1, PACKET_SIZE_1);
            count++;
        } else {
            count = 0;
            send_single_packet_over_radio(packet2, PACKET_SIZE_2);
            receive_single_packet_over_radio(rxData, &rxSize);
            result = compare_packets(rxData, rxSize, packet3, PACKET_SIZE_3);
            if (result == CORRECT) {
                LED1_TOGGLE();
            }
        }
        LED0_TOGGLE();
        __delay_cycles(1000000);
    }
}

void __attribute__ ((interrupt(TIMER0_A0_VECTOR))) Timer_A_ISR (void) {	
    TA0CTL = 0;
    TA0CTL &= ~TAIFG;
    LPM3_EXIT;
    radioHasTimedOut = YES;
}



