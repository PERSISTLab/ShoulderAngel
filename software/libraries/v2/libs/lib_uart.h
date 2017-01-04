#ifndef __MSP430_UART_h
#define __MSP430_UART_h

#include <stdint.h>
#include "macros.h"

// Only thing you might want to change 
#define UART_BUFF_SIZE 64



/*------------------------- UART Pins and Ports -------------------------*/
// TXD Pin configuration
#define UART_TXD_CONFIG_AS_INPUT( x ) 	*((x)->txd_dir) &= ~((x)->txd_pin);
#define UART_TXD_CONFIG_AS_OUTPUT( x )	*((x)->txd_dir) |=  ((x)->txd_pin);
#define UART_TXD_DRIVE_LOW( x )       	*((x)->txd_out) &= ~((x)->txd_pin);
#define UART_TXD_DRIVE_HIGH( x )       	*((x)->txd_out) |=  ((x)->txd_pin);
#define UART_TXD_IS_HIGH( x )          	( *((x)->txd_in) & ((x)->txd_pin) )
#define UART_TXD_IS_LOW( x )           	( ! UART_TXD_IS_HIGH( x ) )
#define UART_TXD_PULL_DIS( x )          *((x)->txd_ren) &= ~((x)->txd_pin);
#define UART_TXD_PULL_EN( x )           *((x)->txd_ren) |=  ((x)->txd_pin);
#define UART_TXD_INT_DIS( x )           *((x)->txd_ie) &= ~((x)->txd_pin);
#define UART_TXD_INT_EN( x )            *((x)->txd_ie) |=  ((x)->txd_pin);
#define UART_TXD_IV_CLEAR( x )          *((x)->txd_iv) &= ~((x)->txd_pin);
#define UART_TXD_IV_IS_SET( x )         ( *((x)->txd_iv) & ((x)->txd_pin) )
#define UART_TXD_SEL_GPIO( x ) \
    *((x)->txd_sel0) &= ~((x)->txd_pin); \
    *((x)->txd_sel1) &= ~((x)->txd_pin);
#if (defined __msp430fr5739__) || (defined __msp430fr5969__)
#define UART_TXD_SEL_UART( x ) \
    *((x)->txd_sel0) &= ~((x)->txd_pin); \
    *((x)->txd_sel1) |=  ((x)->txd_pin);
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define UART_TXD_SEL_UART( x ) \
    *((x)->txd_sel0) |=  ((x)->txd_pin); \
    *((x)->txd_sel1) &= ~((x)->txd_pin);
#endif

// RXD Pin Configuration
#define UART_RXD_CONFIG_AS_INPUT( x ) 	*((x)->rxd_dir) &= ~((x)->rxd_pin);
#define UART_RXD_CONFIG_AS_OUTPUT( x )	*((x)->rxd_dir) |=  ((x)->rxd_pin);
#define UART_RXD_DRIVE_LOW( x )       	*((x)->rxd_out) &= ~((x)->rxd_pin);
#define UART_RXD_DRIVE_HIGH( x )      	*((x)->rxd_out) |=  ((x)->rxd_pin);
#define UART_RXD_IS_HIGH( x )         	( *((x)->rxd_in) & ((x)->rxd_pin) )
#define UART_RXD_IS_LOW( x )          	( ! UART_RXD_IS_HIGH( x ) )
#define UART_RXD_PULL_DIS( x )          *((x)->rxd_ren) &= ~((x)->rxd_pin);
#define UART_RXD_PULL_EN( x )           *((x)->rxd_ren) |=  ((x)->rxd_pin);
#define UART_RXD_INT_DIS( x )           *((x)->rxd_ie) &= ~((x)->rxd_pin);
#define UART_RXD_INT_EN( x )            *((x)->rxd_ie) |=  ((x)->rxd_pin);
#define UART_RXD_IV_CLEAR( x )          *((x)->rxd_iv) &= ~((x)->rxd_pin);
#define UART_RXD_IV_IS_SET( x )         ( *((x)->rxd_iv) & ((x)->rxd_pin) )
#define UART_RXD_SEL_GPIO( x ) \
    *((x)->rxd_sel0) &= ~((x)->rxd_pin); \
    *((x)->rxd_sel1) &= ~((x)->rxd_pin);
#if (defined __msp430fr5739__) || (defined __msp430fr5969__)
#define UART_RXD_SEL_UART( x ) \
    *((x)->rxd_sel0) &= ~((x)->rxd_pin); \
    *((x)->rxd_sel1) |=  ((x)->rxd_pin);
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define UART_RXD_SEL_UART( x ) \
    *((x)->rxd_sel0) |=  ((x)->rxd_pin); \
    *((x)->rxd_sel1) &= ~((x)->rxd_pin);
#endif


