#include <stdint.h>
#include "pins.h"
#include "lib_clock.h"
#include "lib_led.h"
#include "lib_uart.h"

#define YES 1
#define NO 0

#define SEND_SIZE 1
#define REC_SIZE 1
const uint8_t sendData[SEND_SIZE] = {0xAA};
const uint8_t recData[REC_SIZE] = {0xA6};

uart_stack_t __uartA0__;
uart_stack_t  *uartA0;

void config_clocks(void) {
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_8MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_MCLK_DIV_BY_1();
    CLOCK_SMCLK_DIV_BY_1();
    CLOCK_ACLK_DIV_BY_1();
}

int main(void) {

    // stop the watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    // Config Clocks
    config_clocks();

    // Setup Uart stack
    uartA0 = &__uartA0__;
    uart.setup (uartA0, __A0__);
    
    // Reset UART
    UART_RESET (uartA0); 

    // Set UART Options
    UART_PARITY_BIT_ENABLE(uartA0);
    UART_EVEN_PARITY(uartA0);
    UART_LSB_FIRST(uartA0);
    UART_8BIT_CHAR(uartA0);
    UART_1_STOP_BIT(uartA0);
    UART_SET_UART_MODE(uartA0);
    UART_ASYNC_MODE(uartA0);
    UART_SELECT_SMCLK(uartA0);
    UART_ERROR_CHAR_INT_DISABLE(uartA0);
    UART_BREAK_CHAR_INT_DISABLE(uartA0);
    UART_NOT_DORMANT(uartA0);
    UART_NEXT_FRAME_IS_DATA(uartA0);
    UART_NEXT_FRAME_IS_NOT_BREAK(uartA0);
    UART_OVERSAMPLING_ENABLED(uartA0);
    UART_SET_UCBRx(uartA0, 52);
    UART_SET_UCBRFx(uartA0, 1);
    UART_SET_UCBRSx(uartA0, 0x49); 
    
    // Set pins and ports
    uart.configure_pins (uartA0);

    // Start Uart
    UART_START(uartA0);

    // Enable Uart interrupt
    UART_RX_INT_ENABLE(uartA0);

    // Enable Global Interrupts 
    __bis_SR_register( GIE );

    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();

    uint16_t i;
    uint8_t isCorrect;
    uint8_t byte;

    P2DIR &= ~BIT1;  

    while (1) {
        while (uart.rx_buffer_is_empty(uartA0));
        uart.send_data (uartA0, recData, REC_SIZE);

        isCorrect = YES;
        for (i = 0; i < SEND_SIZE; i++) {
            byte = uart.get_rx_byte(uartA0);
            if (byte != sendData[i]) {
                isCorrect = NO;
            }
        }
        if (isCorrect == YES) {
            LED1_TOGGLE();
        }
        LED0_TOGGLE();
        __delay_cycles (100000);

    }

    return 0;
}

// Interrupts
void __attribute__ ((interrupt (USCI_A0_VECTOR))) USCI_A0_ISR (void);
void USCI_A0_ISR (void) {
        uart.isr(uartA0);
}


