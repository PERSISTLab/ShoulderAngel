#ifndef __PINS
#define __PINS

#include "macros.h"
#ifdef __msp430fr5728__

#include <msp430fr5728.h>
#define RADIO_UC_ID__ __A0__

#define RADIO_CSN_PORT__ 1
#define RADIO_CSN_BIT__ BIT1
#define RADIO_GDO0_PORT__ 1
#define RADIO_GDO0_BIT__ BIT4
#define RADIO_GDO2_PORT__ 2
#define RADIO_GDO2_BIT__ BIT6

#define ADXL_CSN_PORT__ 1
#define ADXL_CSN_BIT__ BIT0
#endif

#ifdef __msp430fr5739__
#include <msp430fr5739.h>
#define RADIO_UC_ID__       __A0__
#define RADIO_CSN_PORT__    3
#define RADIO_CSN_BIT__     BIT4
#define RADIO_GDO0_PORT__    3
#define RADIO_GDO0_BIT__     BIT5
#define RADIO_GDO2_PORT__    3
#define RADIO_GDO2_BIT__     BIT6

#endif

#ifdef __msp430fr5969__
#include <msp430fr5969.h>
#define RADIO_UC_ID__       __B0__
#define RADIO_CSN_PORT__    1
#define RADIO_CSN_BIT__     BIT3
#define RADIO_GDO0_PORT__    1
#define RADIO_GDO0_BIT__     BIT4
#define RADIO_GDO2_PORT__    1
#define RADIO_GDO2_BIT__     BIT5

/*#define RADIO_UC_ID__       __A0__
#define RADIO_CSN_PORT__    3
#define RADIO_CSN_BIT__     BIT4
#define RADIO_GDO0_PORT__    3
#define RADIO_GDO0_BIT__     BIT5
#define RADIO_GDO2_PORT__    3
#define RADIO_GDO2_BIT__     BIT6*/
#endif

#ifdef __msp430fr6989__
#include <msp430fr6989.h>
#define RADIO_UC_ID__       __B0__
#define RADIO_CSN_PORT__    2
#define RADIO_CSN_BIT__     BIT3
#define RADIO_GDO0_PORT__    2
#define RADIO_GDO0_BIT__     BIT4
#define RADIO_GDO2_PORT__    2
#define RADIO_GDO2_BIT__     BIT5

/*#define RADIO_CSN_PORT__    2
#define RADIO_CSN_BIT__     BIT4
#define RADIO_GDO0_PORT__    2
#define RADIO_GDO0_BIT__     BIT5
#define RADIO_GDO2_PORT__    2
#define RADIO_GDO2_BIT__     BIT6
*/
#endif

#define RADIO_CSN_DIR__     INFIX5 (P, RADIO_CSN_PORT__,  D, I, R )
#define RADIO_CSN_OUT__     INFIX5 (P, RADIO_CSN_PORT__,  O, U, T )
#define RADIO_CSN_IN__      INFIX  (P, RADIO_CSN_PORT__,  IN )
#define RADIO_CSN_REN__     INFIX  (P, RADIO_CSN_PORT__,  REN )
#define RADIO_CSN_SEL0__    INFIX  (P, RADIO_CSN_PORT__,  SEL0 )
#define RADIO_CSN_SEL1__    INFIX  (P, RADIO_CSN_PORT__,  SEL1 )
#define RADIO_GDO0_DIR__    INFIX5 (P, RADIO_GDO0_PORT__, D, I, R )
#define RADIO_GDO0_OUT__    INFIX5 (P, RADIO_GDO0_PORT__, O, U, T )
#define RADIO_GDO0_IN__     INFIX  (P, RADIO_GDO0_PORT__, IN )
#define RADIO_GDO0_REN__    INFIX  (P, RADIO_GDO0_PORT__, REN )
#define RADIO_GDO0_SEL0__   INFIX  (P, RADIO_GDO0_PORT__, SEL0 )
#define RADIO_GDO0_SEL1__   INFIX  (P, RADIO_GDO0_PORT__, SEL1 )
#define RADIO_GDO2_DIR__    INFIX5 (P, RADIO_GDO2_PORT__, D, I, R )
#define RADIO_GDO2_OUT__    INFIX5 (P, RADIO_GDO2_PORT__, O, U, T )
#define RADIO_GDO2_IN__     INFIX  (P, RADIO_GDO2_PORT__, IN )
#define RADIO_GDO2_REN__    INFIX  (P, RADIO_GDO2_PORT__, REN )
#define RADIO_GDO2_SEL0__   INFIX  (P, RADIO_GDO2_PORT__, SEL0 )
#define RADIO_GDO2_SEL1__   INFIX  (P, RADIO_GDO2_PORT__, SEL1 )


#else
#error "Two or more pins files declared"
#endif

