#ifndef __msp430_led__
#define __msp430_led__

#include "macros.h"

#ifdef __msp430fr5739__
#define LED0_PORT__     J
#define LED0_PIN__      0
#define LED1_PORT__     J
#define LED1_PIN__      1
#endif

#ifdef __msp430fr6989__
#define LED0_PORT__     1
#define LED0_PIN__      0
#define LED1_PORT__     9
#define LED1_PIN__      7
#endif

#ifdef __msp430fr5969__
#define LED0_PORT__     4
#define LED0_PIN__      6
#define LED1_PORT__     1
#define LED1_PIN__      0
#endif

#ifdef LED0_PORT__
#define LED0_BIT__              BV(LED0_PIN__)
#define LED0_SET_AS_INPUT()     INFIX5 (P, LED0_PORT__, D, I, R) &= ~LED0_BIT__;
#define LED0_SET_AS_OUTPUT()    INFIX5 (P, LED0_PORT__, D, I, R) |= LED0_BIT__;
#define LED0_DRIVE_LOW()        INFIX5 (P, LED0_PORT__, O, U, T) &= ~LED0_BIT__;
#define LED0_DRIVE_HIGH()       INFIX5 (P, LED0_PORT__, O, U, T) |= LED0_BIT__;
#define LED0_TOGGLE()           INFIX5 (P, LED0_PORT__, O, U, T) ^= LED0_BIT__;

#define LED1_BIT__              BV(LED1_PIN__)
#define LED1_SET_AS_INPUT()     INFIX5 (P, LED1_PORT__, D, I, R) &= ~LED1_BIT__;
#define LED1_SET_AS_OUTPUT()    INFIX5 (P, LED1_PORT__, D, I, R) |= LED1_BIT__;
#define LED1_DRIVE_LOW()        INFIX5 (P, LED1_PORT__, O, U, T) &= ~LED1_BIT__;
#define LED1_DRIVE_HIGH()       INFIX5 (P, LED1_PORT__, O, U, T) |= LED1_BIT__;
#define LED1_TOGGLE()           INFIX5 (P, LED1_PORT__, O, U, T) ^= LED1_BIT__;
#endif
#ifndef LED0_PORT__
#define LED0_BIT__
#define LED0_SET_AS_INPUT()
#define LED0_SET_AS_OUTPUT()
#define LED0_DRIVE_LOW()
#define LED0_DRIVE_HIGH()
#define LED0_TOGGLE()

#define LED1_BIT__
#define LED1_SET_AS_INPUT()
#define LED1_SET_AS_OUTPUT()
#define LED1_DRIVE_LOW()
#define LED1_DRIVE_HIGH()
#define LED1_TOGGLE()
#endif

#endif
