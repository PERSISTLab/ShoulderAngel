#ifndef __MSP430_SPI
#define __MSP430_SPI

#include <stdint.h>
#include "macros.h"

#define SPI_BUFF_SIZE 64



/* -------------------- SPI PIN CONFIGURATION -------------------- */
/* SCLK Pin Configuration */
#define SPI_SCLK_CONFIG_AS_INPUT( x )     *((x)->sclk_dir) &= ~((x)->sclk_pin);
#define SPI_SCLK_CONFIG_AS_OUTPUT( x )    *((x)->sclk_dir) |=  ((x)->sclk_pin);
#define SPI_SCLK_PULL_DIS( x )          *((x)->sclk_ren) &= ~((x)->sclk_pin);
#define SPI_SCLK_PULL_EN( x )           *((x)->sclk_ren) |=  ((x)->sclk_pin);
#define SPI_SCLK_SEL_GPIO( x ) \
    *((x)->sclk_sel0) &= ~((x)->sclk_pin) ; \
    *((x)->sclk_sel1) &= ~((x)->sclk_pin) ;

#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5969__)
#define SPI_SCLK_SEL_SPI( x ) \
    *((x)->sclk_sel0) &= ~((x)->sclk_pin) ; \
    *((x)->sclk_sel1) |=  ((x)->sclk_pin) ;
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define SPI_SCLK_SEL_SPI( x ) \
    *((x)->sclk_sel0) |=  ((x)->sclk_pin) ; \
    *((x)->sclk_sel1) &= ~((x)->sclk_pin) ;
#endif

/* SI Pin Configuration */
#define SPI_SI_CONFIG_AS_INPUT( x )     *((x)->mosi_dir) &= ~((x)->mosi_pin);
#define SPI_SI_CONFIG_AS_OUTPUT( x )    *((x)->mosi_dir) |=  ((x)->mosi_pin);
#define SPI_SI_PULL_DIS( x )          *((x)->mosi_ren) &= ~((x)->mosi_pin);
#define SPI_SI_PULL_EN( x )           *((x)->mosi_ren) |=  ((x)->mosi_pin);
#define SPI_SI_SEL_GPIO( x ) \
    *((x)->mosi_sel0) &= ~((x)->mosi_pin) ; \
    *((x)->mosi_sel1) &= ~((x)->mosi_pin) ;
#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5969__)
#define SPI_SI_SEL_SPI( x ) \
    *((x)->mosi_sel0) &= ~((x)->mosi_pin) ; \
    *((x)->mosi_sel1) |=  ((x)->mosi_pin) ; 
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define SPI_SI_SEL_SPI( x ) \
    *((x)->mosi_sel0) |=  ((x)->mosi_pin) ; \
    *((x)->mosi_sel1) &= ~((x)->mosi_pin) ;
#endif

/* SO Pin Configuration */
#define SPI_SO_CONFIG_AS_INPUT( x )     *((x)->miso_dir) &= ~((x)->miso_pin);
#define SPI_SO_CONFIG_AS_OUTPUT( x )    *((x)->miso_dir) |=  ((x)->miso_pin);
#define SPI_SO_IS_HIGH( x )             ( *((x)->miso_in) & ((x)->miso_pin) )
#define SPI_SO_PULL_DIS( x )          *((x)->miso_ren) &= ~((x)->miso_pin);
#define SPI_SO_PULL_EN( x )           *((x)->miso_ren) |=  ((x)->miso_pin);
#define SPI_SO_SEL_GPIO( x ) \
    *((x)->miso_sel0) &= ~((x)->miso_pin) ; \
    *((x)->miso_sel1) &= ~((x)->miso_pin) ;
#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5739__) || (defined __msp430fr5969__)
#define SPI_SO_SEL_SPI( x ) \
    *((x)->miso_sel0) &= ~((x)->miso_pin) ; \
    *((x)->miso_sel1) |=  ((x)->miso_pin) ;
#endif
#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define SPI_SO_SEL_SPI( x ) \
    *((x)->miso_sel0) |=  ((x)->miso_pin) ; \
    *((x)->miso_sel1) &= ~((x)->miso_pin) ;
#endif

