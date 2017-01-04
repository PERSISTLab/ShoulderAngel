#ifndef __MSP430_CC1101
#define __MSP430_CC1101

#include <stdint.h>
#include "macros.h"
#include "lib_spi.h"

// *****************************************************************************
// * Pin Configuration
// *****************************************************************************
// CSn Pin Configuration
#define CC1101_CSN_CONFIG_AS_OUTPUT(x) *((x)->cs_dir) |=  (x)->cs_pin ;
#define CC1101_CSN_CONFIG_AS_INPUT(x)  *((x)->cs_dir) &= ~(x)->cs_pin ;
#define CC1101_CSN_DRIVE_HIGH(x)       *((x)->cs_out) |=  (x)->cs_pin ;
#define CC1101_CSN_DRIVE_LOW(x)        *((x)->cs_out) &= ~(x)->cs_pin ;
#define CC1101_CSN_IS_HIGH(x)          ( *((x)->cs_out) &  (x)->cs_pin )
#define CC1101_CSN_IS_LOW(x)           ( !CC1101_CSN_IS_HIGH(x) )
#define CC1101_CSN_PULL_DIS( x )          *((x)->cs_ren) &= ~((x)->cs_pin);
#define CC1101_CSN_PULL_EN( x )           *((x)->cs_ren) |=  ((x)->cs_pin);
#define CC1101_CSN_SEL_GPIO(x) \
        *((x)->cs_sel0) &= ~(x)->cs_pin ; \
        *((x)->cs_sel1) &= ~(x)->cs_pin ;

#define CC1101_TURN_CHIP_SELECT_ON(x)     CC1101_CSN_DRIVE_LOW(x);
#define CC1101_TURN_CHIP_SELECT_OFF(x)    CC1101_CSN_DRIVE_HIGH(x);
#define CC1101_CHIP_SELECT_IS_OFF(x)      CC1101_CSN_IS_HIGH(x)
#define CC1101_CHIP_SELECT_IS_ON(x)       CC1101_CSN_IS_LOW(x)

// GDO0 Pin Configuration
#define CC1101_GDO0_CONFIG_AS_OUTPUT(x) *((x)->gdo0_dir) |=  (x)->gdo0_pin;
#define CC1101_GDO0_CONFIG_AS_INPUT(x)  *((x)->gdo0_dir) &= ~(x)->gdo0_pin;
#define CC1101_GDO0_DRIVE_HIGH(x)       *((x)->gdo0_out) |=  (x)->gdo0_pin;
#define CC1101_GDO0_DRIVE_LOW(x)        *((x)->gdo0_out) &= ~(x)->gdo0_pin;
#define CC1101_GDO0_IS_HIGH(x)          ( *((x)->gdo0_in) & (x)->gdo0_pin )
#define CC1101_GDO0_IS_LOW(x)           ( !CC1101_GDO0_IS_HIGH(x) )
#define CC1101_GDO0_INT_ENABLE(x)       *((x)->gdo0_ie)  |=  (x)->gdo0_pin;
#define CC1101_GDO0_INT_DISABLE(x)      *((x)->gdo0_ie)  &= ~(x)->gdo0_pin;
#define CC1101_GDO0_INT_IS_ENABLED(x)   ( *((x)->gdo0_ie) & (x)->gdo0_pin )
#define CC1101_GDO0_INT_FLAG_CLEAR(x)   *((x)->gdo0_ifg) &= ~(x)->gdo0_pin;
#define CC1101_GDO0_INT_FLAG_IS_SET(x)  ( *((x)->gdo0_ifg) & (x)->gdo0_pin )
#define CC1101_GDO0_CONFIG_RISING_EDGE_INT(x)    *((x)->gdo0_ies) &= ~(x)->gdo0_pin;
#define CC1101_GDO0_CONFIG_FALLING_EDGE_INT(x)   *((x)->gdo0_ies) |=  (x)->gdo0_pin;
#define CC1101_GDO0_PULL_DIS( x )          *((x)->gdo0_ren) &= ~((x)->gdo0_pin);
#define CC1101_GDO0_PULL_EN( x )           *((x)->gdo0_ren) |=  ((x)->gdo0_pin);
#define CC1101_GDO0_SEL_GPIO(x) \
        *((x)->gdo0_sel0) &= ~(x)->gdo0_pin ; \
        *((x)->gdo0_sel1) &= ~(x)->gdo0_pin ;

