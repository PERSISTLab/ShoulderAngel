#ifndef __MSP430_BSL_h
#define __MSP430_BSL_h

#include "macros.h"
#include "lib_uart.h"
#include "lib_clock.h"
#include "lib_general_definitions.h"

// RST pin Configuation
#define BSL_RST_CONFIG_AS_OUTPUT( x )   *((x)->rst_dir) |= (x)->rst_pin;
#define BSL_RST_CONFIG_AS_INPUT( x )    *((x)->rst_dir) &= ~(x)->rst_pin;
#define BSL_RST_DRIVE_HIGH( x )         *((x)->rst_out) |= (x)->rst_pin;
#define BSL_RST_DRIVE_LOW( x )          *((x)->rst_out) &= ~(x)->rst_pin;
#define BSL_RST_IS_HIGH( x )                 ( *((x)->rst_in) & (x)->rst_pin )
#define BSL_RST_IS_LOW( x )                 ( ! (BSL_RST_IS_HIGH(x) )
#define BSL_RST_SEL_GPIO( x ) \
    *((x)->rst_sel0) &= ~(x)->rst_pin; \
    *((x)->rst_sel1) &= ~(x)->rst_pin;

// TEST Pin Configuration
#define BSL_TEST_CONFIG_AS_OUTPUT( x )     *((x)->test_dir) |= (x)->test_pin;
#define BSL_TEST_CONFIG_AS_INPUT( x )      *((x)->test_dir) &= ~(x)->test_pin;
#define BSL_TEST_DRIVE_HIGH( x )           *((x)->test_out) |= (x)->test_pin;
#define BSL_TEST_DRIVE_LOW( x )            *((x)->test_out) &= ~(x)->test_pin;
#define BSL_TEST_SEL_GPIO( x ) \
    *((x)->test_sel0) &= ~(x)->test_pin; \
    *((x)->test_sel1) &= ~(x)->test_pin;

#define BSL_PASSWORD_SIZE 38
typedef struct bsl_stack_tag {
    
    // Uart Stack
    uart_stack_t __bsl_uart__;
    uart_stack_t *bsl_uart;
    
    uint8_t password[BSL_PASSWORD_SIZE];
    // pin/port registers
    uint8_t rst_pin;
    volatile uint8_t *rst_dir;
    volatile uint8_t *rst_out;
    volatile uint8_t *rst_in;
    volatile uint8_t *rst_ren;
    volatile uint8_t *rst_sel0;
    volatile uint8_t *rst_sel1;
    uint8_t test_pin;
    volatile uint8_t *test_dir;
    volatile uint8_t *test_out;
    volatile uint8_t *test_in;
    volatile uint8_t *test_ren;
    volatile uint8_t *test_sel0;
    volatile uint8_t *test_sel1;
} bsl_stack_t;



class MSP430_BSL {
    private:
    public:
        void setup (
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
                );
        uint8_t init_sequence (bsl_stack_t *b);
        uint8_t send_mass_erase (bsl_stack_t *b);
        void initialize_password (bsl_stack_t *b);
        uint8_t send_password (bsl_stack_t *b);
        void send_command (bsl_stack_t *b, const uint8_t *command, const uint32_t commandSize);
        void calc_checksum (uint8_t *data, uint16_t size, uint8_t *ptrCKH, uint8_t *ptrCKL);
        uint8_t check_correct_responce (bsl_stack_t *b, const uint8_t *expectedResponce, const uint32_t responceSize);
        void detect_password_change (bsl_stack_t *b, const uint8_t *command, const uint16_t commandSize);
        uint8_t is_valid_command (bsl_stack_t *b, const uint8_t *command, const uint16_t commandSize);
};


static MSP430_BSL bsl;

#define BSL_SUCCESS_PACKET_SIZE 8
const uint8_t BSL_SUCCESS_PACKET[BSL_SUCCESS_PACKET_SIZE] = {0x00, 0x80, 0x02, 0x00, 0x3b, 0x00, 0x60, 0xc4};
#define BSL_ACK_SIZE 1
const uint8_t BSL_ACK[] = {0x00};

#define RESPONCE_SUCCESS 0
#define RESPONCE_FAILURE 1
#define VALID 0
#define INVALID 1


#endif