/* -------------------- Register Settings -------------------- */
// UCAxCTLW0 | UCBxCTLW0
#define SPI_FIRST_CLK_EDGE_IS_DATA_EXCHANGE( x )    *((x)->CTLW0) &= ~UCCKPH;
#define SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE( x )     *((x)->CTLW0) |= UCCKPH;
#define SPI_CLK_INACTIVE_IS_LOW( x )                *((x)->CTLW0) &= ~UCCKPL;
#define SPI_CLK_INACTIVE_IS_HIGH( x )               *((x)->CTLW0) |= UCCKPL;
#define SPI_LSB_FIRST( x )     *((x)->CTLW0) &= ~UCMSB;
#define SPI_MSB_FIRST( x )     *((x)->CTLW0) |= UCMSB;
#define SPI_8BIT_CHAR( x )     *((x)->CTLW0) &= ~UC7BIT;
#define SPI_7BIT_CHAR( x )     *((x)->CTLW0) |= UC7BIT;
#define SPI_SLAVE_MODE( x )    *((x)->CTLW0) &= ~UCMST;
#define SPI_MASTER_MODE( x )   *((x)->CTLW0) |= UCMST;
#define SPI_3PIN_MODE( x )     *((x)->CTLW0) &= ~UCMODE_0;
#define SPI_4PIN_MODE_UCxSTE_ACTIVE_HIGH( x )      *((x)->CTLW0) &= ~UCMODE_1; *((x)->CTLW0) |= UCMODE_1;
#define SPI_4PIN_MODE_UCxSTE_ACTIVE_LOW( x )       *((x)->CTLW0) &= ~UCMODE_2; *((x)->CTLW0) |= UCMODE_2;
#define SPI_ASYNC_MODE( x )    *((x)->CTLW0) &= ~UCSYNC;
#define SPI_SYNC_MODE( x )     *((x)->CTLW0) |= UCSYNC;
#define SPI_SELECT_ACLK( x )   *((x)->CTLW0) &= ~UCSSEL_1; *((x)->CTLW0) |= UCSSEL_1;
#define SPI_SELECT_SMCLK( x )  *((x)->CTLW0) &= ~UCSSEL_2; *((x)->CTLW0) |= UCSSEL_2;
#define SPI_STE_USED_TO_PREVENT_MASTER_CONFICTS( x )           *((x)->CTLW0) &= ~UCSTEM;
#define SPI_STE_USED_TO_GENERATE_ENABLE_SIGNAL_FOR_SLAVE( x )  *((x)->CTLW0) |= UCSTEM;
#define SPI_START( x )   *((x)->CTLW0) &= ~UCSWRST;
#define SPI_RESET( x )    *((x)->CTLW0) |= UCSWRST;

// UCAxBRW | UCBxBRW
#define SPI_SET_UCBRx( x, n )      *((x)->BRW) = n;

// UCAxSTATW | UCBxSTATW
#define SPI_LISTEN_DISABLED( x )   *((x)->STATW) &= ~UCLISTEN;
#define SPI_LISTEN_ENABLED( x )    *((x)->STATW) |=  UCLISTEN;
#define SPI_CLEAR_BUS_CONFLICT_ERROR( x )      *((x)->STATW) &= ~UCFE;
#define SPI_SET_BUS_CONFLICT_ERROR( x )        *((x)->STATW) |=  UCFE;
#define SPI_BUS_CONFLICT_ERROR_OCCURRED( x )   ( *((x)->STATW) & UCFE )
#define SPI_CLEAR_OVERRUN_ERROR( x )       *((x)->STATW) &= ~UCOE;
#define SPI_SET_OVERRUN_ERROR( x )         *((x)->STATW) |=  UCOE;
#define SPI_OVERRUN_ERROR_OCCURRED( x )    ( *((x)->STATW) & UCOE )
#define SPI_IS_BUSY( x )                   ( *((x)->STATW) & UCBUSY )

// UCAxRXBUF | UCBxRXBUF
#define SPI_READ_BYTE( x )         ( *((x)->RXBUF) )

// UCAxTXBUF | UCBxTXBUF
#define SPI_WRITE_BYTE(x, n)       *((x)->TXBUF) = n;

