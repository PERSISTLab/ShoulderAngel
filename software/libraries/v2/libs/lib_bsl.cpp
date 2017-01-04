#include "pins.h"
#include "lib_bsl.h"
#include "lib_general_definitions.h"

// rx data block needs to be constructed based off the needed data
// rx password needs to be constructed during runtime
// crc check needes to be constructed based off the needed data
// load_pc needs to be constructed based off the needed data
// tx_data_block needs to be constructed based off needed data
const uint8_t BSL_TX_BSL_VERSION[] = {0x80, 0x01, 0x00, 0x19, 0xe8, 0x62};
// rx_data_block_fast needs to be constructed based off needed data
const uint8_t BSL_BAUD_RATE_TO_9600[] = {0x80, 0x02, 0x00, 0x52, 0x02, 0x90, 0x55};
const uint8_t BSL_BAUD_RATE_TO_19200[] = {0x80, 0x02, 0x00, 0x52, 0x03, 0xb1, 0x45};
const uint8_t BSL_BAUD_RATE_TO_38400[] = {0x80, 0x02, 0x00, 0x52, 0x04, 0x56, 0x35};
const uint8_t BSL_BAUD_RATE_TO_57600[] = {0x80, 0x02, 0x00, 0x52, 0x05, 0x77, 0x25};
const uint8_t BSL_BAUD_RATE_TO_115200[] = {0x80, 0x02, 0x00, 0x52, 0x06, 0x14, 0x15};

void MSP430_BSL::setup (
        bsl_stack_t *b,
        uint8_t periphrial,
        uint8_t rst_pin,
        volatile uint8_t *rst_dir,
        volatile uint8_t *rst_out,
        volatile uint8_t *rst_in,
        volatile uint8_t *rst_ren,
        volatile uint8_t *rst_sel0,
        volatile uint8_t *rst_sel1,
        volatile uint8_t test_pin,
        volatile uint8_t *test_dir,
        volatile uint8_t *test_out,
        volatile uint8_t *test_in,
        volatile uint8_t *test_ren,
        volatile uint8_t *test_sel0,
        volatile uint8_t *test_sel1
        ){

    b->bsl_uart = & (b->__bsl_uart__);
    uart.setup (b->bsl_uart, periphrial);

    b->rst_pin = rst_pin;
    b->rst_dir = rst_dir;
    b->rst_out = rst_out;
    b->rst_in = rst_in;
    b->rst_ren = rst_ren;
    b->rst_sel0 = rst_sel0;
    b->rst_sel1 = rst_sel1;
    b->test_pin = test_pin;
    b->test_dir = test_dir;
    b->test_out = test_out;
    b->test_in = test_in;
    b->test_ren = test_ren;
    b->test_sel0 = test_sel0;
    b->test_sel1 = test_sel1;
}


// initiate BSL
uint8_t MSP430_BSL::init_sequence (bsl_stack_t *b) {

    uint32_t i = 0;

    // Change RXD to GPIO to monitor it
    UART_RXD_SEL_GPIO(b->bsl_uart);
    UART_RXD_CONFIG_AS_INPUT(b->bsl_uart);

    // Set pins up for init sequence 
    BSL_RST_DRIVE_LOW(b);
    BSL_TEST_DRIVE_LOW(b);
    BSL_RST_SEL_GPIO(b);
    BSL_TEST_SEL_GPIO(b);
    BSL_RST_CONFIG_AS_OUTPUT(b);
    BSL_TEST_CONFIG_AS_OUTPUT(b);
   /* 
    __delay_cycles (1500); // 280
    BSL_TEST_DRIVE_HIGH(b);
    __delay_cycles (1500); // 80
    BSL_TEST_DRIVE_LOW(b);
    __delay_cycles (1500); // 80
    BSL_TEST_DRIVE_HIGH(b);
    __delay_cycles (1500); // 80
    BSL_RST_DRIVE_HIGH(b);
    __delay_cycles (1500); // 80
    BSL_TEST_DRIVE_LOW(b);
    __delay_cycles (1500); // 80
    */

    __delay_cycles (2000); // 280
    BSL_TEST_DRIVE_HIGH(b);
    __delay_cycles (2000); // 80
    BSL_TEST_DRIVE_LOW(b);
    __delay_cycles (2000); // 80
    BSL_TEST_DRIVE_HIGH(b);
    __delay_cycles (2000); // 80
    BSL_RST_DRIVE_HIGH(b);
    __delay_cycles (2000); // 80
    BSL_TEST_DRIVE_LOW(b);
    __delay_cycles (2000); // 80

    while (UART_RXD_IS_LOW(b->bsl_uart) && ((i++) < 1000000));

    if (i >= 1000000) {
        return TIMEOUT;
    }
    // TXD and RXD as UART
    UART_TXD_SEL_UART(b->bsl_uart);
    UART_RXD_SEL_UART(b->bsl_uart);

    BSL_RST_CONFIG_AS_INPUT(b);
    BSL_TEST_CONFIG_AS_INPUT(b);

    return DEVICE_RESET;
}

