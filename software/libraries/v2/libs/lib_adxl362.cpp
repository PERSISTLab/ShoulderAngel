#include "pins.h"
#include "lib_adxl362.h"
#include "lib_spi.h"

uint8_t MSP430_ADXL362::spi_read_one_register (adxl362_stack_t *a, uint8_t address){
    uint8_t regValue = 0;

    ADXL362_TURN_CHIP_SELECT_ON(a);
    spi.send_byte(a->spi, 0x0B); // read instruction
    spi.send_byte(a->spi, address);
    regValue = spi.transfer_byte (a->spi, 0x00);
    ADXL362_TURN_CHIP_SELECT_OFF(a);

    return regValue;
}

void MSP430_ADXL362::spi_write_one_register (adxl362_stack_t *a, uint8_t address, uint8_t value) {
    ADXL362_TURN_CHIP_SELECT_ON(a);
    spi.send_byte(a->spi, 0x0A); // write instruction
    spi.send_byte(a->spi, address);
    spi.send_byte(a->spi, value);
    ADXL362_TURN_CHIP_SELECT_OFF(a);
}

void MSP430_ADXL362::setup (
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
        ) {
    a->spi = & (a->__spi__);
    spi.setup (a->spi, periphrial, MASTER_MODE);

    a->vcc_pin = vcc_pin;
    a->vcc_dir = vcc_dir;
    a->vcc_out = vcc_out;
    a->vcc_in = vcc_in;
    a->vcc_ren = vcc_ren;
    a->vcc_sel0 = vcc_sel0;
    a->vcc_sel1 = vcc_sel1;
    a->cs_pin = cs_pin;
    a->cs_dir = cs_dir;
    a->cs_out = cs_out;
    a->cs_in = cs_in;
    a->cs_ren = cs_ren;
    a->cs_sel0 = cs_sel0;
    a->cs_sel1 = cs_sel1;
}

void MSP430_ADXL362::soft_reset (adxl362_stack_t *a) {
    spi_write_one_register (a, 0x1F, 0x52); // Write to Soft Reset, "R"
    __delay_cycles(10000);
}

//
// begin_measure()
// turns on measurement mode
// required after reset 
void MSP430_ADXL362::begin_measure (adxl362_stack_t *a) {

    // Take value from reg 2D and set the measurement bit in it
    uint8_t tmp = spi_read_one_register (a, 0x2D);
    tmp |= 0x02;
    spi_write_one_register (a, 0x2D, tmp);
    __delay_cycles(10000);
}

void MSP430_ADXL362::read_xyzt_data (adxl362_stack_t *a,
        int16_t *x, int16_t *y, int16_t *z, int16_t *t) {

    // Burst read all 3 axis at same time for all measurements to be at the same time
    ADXL362_TURN_CHIP_SELECT_ON(a);
    spi.send_byte(a->spi, 0x0B); // read instruction
    spi.send_byte(a->spi, 0x0E); // Start at XDATA Reg
    *x = spi.transfer_byte(a->spi, 0x00);
    *x = *x | (spi.transfer_byte(a->spi, 0x00) << 8);
    *y = spi.transfer_byte(a->spi, 0x00);
    *y = *y | (spi.transfer_byte(a->spi, 0x00) << 8);
    *z = spi.transfer_byte(a->spi, 0x00);
    *z = *z | (spi.transfer_byte(a->spi, 0x00) << 8);
    *t = spi.transfer_byte(a->spi, 0x00);
    *t = *t | (spi.transfer_byte(a->spi, 0x00) << 8);
    ADXL362_TURN_CHIP_SELECT_OFF(a);
}