// UCAxIE | UCBxIE
#define SPI_TRANSMIT_INTERRUPT_DISABLE( x )    *((x)->IE) &= ~UCTXIE;
#define SPI_TRANSMIT_INTERRUPT_ENABLE( x )     *((x)->IE) |= UCTXIE;
#define SPI_RECEIVE_INTERRUPT_DISABLE( x )     *((x)->IE) &= ~UCRXIE;
#define SPI_RECEIVE_INTERRUPT_ENABLE( x )      *((x)->IE) |= UCRXIE;

// UCAxIFG | UCBxIFG
#define SPI_CLEAR_TX_INTERRUPT( x )    *((x)->IFG) &= ~UCTXIFG;
#define SPI_SET_TX_INTERRUPT( x )      *((x)->IFG) |= UCTXIFG;
#define SPI_TX_INTERRUPT_PENDING( x )  ( *((x)->IFG) & UCTXIFG )
#define SPI_CLEAR_RX_INTERRUPT( x )    *((x)->IFG) &= ~UCRXIFG;
#define SPI_SET_RX_INTERRUPT( x )      *((x)->IFG) |= UCRXIFG;
#define SPI_RX_INTERRUPT_PENDING( x )  ( *((x)->IFG) & UCRXIFG )

// UCAxIV | UVAxIV
// TODO: FIGURE OUT EXACTLY WHAT THIS DOES DIFF FROM THE OTHER FLAGS AND HOW EXACTLY IT IS DOING IT


// EXTRA MACROS
#define SPI_WAIT_TILL_DONE( x )    while(! SPI_RX_INTERRUPT_PENDING( x ));

// CS TYPE MACROS
#define CS_LOW_ACTIVE 0
#define CS_HIGH_ACTIVE 1
#define CS_NONE 2

// Slave or master Macros
#define MASTER_MODE 0
#define SLAVE_MODE 1

// Pin data
#if (defined __msp430fr5728__)
#define SPI_A0_MOSI_PORT__ 2
#define SPI_A0_MOSI_PIN__ BIT0
#define SPI_A0_MISO_PORT__ 2
#define SPI_A0_MISO_PIN__ BIT1
#define SPI_A0_SCLK_PORT__ 1
#define SPI_A0_SCLK_PIN__ BIT5

#define SPI_B0_MOSI_PORT__ 1
#define SPI_B0_MOSI_PIN__ BIT6
#define SPI_B0_MISO_PORT__ 1
#define SPI_B0_MISO_PIN__ BIT7
#define SPI_B0_SCLK_PORT__ 2
#define SPI_B0_SCLK_PIN__ BIT2
#endif

#if (defined __msp430fr5739__)
#define SPI_A0_MOSI_PORT__ 2
#define SPI_A0_MOSI_PIN__ BIT0
#define SPI_A0_MISO_PORT__ 2
#define SPI_A0_MISO_PIN__ BIT1
#define SPI_A0_SCLK_PORT__ 1
#define SPI_A0_SCLK_PIN__ BIT5

#define SPI_A1_MOSI_PORT__ 2
#define SPI_A1_MOSI_PIN__ BIT5
#define SPI_A1_MISO_PORT__ 2
#define SPI_A1_MISO_PIN__ BIT6
#define SPI_A1_SCLK_PORT__ 2
#define SPI_A1_SCLK_PIN__ BIT4

#define SPI_B0_MOSI_PORT__ 1
#define SPI_B0_MOSI_PIN__ BIT6
#define SPI_B0_MISO_PORT__ 1
#define SPI_B0_MISO_PIN__ BIT7
#define SPI_B0_SCLK_PORT__ 2
#define SPI_B0_SCLK_PIN__ BIT2
#endif

#if (defined __msp430fr5969__)
#define SPI_A0_MOSI_PORT__ 2
#define SPI_A0_MOSI_PIN__ BIT0
#define SPI_A0_MISO_PORT__ 2
#define SPI_A0_MISO_PIN__ BIT1
#define SPI_A0_SCLK_PORT__ 1
#define SPI_A0_SCLK_PIN__ BIT5

#define SPI_A1_MOSI_PORT__ 2
#define SPI_A1_MOSI_PIN__ BIT5
#define SPI_A1_MISO_PORT__ 2
#define SPI_A1_MISO_PIN__ BIT6
#define SPI_A1_SCLK_PORT__ 2
#define SPI_A1_SCLK_PIN__ BIT4

