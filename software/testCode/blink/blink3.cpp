#include "lib_led.h"
#include "lib_clock.h"
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

void initLpmState (void) {
    // Set GPIO pins to low power state
    P1DIR = 0x00;
    P1OUT = 0x00;
    P1REN = 0xFF;
    P1SEL0 = 0x00;
    P1SEL1 = 0x00;

    P2DIR = 0x00;
    P2OUT = 0x00;
    P2REN = 0xFF;
    P2SEL0 = 0x00;
    P2SEL1 = 0x00;

    P3DIR = 0x00;
    P3OUT = 0x00;
    P3REN = 0xFF;
    P3SEL0 = 0x00;
    P3SEL1 = 0x00;

    P4DIR = 0x00;
    P4OUT = 0x00;
    P4REN = 0xFF;
    P4SEL0 = 0x00;
    P4SEL1 = 0x00;
#ifdef __msp430fr6989__
    P5DIR = 0x00;
    P5OUT = 0x00;
    P5REN = 0xFF;
    P5SEL0 = 0x00;
    P5SEL1 = 0x00;

    P6DIR = 0x00;
    P6OUT = 0x00;
    P6REN = 0xFF;
    P6SEL0 = 0x00;
    P6SEL1 = 0x00;

    P7DIR = 0x00;
    P7OUT = 0x00;
    P7REN = 0xFF;
    P7SEL0 = 0x00;
    P7SEL1 = 0x00;

    P8DIR = 0x00;
    P8OUT = 0x00;
    P8REN = 0xFF;
    P8SEL0 = 0x00;
    P8SEL1 = 0x00;

    P9DIR = 0x00;
    P9OUT = 0x00;
    P9REN = 0xFF;
    P9SEL0 = 0x00;
    P9SEL1 = 0x00;

    P10DIR = 0x00;
    P10OUT = 0x00;
    P10REN = 0xFF;
    P10SEL0 = 0x00;
    P10SEL1 = 0x00;
#endif

    PJDIR = 0x00;
    PJOUT = 0x00;
    PJREN = 0xFF;
    PJSEL0 = 0x00;
    PJSEL1 = 0x00;

    // Turn off ADC
#ifdef __msp430fr5739__
    ADC10CTL0 &= ~ADC10ENC;
    ADC10CTL0 &= ~ADC10ON;
#endif
#if defined __msp430fr6989__ || defined __msp430fr5969__
    ADC12CTL0 &= ~ADC12ENC;
    ADC12CTL0 &= ~ADC12ON;
#endif
}


int main(void){

    //Stop watchdog timer
    WDTCTL = WDTPW | WDTHOLD;
    PM5CTL0 &= ~LOCKLPM5;

    //config clock
    config_clock();

    // Set all pins to input
    initLpmState();

    //config leds
    LED0_SET_AS_OUTPUT();
    LED1_SET_AS_OUTPUT();
    LED0_DRIVE_LOW();
    LED1_DRIVE_LOW();
    while (1) {
        __delay_cycles(1000000);
        LED0_TOGGLE();
        LED1_TOGGLE();
    }
    return 0;
}