/*-----------------------------------------------------------------------*/
/*--------------- UART register configuration definitions ---------------*/
// UCAxCTLW0
#define UART_PARITY_BIT_DISABLE( x )   *((x)->UCAxCTLW0) &= ~UCPEN;
#define UART_PARITY_BIT_ENABLE( x )    *((x)->UCAxCTLW0) |=  UCPEN;
#define UART_ODD_PARITY( x )           *((x)->UCAxCTLW0) &= ~UCPAR;
#define UART_EVEN_PARITY( x )          *((x)->UCAxCTLW0) |=  UCPAR;
#define UART_LSB_FIRST( x )            *((x)->UCAxCTLW0) &= ~UCMSB;
#define UART_MSB_FIRST( x )            *((x)->UCAxCTLW0) |=  UCMSB;
#define UART_8BIT_CHAR( x )            *((x)->UCAxCTLW0) &= ~UC7BIT;
#define UART_7BIT_CHAR( x )            *((x)->UCAxCTLW0) |=  UC7BIT;
#define UART_1_STOP_BIT( x )           *((x)->UCAxCTLW0) &= ~UCSPB;
#define UART_2_STOP_BITS( x )          *((x)->UCAxCTLW0) |=  UCSPB;
#define UART_SET_UART_MODE( x )        *((x)->UCAxCTLW0) &= ~UCMODE_0;
#define UART_SET_IDLE_LINE_MULTIPROCESSOR_MODE( x )    *((x)->UCAxCTLW0) &= ~UCMODE_1; *((x)->UCAxCTLW0) |= UCMODE_1;
#define UART_SET_ADDRESS_BIT_MULTIPROCESSOR_MODE( x )  *((x)->UCAxCTLW0) &= ~UCMODE_2; *((x)->UCAxCTLW0) |= UCMODE_2;
#define UART_SET_UART_WITH_AUTOMATIC_BAUD_RATE_DETECTION( x )  *((x)->UCAxCTLW0) |= UCMODE_3;
#define UART_ASYNC_MODE( x )   *((x)->UCAxCTLW0) &= ~UCSYNC;
#define UART_SYNC_MODE( x )    *((x)->UCAxCTLW0) |=  UCSYNC;
#define UART_SELECT_MCLK( x )  *((x)->UCAxCTLW0) &= ~UCSSEL_0;
#define UART_SELECT_ACLK( x )  *((x)->UCAxCTLW0) &= ~UCSSEL_1; *((x)->UCAxCTLW0) |= UCSSEL_1;
#define UART_SELECT_SMCLK( x ) *((x)->UCAxCTLW0) &= ~UCSSEL_2; *((x)->UCAxCTLW0) |= UCSSEL_2; 
#define UART_ERROR_CHAR_INT_DISABLE( x )   *((x)->UCAxCTLW0) &= ~UCRXEIE;
#define UART_ERROR_CHAR_INT_ENABLE( x )    *((x)->UCAxCTLW0) |=  UCRXEIE;
#define UART_BREAK_CHAR_INT_DISABLE( x )   *((x)->UCAxCTLW0) &= ~UCBRKIE;
#define UART_BREAK_CHAR_INT_ENABLE( x )    *((x)->UCAxCTLW0) |=  UCBRKIE;
#define UART_NOT_DORMANT( x )              *((x)->UCAxCTLW0) &= ~UCDORM;
#define UART_DORMANT( x )                  *((x)->UCAxCTLW0) |=  UCDORM;
#define UART_NEXT_FRAME_IS_DATA( x )       *((x)->UCAxCTLW0) &= ~UCTXADDR;
#define UART_NEXT_FRAME_IS_ADDRESS( x )    *((x)->UCAxCTLW0) |=  UCTXADDR;
#define UART_NEXT_FRAME_IS_NOT_BREAK( x )  *((x)->UCAxCTLW0) &= ~UCTXBRK;
#define UART_NEXT_FRAME_IS_BREAK( x )      *((x)->UCAxCTLW0) |=  UCTXBRK;
#define UART_RESET( x )   *((x)->UCAxCTLW0) = UCSWRST;
#define UART_START( x )    *((x)->UCAxCTLW0) &=  ~UCSWRST;

//UCAxCTLW1
#define UART_DEGLITCH_TIME_2NS( x )    *((x)->UCAxCTLW1) &= ~(UCGLIT1 | UCGLIT0);
#define UART_DEGLITCH_TIME_50NS( x )   *((x)->UCAxCTLW1) &= ~UCGLIT1; *((x)->UCAxCTLW1) |= UCGLIT0;
#define UART_DEGLITCH_TIME_100NS( x )  *((x)->UCAxCTLW1) |= UCGLIT1;  *((x)->UCAxCTLW1) &= ~UCGLIT0;
#define UART_DEGLITCH_TIME_200NS( x )  *((x)->UCAxCTLW1) |= UCGLIT1 | UCGLIT0;

//UCAxBRW
#define UART_SET_UCBRx( x, n )     *((x)->UCAxBRW) = n;