// Send Mass Erase Command
#define BSL_MASS_ERASE_SIZE 6
const uint8_t BSL_MASS_ERASE[BSL_MASS_ERASE_SIZE] = {0x80, 0x01, 0x00, 0x15, 0x64, 0xa3};
uint8_t MSP430_BSL::send_mass_erase (bsl_stack_t *b) {
    uart.send_data (b->bsl_uart, BSL_MASS_ERASE, BSL_MASS_ERASE_SIZE);
    //return check_correct_responce (b, BSL_SUCCESS_PACKET, BSL_SUCCESS_PACKET_SIZE);
    // Change RXD to GPIO to monitor it
    UART_RXD_CONFIG_AS_INPUT(b->bsl_uart);
    UART_RXD_SEL_GPIO(b->bsl_uart);
    __delay_cycles(50000);
    while (UART_RXD_IS_LOW(b->bsl_uart));

    // TXD as UART
    UART_RXD_SEL_UART(b->bsl_uart);
    //__delay_cycles(50000);
    return 1;
}


// Initialize password
void MSP430_BSL::initialize_password (bsl_stack_t *b) {
    uint8_t i;
    const uint8_t BSL_INITIAL_PASSWORD[] = {
        0x80, 0x21, 0x00, 0x11, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x9e, 0xe6
    };
    for (i = 0; i < BSL_PASSWORD_SIZE; i++) {
        b->password[i] = BSL_INITIAL_PASSWORD[i];
    }
}


// Send Password
uint8_t MSP430_BSL::send_password (bsl_stack_t *b) {
    uint8_t test = 0x80;
    //uart.send_data (b->bsl_uart, &test, 1);
    uart.send_data (b->bsl_uart, &(b->password[0]), BSL_PASSWORD_SIZE);
    return check_correct_responce (b, BSL_SUCCESS_PACKET, BSL_SUCCESS_PACKET_SIZE);
}

// Send Command
void MSP430_BSL::send_command (bsl_stack_t *b, const uint8_t *command, uint32_t commandSize) {
    uart.send_data (b->bsl_uart, command, commandSize);
}

// Used to calculate the checksum for the BSL packet
void MSP430_BSL::calc_checksum (uint8_t *data, uint16_t size, uint8_t *ptrCKH, uint8_t *ptrCKL) {
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
	
	*ptrCKH = (uint8_t) (crc >> 8);
	*ptrCKL = (uint8_t) (crc & 0x00FF);
}

// Check to make sure the expected responce is received
// Returns YES (true) if responce was correct or NO (false) if responce timedout or if it was incorrect
uint8_t MSP430_BSL::check_correct_responce (bsl_stack_t *b, const uint8_t *expectedResponce, const uint32_t responceSize) {
    uint8_t byte;
    volatile uint32_t i, j;
    j = 0;
    for (i = 0; i < responceSize; i++) {
        while ( uart.rx_buffer_is_empty(b->bsl_uart)) {
            j++;
            if (j > 65536) {
                return TIMEOUT;
            }
        }

        byte = uart.get_rx_byte(b->bsl_uart);
        if (expectedResponce[i] != byte) {
            return FAILURE;
        }
    }

    return SUCCESS;
}



// Detects if BSL pw on target would have changed due to the previous command
void MSP430_BSL::detect_password_change (bsl_stack_t *b, const uint8_t *command, const uint16_t commandSize) {
    uint8_t change = NO;
    uint16_t i;
    uint32_t currAddress = (((uint32_t) command[6]) << 16) | (((uint32_t)command[5]) << 8) | ((uint32_t)command[4]);

    // Change the password if the pw on the target would have been overwritten
    for (i = 0; i < commandSize - 9; i++) {
        if (((uint32_t)PW_START) <= currAddress && currAddress < ((uint32_t)PW_START) + (uint32_t) 0x20) {
            b->password[currAddress - ((uint32_t)PW_START) + 4 + i] = command[i + 7];
            change = YES;
        }
    }

    // If there was a change to the password the checksum bytes must be updated
    if (change == YES) { 
        calc_checksum (&(b->password[3]), 33, &(b->password[37]), &(b->password[36]));
    }
}


uint8_t MSP430_BSL::is_valid_command(bsl_stack_t *b, const uint8_t *command, const uint16_t commandSize) {
    uint32_t currAddress = (((uint32_t) command[6]) << 16) | (((uint32_t)command[5]) << 8) | ((uint32_t)command[4]);
    // Check if it is in the RAM section
    if (0x00001C00 <= currAddress && currAddress <= 0x000023FF) {
        return INVALID;
    } else {
        return VALID;
    }
}
