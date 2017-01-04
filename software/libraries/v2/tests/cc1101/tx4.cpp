#include "pins.h"
#include "lib_spi.h"
#include "lib_cc1101.h"
#include "lib_clock.h"
#include "lib_led.h"

#include "radio_tests_info.h"

cc1101_stack_t __radio__;
cc1101_stack_t *radio;

uint8_t tx_buffer[61]={0};
volatile uint8_t burstnum,i,flag;

void config_clock(void) {
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_8MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_MCLK_DIV_BY_1();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_SMCLK_DIV_BY_1();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_ACLK_DIV_BY_1();
}


void radio_setup (void) {
    // setup the cc1101 stack
    radio = &__radio__;
    cc1101.setup(radio, RADIO_UC_ID__,
            RADIO_CSN_BIT__,  &RADIO_CSN_DIR__,  &RADIO_CSN_OUT__,
            (volatile uint8_t *) &RADIO_CSN_IN__,  &RADIO_CSN_REN__,
            &RADIO_CSN_SEL0__,  &RADIO_CSN_SEL1__,
            RADIO_GDO0_BIT__, &RADIO_GDO0_DIR__, &RADIO_GDO0_OUT__,
            (volatile uint8_t *) &RADIO_GDO0_IN__, &RADIO_GDO0_REN__,
            &RADIO_GDO0_SEL0__, &RADIO_GDO0_SEL1__,
            RADIO_GDO2_BIT__,  &RADIO_GDO2_DIR__, &RADIO_GDO2_OUT__,
            (volatile uint8_t *) &RADIO_GDO2_IN__, &RADIO_GDO2_REN__,
            &RADIO_GDO2_SEL0__, &RADIO_GDO2_SEL1__
            );

    // Reset SPI
    SPI_RESET(radio->cc1101_spi);

    // Set SPI Options
    SPI_FIRST_CLK_EDGE_IS_DATA_CAPTURE(radio->cc1101_spi);
    SPI_CLK_INACTIVE_IS_LOW(radio->cc1101_spi);
    SPI_MSB_FIRST(radio->cc1101_spi);
    SPI_8BIT_CHAR(radio->cc1101_spi);
    SPI_MASTER_MODE(radio->cc1101_spi);
    SPI_3PIN_MODE(radio->cc1101_spi);
    SPI_SYNC_MODE(radio->cc1101_spi);
    SPI_SELECT_SMCLK(radio->cc1101_spi);
    SPI_SET_UCBRx(radio->cc1101_spi, 2);

    // Set Pins and ports
    spi.configure_pins_for_spi (radio->cc1101_spi);

    // Start SPI
    SPI_START(radio->cc1101_spi);
}

void radio_destruct(void) {

    CC1101_CSN_CONFIG_AS_INPUT(radio);
    CC1101_GDO0_CONFIG_AS_INPUT(radio);
    CC1101_GDO2_CONFIG_AS_INPUT(radio);
    CC1101_CSN_SEL_GPIO(radio);
    CC1101_GDO0_SEL_GPIO(radio);
    CC1101_GDO2_SEL_GPIO(radio);
    
    spi.configure_pins_for_gpio(radio->cc1101_spi);
    SPI_RESET(radio->cc1101_spi);
}

void send_packet (void) {
    radio_setup();
    cc1101.init(radio);	
    cc1101.set_logical_channel(radio, LOGICAL_CHANNEL_4); // Needs to be the same in Tx and Rx
    cc1101.set_data_rate(radio, DATA_RATE_4); // Needs to be the same in Tx and Rx
    cc1101.set_tx_power(radio, SEND_POWER_4);
    cc1101.send_data(radio, packet1, PACKET_SIZE_1);
    cc1101.sleep(radio);
    radio_destruct();
}

int main(void){

    MSP430_CC1101 Radio;

    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    //config_leds
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();

    config_clock();

    while(1) {
        send_packet();
        LED0_TOGGLE();
        LED1_TOGGLE();
        __delay_cycles(8000000);
    }
    return 1;
}