//UCAxMCTLW
#define UART_SET_UCBRSx( x, n )    *((x)->UCAxMCTLW) = ( *((x)->UCAxMCTLW) & 0x00FF ) | (((volatile uint16_t) n) << 8);
#define UART_SET_UCBRFx( x, n )    *((x)->UCAxMCTLW) = ( *((x)->UCAxMCTLW) & 0xFF0F ) | (n << 4);
#define UART_OVERSAMPLING_ENABLED( x )     *((x)->UCAxMCTLW) |= UCOS16;
#define UART_OVERSAMPLING_DISABLED( x )    *((x)->UCAxMCTLW) &= ~UCOS16;

// TODO: UCAxSTATW
// UCAxRXBUF
#define UART_READ_BYTE( x )	( *((x)->UCAxRXBUF) )
// UCAxTXBUF
#define UART_SEND_BYTE( x, n )	*((x)->UCAxTXBUF) = n;
// TODO: UCAxABCTL
// TODO: UCAxIRCTL
// TODO: UCAxIE
#define UART_TX_INT_DISABLE( x )	*((x)->UCAxIE) &= ~UCTXIE;
#define UART_TX_INT_ENABLE( x )		*((x)->UCAxIE) |=  UCTXIE;
#define UART_RX_INT_DISABLE( x )	*((x)->UCAxIE) &= ~UCRXIE;
#define UART_RX_INT_ENABLE( x )		*((x)->UCAxIE) |=  UCRXIE;
//#define UART_TRANSMIT_IS_COMPLETE( x )	( *((x)->UCAxIRCTL) & UCTXCPTIE )
//#define UART_START_BIT
// TODO: UCAxIFG
#define UART_TX_IS_READY( x )	( *((x)->UCAxIFG) & UCTXIFG )
#define UART_TRANSMIT_COMPLETE( x ) ( *((x)->UCAxIFG) & UCTXCPTIFG )
// TODO: UCAxIV
#define UART_READ_IV( x )	( *((x)->UCAxIV) )

// Definitions for the uart stacks
#define __A0__ 0
#define __A1__ 1

#if (defined __msp430fr5969__) || (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define UART_A0_TX_PORT__ 2
#define UART_A0_TX_PIN__  BIT0
#define UART_A0_RX_PORT__ 2
#define UART_A0_RX_PIN__  BIT1
#define UART_A0_GPIO_INT_VECTOR__ PORT2_VECTOR

#endif

#if (defined __msp430fr5969__)
#define UART_A1_TX_PORT__ 2
#define UART_A1_TX_PIN__  BIT5
#define UART_A1_RX_PORT__ 2
#define UART_A1_RX_PIN__  BIT6
#define UART_A1_GPIO_INT_VECTOR__ PORT2_VECTOR
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define UART_A1_TX_PORT__ 3
#define UART_A1_TX_PIN__  BIT4
#define UART_A1_RX_PORT__ 3
#define UART_A1_RX_PIN__  BIT5
#define UART_A1_GPIO_INT_VECTOR__ PORT3_VECTOR
#endif
typedef struct uart_stack_tag {
    // Rx Buffer
    volatile uint8_t rxBuff[UART_BUFF_SIZE];
    volatile uint8_t rxHead;
    volatile uint8_t rxTail;
    volatile uint8_t rxSize;

    // pin/port registers
    uint8_t txd_pin;
    volatile uint8_t *txd_dir;
    volatile uint8_t *txd_out;
    volatile uint8_t *txd_in;
    volatile uint8_t *txd_ren;
    volatile uint8_t *txd_sel0;
    volatile uint8_t *txd_sel1;
    volatile uint8_t *txd_ie;
    volatile uint8_t *txd_iv;
    volatile uint8_t rxd_pin;
    volatile uint8_t *rxd_dir;
    volatile uint8_t *rxd_out;
    volatile uint8_t *rxd_in;
    volatile uint8_t *rxd_ren;
    volatile uint8_t *rxd_sel0;
    volatile uint8_t *rxd_sel1;
    volatile uint8_t *rxd_ie;
    volatile uint8_t *rxd_iv;

    // registers
    volatile unsigned int *UCAxCTLW0;
    volatile unsigned int *UCAxCTLW1;
    volatile unsigned int *UCAxBRW;
    volatile unsigned int *UCAxMCTLW;
    volatile unsigned char *UCAxSTATW;
    volatile unsigned int *UCAxRXBUF;
    volatile unsigned int *UCAxTXBUF;
    volatile unsigned char *UCAxABCTL;
    volatile unsigned int *UCAxIRCTL;
    volatile unsigned int *UCAxIE;
    volatile unsigned int *UCAxIFG;
    volatile unsigned int *UCAxIV;
} uart_stack_t;

class MSP430_UART {
    private:
        void initialize_stack (uart_stack_t *u, const uint8_t periphrial);
    public:
        void configure_pins (uart_stack_t *u);
        void setup (uart_stack_t *u, const uint8_t periphrial);
        void reset_rx_buffer (uart_stack_t *u);
        bool rx_buffer_is_empty (uart_stack_t *u);
        void send_data (uart_stack_t *u, const uint8_t *data, const uint32_t size);
        uint8_t get_rx_byte (uart_stack_t *u);
        void isr (uart_stack_t *u);
};

static MSP430_UART uart;
#endif
