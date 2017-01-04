#include "lib_led.h"
#include "lib_clock.h"
#include <stdint.h>
#ifdef __msp430fr5739__
#include <msp430fr5739.h>
#endif
#ifdef __msp430fr5969__
#include <msp430fr5969.h>
#endif
#ifdef __msp430fr6989__
#include <msp430fr6989.h>
#endif
void config_clock(void) {
    CLOCK_SEND_PASSWORD();
    CLOCK_DCO_SET_8MH();
    CLOCK_MCLK_SET_TO_DCO();
    CLOCK_MCLK_DIV_BY_8();
    CLOCK_SMCLK_SET_TO_DCO();
    CLOCK_SMCLK_DIV_BY_8();
    CLOCK_ACLK_SET_TO_VLO();
    CLOCK_ACLK_DIV_BY_8();
}


int main(void){

    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    //config clock
    config_clock();


    //config leds
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();
    
    while (1) {
        LED0_TOGGLE();
        __delay_cycles(1000000);
    }
    return 0;
}
