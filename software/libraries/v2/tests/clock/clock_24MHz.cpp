#include <stdint.h>
#include "pins.h"
#include "lib_clock.h"
#include "lib_led.h"

void config_clocks(void) {
    FRCTL0 = FRCTLPW | NWAITS_2;
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_24MH();
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
   
    // Set LEDs to output
    LED0_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_SET_AS_OUTPUT();
    LED1_DRIVE_LOW();

    // Should blink every second
    while (1) {
        __delay_cycles(24000000);
       LED0_TOGGLE();
       LED1_TOGGLE();
    }
    return 0;
}

