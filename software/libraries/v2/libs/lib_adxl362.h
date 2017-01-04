#ifndef __MSP430_ADXL362
#define __MSP430_ADXL362

#include <stdint.h>
#include "macros.h"
#include "lib_spi.h"

// *****************************************************************************
// * Pin Configuration
// *****************************************************************************
// CSn Pin Configuration
#define ADXL362_CSN_CONFIG_AS_OUTPUT(x) *((x)->cs_dir) |=  (x)->cs_pin ;
#define ADXL362_CSN_CONFIG_AS_INPUT(x)  *((x)->cs_dir) &= ~(x)->cs_pin ;
#define ADXL362_CSN_DRIVE_HIGH(x)       *((x)->cs_out) |=  (x)->cs_pin ;
#define ADXL362_CSN_DRIVE_LOW(x)        *((x)->cs_out) &= ~(x)->cs_pin ;
#define ADXL362_CSN_IS_HIGH(x)          ( *((x)->cs_out) &  (x)->cs_pin )
#define ADXL362_CSN_IS_LOW(x)           ( !ADXL362_CSN_IS_HIGH(x) )
#define ADXL362_CSN_PULL_DIS( x )          *((x)->cs_ren) &= ~((x)->cs_pin);
#define ADXL362_CSN_PULL_EN( x )           *((x)->cs_ren) |=  ((x)->cs_pin);
#define ADXL362_CSN_SEL_GPIO(x) \
        *((x)->cs_sel0) &= ~(x)->cs_pin ; \
        *((x)->cs_sel1) &= ~(x)->cs_pin ;

#define ADXL362_TURN_CHIP_SELECT_ON(x)     ADXL362_CSN_DRIVE_LOW(x);
#define ADXL362_TURN_CHIP_SELECT_OFF(x)    ADXL362_CSN_DRIVE_HIGH(x);
#define ADXL362_CHIP_SELECT_IS_OFF(x)      ADXL362_CSN_IS_HIGH(x)
#define ADXL362_CHIP_SELECT_IS_ON(x)       ADXL362_CSN_IS_LOW(x)

// vcc Pin Configuration
#define ADXL362_VCC_CONFIG_AS_OUTPUT(x) *((x)->vcc_dir) |=  (x)->vcc_pin;
#define ADXL362_VCC_CONFIG_AS_INPUT(x)  *((x)->vcc_dir) &= ~(x)->vcc_pin;
#define ADXL362_VCC_DRIVE_HIGH(x)       *((x)->vcc_out) |=  (x)->vcc_pin;
#define ADXL362_VCC_DRIVE_LOW(x)        *((x)->vcc_out) &= ~(x)->vcc_pin;
#define ADXL362_VCC_IS_HIGH(x)          ( *((x)->vcc_in) & (x)->vcc_pin )
#define ADXL362_VCC_IS_LOW(x)           ( !ADXL362_VCC_IS_HIGH(x) )
#define ADXL362_VCC_INT_ENABLE(x)       *((x)->vcc_ie)  |=  (x)->vcc_pin;
#define ADXL362_VCC_INT_DISABLE(x)      *((x)->vcc_ie)  &= ~(x)->vcc_pin;
#define ADXL362_VCC_INT_IS_ENABLED(x)   ( *((x)->vcc_ie) & (x)->vcc_pin )
#define ADXL362_VCC_INT_FLAG_CLEAR(x)   *((x)->vcc_ifg) &= ~(x)->vcc_pin;
#define ADXL362_VCC_INT_FLAG_IS_SET(x)  ( *((x)->vcc_ifg) & (x)->vcc_pin )
#define ADXL362_VCC_CONFIG_RISING_EDGE_INT(x)    *((x)->vcc_ies) &= ~(x)->vcc_pin;
#define ADXL362_VCC_CONFIG_FALLING_EDGE_INT(x)   *((x)->vcc_ies) |=  (x)->vcc_pin;
#define ADXL362_VCC_PULL_DIS( x )          *((x)->vcc_ren) &= ~((x)->vcc_pin);
#define ADXL362_VCC_PULL_EN( x )           *((x)->vcc_ren) |=  ((x)->vcc_pin);
#define ADXL362_VCC_SEL_GPIO(x) \
        *((x)->vcc_sel0) &= ~(x)->vcc_pin ; \
        *((x)->vcc_sel1) &= ~(x)->vcc_pin ;

#define ADXL362_POWER_ON(x)     ADXL362_VCC_DRIVE_HIGH(x);
#define ADXL362_POWER_OFF(x)    ADXL362_VCC_DRIVE_LOW(x);

typedef struct adxl362_stack_tag {
    
    // SPI stack
    spi_stack_t __spi__;
    spi_stack_t *spi;

    // pin/port registers
    uint8_t cs_pin;
    volatile uint8_t *cs_dir;
    volatile uint8_t *cs_out;
    volatile uint8_t *cs_in;
    volatile uint8_t *cs_ren;
    volatile uint8_t *cs_sel0;
    volatile uint8_t *cs_sel1;
    uint8_t vcc_pin;
    volatile uint8_t *vcc_dir;
    volatile uint8_t *vcc_out;
    volatile uint8_t *vcc_in;
    volatile uint8_t *vcc_ren;
    volatile uint8_t *vcc_sel0;
    volatile uint8_t *vcc_sel1;

} adxl362_stack_t;


class MSP430_ADXL362 {
    private:
        uint8_t spi_read_one_register (adxl362_stack_t *a, uint8_t address);
        void spi_write_one_register (adxl362_stack_t *a, uint8_t address, uint8_t value);
    public:
        void setup (
                adxl362_stack_t *a,
                uint8_t periphrial,
                uint8_t vcc_pin,
                volatile uint8_t *vcc_dir,
                volatile uint8_t *vcc_out,
                volatile uint8_t *vcc_in,
                volatile uint8_t *vcc_ren,
                volatile uint8_t *vcc_sel0,
                volatile uint8_t *vcc_sel1,
                uint8_t cs_pin,
                volatile uint8_t *cs_dir,
                volatile uint8_t *cs_out,
                volatile uint8_t *cs_in,
                volatile uint8_t *cs_ren,
                volatile uint8_t *cs_sel0,
                volatile uint8_t *cs_sel1
                );
        void soft_reset (adxl362_stack_t *a);
        void begin_measure (adxl362_stack_t *a);
        void read_xyzt_data (adxl362_stack_t *a,
                int16_t *x, int16_t *y, int16_t *z, int16_t *t);
};
static MSP430_ADXL362 adxl362;

#endif

