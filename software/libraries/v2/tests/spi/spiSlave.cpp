#include "pins.h"
#define SPI_BUFF_SIZE 64

#include "lib_spi.h"
#include "lib_clock.h"
#include "lib_led.h"

spi_stack_t __spiInfo__;
spi_stack_t *spiInfo;


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

void spiInfo_setup (void) {
    // Setup SPI stack
    spiInfo = &__spiInfo__;
    spi.setup (spiInfo, SPI_UC_ID__, SLAVE_MODE);
    
    // Reset SPI
    SPI_RESET(spiInfo);

    // Set SPI Options
    SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE(spiInfo);
    SPI_CLK_INACTIVE_IS_LOW(spiInfo);
    SPI_MSB_FIRST(spiInfo);
    SPI_8BIT_CHAR(spiInfo);
    SPI_SLAVE_MODE(spiInfo);
    SPI_3PIN_MODE(spiInfo);
    SPI_SYNC_MODE(spiInfo);
    SPI_SELECT_SMCLK(spiInfo);
    SPI_SET_UCBRx(spiInfo, 2);

    // Set Pins and ports
    spi.configure_pins_for_spi (spiInfo);

    // Start SPI
    SPI_START(spiInfo);

    // Set Receive Interrupt (Only Needed for Slave mode)
    SPI_RECEIVE_INTERRUPT_ENABLE(spiInfo);
}

int main (void) {
    uint16_t i;
    uint8_t packetBuffer[SPI_BUFF_SIZE];
    uint8_t packetSize;

    //Stop watchdog timer
    WDTCTL = WDTPW + WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;
    
    // Config Clock
    config_clock();
    
    // Config LEDs
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();

    // Turn on global interupts
    __bis_SR_register( GIE ); 

    uint8_t sendByte = 0xC6;
    uint8_t returnByte = 0x5B;
    uint8_t tempByte;

    // setup spiInfo
    spiInfo_setup();
    spi.reset_rx_buffer(spiInfo);

    while (1) {
        while (spi.rx_buffer_is_empty (spiInfo));
        SPI_WRITE_BYTE(spiInfo, returnByte);
        tempByte = spi.read_byte_from_rx_buffer(spiInfo);
        LED0_TOGGLE();
        if (tempByte == sendByte) {
            LED1_TOGGLE();
        }
    }
}


void __attribute__ ((interrupt(__USCI_SPI_VECTOR__))) SPI_ISR (void);
void SPI_ISR (void) {
    spi.slave_isr(spiInfo);
}