#define SPI_B0_MOSI_PORT__ 1
#define SPI_B0_MOSI_PIN__ BIT6
#define SPI_B0_MISO_PORT__ 1
#define SPI_B0_MISO_PIN__ BIT7
#define SPI_B0_SCLK_PORT__ 2
#define SPI_B0_SCLK_PIN__ BIT2
#endif

#if (defined __msp430fr6989__) || (defined __msp430fr5989__)
#define SPI_A0_MOSI_PORT__ 2
#define SPI_A0_MOSI_PIN__ BIT0
#define SPI_A0_MISO_PORT__ 2
#define SPI_A0_MISO_PIN__ BIT1
#define SPI_A0_SCLK_PORT__ 2
#define SPI_A0_SCLK_PIN__ BIT2

#define SPI_A1_MOSI_PORT__ 3
#define SPI_A1_MOSI_PIN__ BIT4
#define SPI_A1_MISO_PORT__ 3
#define SPI_A1_MISO_PIN__ BIT5
#define SPI_A1_SCLK_PORT__ 3
#define SPI_A1_SCLK_PIN__ BIT6

#define SPI_B0_MOSI_PORT__ 1
#define SPI_B0_MOSI_PIN__ BIT6
#define SPI_B0_MISO_PORT__ 1
#define SPI_B0_MISO_PIN__ BIT7
#define SPI_B0_SCLK_PORT__ 1
#define SPI_B0_SCLK_PIN__ BIT4

#define SPI_B1_MOSI_PORT__ 3
#define SPI_B1_MOSI_PIN__ BIT1
#define SPI_B1_MISO_PORT__ 3
#define SPI_B1_MISO_PIN__ BIT2
#define SPI_B1_SCLK_PORT__ 3
#define SPI_B1_SCLK_PIN__ BIT0

#endif

// Definitions for the spi stacks
#define __A0__ 0
#define __A1__ 1
#define __B0__ 2
#define __B1__ 3
typedef struct spi_stack_tag {
        
    // Rx Queue variables
    uint16_t rxSize;
    uint16_t rxHead;
    uint16_t rxTail;
    uint8_t rxBuff[SPI_BUFF_SIZE];

    // Functionality Data
    uint8_t mode;

    // MOSI
    volatile uint8_t mosi_pin;
    volatile unsigned char *mosi_dir;
    volatile unsigned char *mosi_sel0;
    volatile unsigned char *mosi_sel1;
    volatile unsigned char *mosi_ren;

    // MISO
    volatile uint8_t miso_pin;
    volatile unsigned char *miso_dir;
    volatile unsigned char *miso_in;
    volatile unsigned char *miso_sel0;
    volatile unsigned char *miso_sel1;
    volatile unsigned char *miso_ren;
    
    // SCLK
    volatile uint8_t sclk_pin;
    volatile unsigned char *sclk_dir;
    volatile unsigned char *sclk_sel0;
    volatile unsigned char *sclk_sel1;
    volatile unsigned char *sclk_ren;

    // spi registers
    volatile unsigned int *CTLW0;
    volatile unsigned int *BRW;
    volatile unsigned int *STATW;
    volatile unsigned int *RXBUF;
    volatile unsigned int *TXBUF;
    volatile unsigned int *IE;
    volatile unsigned int *IFG;
    volatile unsigned int *IV;
} spi_stack_t;


class MSP430_SPI {
    public:
        void setup (spi_stack_t *s, const uint8_t periphrial, uint8_t mode);
        void configure_pins_for_spi (spi_stack_t *s);
        void configure_pins_for_gpio (spi_stack_t *s);
        void send_byte (spi_stack_t *s, const uint8_t data);
        void send_bytes (spi_stack_t *s, const uint8_t *data, const uint32_t bytesToSend);
        uint8_t transfer_byte (spi_stack_t *s, uint8_t byte);
        void transfer_bytes (spi_stack_t *s, uint8_t *buffer, const uint32_t num);
        void read_bytes (spi_stack_t *s, uint8_t *buffer, uint32_t num);
        void reset_rx_buffer (spi_stack_t *s);
        bool rx_buffer_is_empty (spi_stack_t *s);
        uint8_t read_byte_from_rx_buffer (spi_stack_t *s);
        void slave_isr (spi_stack_t *s);
        void activate_cs (spi_stack_t *s);
        void deactivate_cs (spi_stack_t *s);
};

static MSP430_SPI spi;
#endif