// GDO2 Pin Configuration
#define CC1101_GDO2_CONFIG_AS_OUTPUT(x) *((x)->gdo2_dir) |=  (x)->gdo2_pin ;
#define CC1101_GDO2_CONFIG_AS_INPUT(x)  *((x)->gdo2_dir) &= ~(x)->gdo2_pin ;
#define CC1101_GDO2_DRIVE_HIGH(x)       *((x)->gdo2_out) |=  (x)->gdo2_pin;
#define CC1101_GDO2_DRIVE_LOW(x)        *((x)->gdo2_out) &= ~ (x)->gdo2_pin;
#define CC1101_GDO2_IS_HIGH(x)          ( *((x)->gdo2_in) & (x)->gdo2_pin)
#define CC1101_GDO2_IS_LOW(x)           ( !CC1101_GDO2_IS_LOW(x) )
#define CC1101_GDO2_INT_ENABLE(x)       *((x)->gdo2_ie)  |=  (x)->gdo2_pin;
#define CC1101_GDO2_INT_DISABLE(x)      *((x)->gdo2_ie)  &= ~(x)->gdo2_pin;
#define CC1101_GDO2_INT_IS_ENABLED(x)   ( *((x)->gdo2_ie) & (x)->gdo2_pin )
#define CC1101_GDO2_INT_CLEAR_FLAG(x)   *((x)->gdo2_ifg) &= ~(x)->gdo2_pin;
#define CC1101_GDO2_INT_FLAG_IS_SET(x)  ( *((x)->gdo2_ifg) &  (x)->gdo2_pin)
#define CC1101_GDO2_CONFIG_RISING_EDGE_INT(x)   *((x)->gdo2_ies) &= ~(x)->gdo2_pin;
#define CC1101_GDO2_CONFIG_FALLING_EDGE_INT(x)  *((x)->gdo2_ies) |=  (x)->gdo2_pin;
#define CC1101_GDO2_PULL_DIS( x )          *((x)->gdo2_ren) &= ~((x)->gdo2_pin);
#define CC1101_GDO2_PULL_EN( x )           *((x)->gdo2_ren) |=  ((x)->gdo2_pin);
#define CC1101_GDO2_SEL_GPIO(x) \
        *((x)->gdo2_sel0) &= ~ (x)->gdo2_pin ; \
        *((x)->gdo2_sel1) &= ~ (x)->gdo2_pin ;

// ******************************************************************************
// * Other Macros
//  *****************************************************************************
#define CC1101_WAIT_TO_SEND(x)   while (SPI_SO_IS_HIGH((x)->cc1101_spi));

// Radio States
#define RADIO_STATE_UNKNOWN  0
#define RADIO_STATE_OFF      1
#define RADIO_STATE_IDLE     2
#define RADIO_STATE_RX       3

// Other definitions
// ****************************************************************
#define     WRITE_BURST     	0x40
#define     READ_SINGLE     	0x80
#define     READ_BURST      	0xC0
#define     BYTES_IN_RXFIFO     0x7F
// ****************************************************************

// ****************************************************************
// * Power Enabling
// ****************************************************************
#define RADIO_PWR_CONFIG_AS_INPUT()     INFIX5(P,RADIO_PWR_PORT__,D,I,R) &=~RADIO_PWR_BIT__;
#define RADIO_PWR_CONFIG_AS_OUTPUT()    INFIX5(P,RADIO_PWR_PORT__,D,I,R) |= RADIO_PWR_BIT__;
#define RADIO_PWR_DRIVE_LOW()           INFIX5(P,RADIO_PWR_PORT__,O,U,T) &=~RADIO_PWR_BIT__;
#define RADIO_PWR_DRIVE_HIGH()          INFIX5(P,RADIO_PWR_PORT__,O,U,T) |= RADIO_PWR_BIT__;

