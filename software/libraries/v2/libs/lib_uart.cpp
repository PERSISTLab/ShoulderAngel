#include "pins.h"
#include "lib_uart.h"

// "u" is a pointer to an uninitialized uart_stack_t struct


//MSP430_UART::MSP430_UART (void) {}
void MSP430_UART::initialize_stack (uart_stack_t *u, const uint8_t periphrial) {
    if (periphrial == __A0__) {
        u->txd_pin = UART_A0_TX_PIN__;
        u->txd_dir =  & (INFIX5(P, UART_A0_TX_PORT__, D, I, R));
        u->txd_out =  & (INFIX5(P, UART_A0_TX_PORT__, O, U, T));
        u->txd_in  =  (volatile uint8_t *) & (INFIX (P, UART_A0_TX_PORT__, IN));
        u->txd_ren =  & (INFIX (P, UART_A0_TX_PORT__, REN));
        u->txd_sel0 = & (INFIX5(P, UART_A0_TX_PORT__, S, E, L0));
        u->txd_sel1 = & (INFIX5(P, UART_A0_TX_PORT__, S, E, L1));
        u->txd_ie =   & (INFIX(P, UART_A0_TX_PORT__, IE));
        u->txd_iv =   (volatile uint8_t *) & (INFIX(P, UART_A0_TX_PORT__, IV));
        u->rxd_pin = UART_A0_RX_PIN__;
        u->rxd_dir =  & (INFIX5(P, UART_A0_RX_PORT__, D, I, R));
        u->rxd_out =  & (INFIX5(P, UART_A0_RX_PORT__, O, U, T));
        u->rxd_in  =  (volatile uint8_t *) & (INFIX (P, UART_A0_RX_PORT__, IN));
        u->rxd_ren =  & (INFIX (P, UART_A0_RX_PORT__, REN));
        u->rxd_sel0 = & (INFIX5(P, UART_A0_RX_PORT__, S, E, L0));
        u->rxd_sel1 = & (INFIX5(P, UART_A0_RX_PORT__, S, E, L1));
        u->rxd_ie =   & (INFIX(P, UART_A0_RX_PORT__, IE));
        u->rxd_iv =   (volatile uint8_t *) & (INFIX(P, UART_A0_RX_PORT__, IV));
        u->UCAxCTLW0 = &UCA0CTLW0;
        u->UCAxCTLW1 = &UCA0CTLW1;
        u->UCAxBRW   = &UCA0BRW;
        u->UCAxMCTLW = &UCA0MCTLW;
        u->UCAxSTATW = &UCA0STATW;
        u->UCAxRXBUF = (volatile unsigned int *) &UCA0RXBUF;
        u->UCAxTXBUF = &UCA0TXBUF;
        u->UCAxABCTL = &UCA0ABCTL;
        u->UCAxIRCTL = &UCA0IRCTL;
        u->UCAxIE    = &UCA0IE;
        u->UCAxIFG   = &UCA0IFG;
        u->UCAxIV    = &UCA0IV;
    } else if (periphrial == __A1__) {
        u->txd_pin = UART_A1_TX_PIN__;
        u->txd_dir =  & (INFIX5(P, UART_A1_TX_PORT__, D, I, R));
        u->txd_out =  & (INFIX5(P, UART_A1_TX_PORT__, O, U, T));
        u->txd_in  =  (volatile uint8_t *) & (INFIX (P, UART_A1_TX_PORT__, IN));
        u->txd_ren =  & (INFIX (P, UART_A1_TX_PORT__, REN));
        u->txd_sel0 = & (INFIX5(P, UART_A1_TX_PORT__, S, E, L0));
        u->txd_sel1 = & (INFIX5(P, UART_A1_TX_PORT__, S, E, L1));
        u->txd_ie =   & (INFIX(P, UART_A1_TX_PORT__, IE));
        u->txd_iv =   (volatile uint8_t *) & (INFIX(P, UART_A1_TX_PORT__, IV));
        u->rxd_pin = UART_A1_RX_PIN__;
        u->rxd_dir =  & (INFIX5(P, UART_A1_RX_PORT__, D, I, R));
        u->rxd_out =  & (INFIX5(P, UART_A1_RX_PORT__, O, U, T));
        u->rxd_in  =  (volatile uint8_t *) & (INFIX (P, UART_A1_RX_PORT__, IN));
        u->rxd_ren =  & (INFIX (P, UART_A1_RX_PORT__, REN));
        u->rxd_sel0 = & (INFIX5(P, UART_A1_RX_PORT__, S, E, L0));
        u->rxd_sel1 = & (INFIX5(P, UART_A1_RX_PORT__, S, E, L1));
        u->rxd_ie =   & (INFIX(P, UART_A1_RX_PORT__, IE));
        u->rxd_iv =   (volatile uint8_t *) & (INFIX(P, UART_A1_RX_PORT__, IV));
        u->UCAxCTLW0 = &UCA1CTLW0;
        u->UCAxCTLW1 = &UCA1CTLW1;
        u->UCAxBRW   = &UCA1BRW;
        u->UCAxMCTLW = &UCA1MCTLW;
        u->UCAxSTATW = &UCA1STATW;
        u->UCAxRXBUF = (volatile unsigned int *) &UCA1RXBUF;
        u->UCAxTXBUF = &UCA1TXBUF;
        u->UCAxABCTL = &UCA1ABCTL;
        u->UCAxIRCTL = &UCA1IRCTL;
        u->UCAxIE    = &UCA1IE;
        u->UCAxIFG   = &UCA1IFG;
        u->UCAxIV    = &UCA1IV;
    }
}
// Setup pins
// "periphrial" is either __A0__ or __A1__
void MSP430_UART::setup(uart_stack_t * u, const uint8_t periphrial) {
    
    initialize_stack (u, periphrial);
    reset_rx_buffer (u);
}
void MSP430_UART::configure_pins(uart_stack_t *u){
    UART_TXD_SEL_UART(u);
    UART_RXD_SEL_UART(u);
}

// reset the buffer
void MSP430_UART::reset_rx_buffer(uart_stack_t *u) {
    u->rxHead = u->rxTail = u->rxSize = 0;
}

// return true is uart buffer is empty
bool MSP430_UART::rx_buffer_is_empty(uart_stack_t *u) {
    return !(u->rxSize);
}

// Send data of size given over UART
// Needs to have a delay in front of it. 
void MSP430_UART::send_data (uart_stack_t *u, const uint8_t *data, const uint32_t size) {
    uint32_t i;
    for(i = 0; i < size; i++) {
        while ( ! (UART_TX_IS_READY(u)) );
        UART_SEND_BYTE( u, data[i] );
    }

}

// Take a RX byte from the buffer
// NOTE: programmer should check that rxSize != 0 before this in some way
uint8_t MSP430_UART::get_rx_byte (uart_stack_t *u) {
    uint8_t byte = 0xFF;
    if (u->rxSize > 0) {
        byte = u->rxBuff[u->rxTail];
        u->rxTail++;
        if (u->rxTail == UART_BUFF_SIZE) {
            u->rxTail = 0;
        }
        u->rxSize--;
    }
    return byte;
}

void MSP430_UART::isr (uart_stack_t *u) {
	if (u->rxSize < UART_BUFF_SIZE) {
		(u->rxSize)++;
		u->rxBuff[u->rxHead] = UART_READ_BYTE(u);
		(u->rxHead)++;
		if (u->rxHead == UART_BUFF_SIZE) {
			u->rxHead = 0;
		}
	}
}
