#include "pins.h"
#include "lib_spi.h"
#include "lib_clock.h"
#include "lib_led.h"


spi_stack_t __spiSnoopTx__;
spi_stack_t *spiSnoopTx;
spi_stack_t __spiSnoopRx__;
spi_stack_t *spiSnoopRx;

uint8_t sendByte = 0xC6;
uint8_t returnByte = 0x5B;

void config_clock(void) {
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_8MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_MCLK_DIV_BY_1();
    CLOCK_SMCLK_DIV_BY_1();
    CLOCK_ACLK_DIV_BY_1();
}


void spi_snoop_spi_periphrial_setup (spi_stack_t *s, uint8_t periphrial) {
    // setup the spi stack
    spi.setup (s, periphrial, SLAVE_MODE);

    // Reset SPI
    SPI_RESET(s);

    // Set SPI Options
    SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE(s);
    SPI_CLK_INACTIVE_IS_LOW(s);
    SPI_MSB_FIRST(s);
    SPI_8BIT_CHAR(s);
    SPI_SLAVE_MODE(s);
    SPI_3PIN_MODE(s);
    SPI_SYNC_MODE(s);
    SPI_SELECT_SMCLK(s);
    SPI_SET_UCBRx(s, 2);

    // Configure the pins for SPI snoop
    spi.configure_pins_for_spi (spiInfo);
    SPI_SO_CONFIG_AS_INPUT(s);
    SPI_SO_SEL_GPIO(s);

    // Start SPI
    SPI_START(s);

    // Reset the receive buffer
    spi.reset_rx_buffer(s);
}


void spi_snoop_setup (void) {

    spiSnoopTx = &__spiSnoopTx__;
    spiSnoopRx = &__spiSnoopRx__;
    spi_snoop_spi_periphrial_setup (spiSnoopTx, SNOOP_TX_UC_ID__);
    spi_snoop_spi_periphrial_setup (spiSnoopRx, SNOOP_RX_UC_ID__);
    spi.reset_rx_buffer(spiSnoopTx);
    spi.reset_rx_buffer(spiSnoopRx);

    // Set Receive Interrupt
    //SPI_RECEIVE_INTERRUPT_ENABLE(spiSnoopTx); // rx only as tx and rx are at same time
    SPI_RECEIVE_INTERRUPT_ENABLE(spiSnoopRx); // rx only as tx and rx are at same time
}

// TODO: add timer
uint8_t wait_for_spi_bytes(void) {
    while ( spi.rx_buffer_is_empty(spiSnoopTx) || 
            spi.rx_buffer_is_empty(spiSnoopRx));
    return 0;
}

void get_spi_bytes(uint8_t *txByte, uint8_t *rxByte) {
    *txByte = spi.read_byte_from_rx_buffer (spiSnoopTx);
    *rxByte = spi.read_byte_from_rx_buffer (spiSnoopRx);
}

/*
 * Assumptions:
 * 1. a byte was just received from spiSnoopTx (which also means spiSnoopRx)
 * 2. spiSnoopSetup has been called before this
 */
void spi_snoop (void) {
    uint16_t i;
    uint8_t txByte = 0x00;
    uint8_t rxByte = 0x00;

    do {
        // Byte has already been received (which is why this function was called)
        get_spi_bytes (&txByte, &rxByte);

        if (txByte == sendByte) {
            LED0_TOGGLE();
        }
        if (rxByte == returnByte) {
            LED1_TOGGLE();
        }
    } while ( ! spi.rx_buffer_is_empty(spiSnoopTx));
}


void enter_sleep (void) {
    //resetTimer();
    __bis_SR_register (LPM3_bits + GIE);
    __no_operation(); 
}


int main (void) {

    //Stop watchdog timer
    WDTCTL = WDTPW + WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    config_clock();

    // Turn on global interupts
    __bis_SR_register( GIE );

    // Config LEDs
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();

    spi_snoop_setup();

    while (1) {
        wait_for_spi_bytes();
        spi_snoop();
    }
}


void __attribute__ ((interrupt (__USCI_SPI_RX_VECTOR__))) SPI_SNOOP_INT (void);
void SPI_SNOOP_INT (void) {
    LPM3_EXIT;
    spi.slave_isr(spiSnoopTx);
    spi.slave_isr(spiSnoopRx);

}