typedef struct cc1101_stack_tag {
    
    // SPI stack
    spi_stack_t __cc1101_spi__;
    spi_stack_t *cc1101_spi;

    // variables
    uint8_t mrfiRadioState;
    uint8_t rfPowerNdx;
    uint8_t dataRateNdx;
    uint8_t packetLength;

    // pin/port registers
    uint8_t cs_pin;
    volatile uint8_t *cs_dir;
    volatile uint8_t *cs_out;
    volatile uint8_t *cs_in;
    volatile uint8_t *cs_ren;
    volatile uint8_t *cs_sel0;
    volatile uint8_t *cs_sel1;
    uint8_t gdo0_pin;
    volatile uint8_t *gdo0_dir;
    volatile uint8_t *gdo0_out;
    volatile uint8_t *gdo0_in;
    volatile uint8_t *gdo0_ren;
    volatile uint8_t *gdo0_sel0;
    volatile uint8_t *gdo0_sel1;
    uint8_t gdo2_pin;
    volatile uint8_t *gdo2_dir;
    volatile uint8_t *gdo2_out;
    volatile uint8_t *gdo2_in;
    volatile uint8_t *gdo2_ren;
    volatile uint8_t *gdo2_sel0;
    volatile uint8_t *gdo2_sel1;
} cc1101_stack_t;


class MSP430_CC1101 {

    private:
        void reset(cc1101_stack_t *c) ;
        void write_reg (cc1101_stack_t *c, const uint8_t addr, const uint8_t value);
        void write_burst_reg (cc1101_stack_t *c, const uint8_t addr, const uint8_t *buffer, const uint8_t num);
        uint8_t strobe (cc1101_stack_t *c, const uint8_t strobe);
        uint8_t read_reg (cc1101_stack_t *c, const uint8_t addr);
        void read_burst_reg (cc1101_stack_t *c, const uint8_t addr, uint8_t *buffer, const uint8_t num);
        uint8_t read_status (cc1101_stack_t *c, uint8_t addr);
        void reg_config_settings (cc1101_stack_t *c);
        void send_wait (cc1101_stack_t *c);
    public:
        void rx_mode_off (cc1101_stack_t *c);
        void setup(
                cc1101_stack_t *c,
                uint8_t periphrial,
                uint8_t cs_pin,
                volatile uint8_t *cs_dir,
                volatile uint8_t *cs_out,
                volatile uint8_t *cs_in,
                volatile uint8_t *cs_ren,
                volatile uint8_t *cs_sel0,
                volatile uint8_t *cs_sel1,
                uint8_t gdo0_pin,
                volatile uint8_t *gdo0_dir,
                volatile uint8_t *gdo0_out,
                volatile uint8_t *gdo0_in,
                volatile uint8_t *gdo0_ren,
                volatile uint8_t *gdo0_sel0,
                volatile uint8_t *gdo0_sel1,
                uint8_t gdo2_pin,
                volatile uint8_t *gdo2_dir,
                volatile uint8_t *gdo2_out,
                volatile uint8_t *gdo2_in,
                volatile uint8_t *gdo2_ren,
                volatile uint8_t *gdo2_sel0,
                volatile uint8_t *gdo2_sel1
                    );
        void init (cc1101_stack_t *c); 
        void rx_on (cc1101_stack_t *c);
        uint8_t check_receive_flag (cc1101_stack_t *c);
        uint8_t receive_data (cc1101_stack_t *c, uint8_t *rxBuffer);
        void set_data_rate (cc1101_stack_t *c, uint8_t rate_ndx);
        void set_tx_power (cc1101_stack_t *c, uint8_t powrset);
        void send_data (cc1101_stack_t *c, const uint8_t *txBuffer, uint8_t size);
        void idle (cc1101_stack_t *c);
        void sleep (cc1101_stack_t *c);
        void wakeup (cc1101_stack_t *c);
        uint8_t get_state (cc1101_stack_t *c);
        void set_logical_channel (cc1101_stack_t *c, uint8_t channel);
        void set_max_packet_length (cc1101_stack_t *c, uint8_t pkt_length);
};

static MSP430_CC1101 cc1101;

#endif
