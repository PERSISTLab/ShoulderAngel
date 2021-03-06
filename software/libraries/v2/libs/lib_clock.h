#ifndef __MSP430_CLOCK
#define __MSP430_CLOCK

#include "macros.h"

// CSCTL0
#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_SEND_PASSWORD()   CSCTL0_H = CSKEY_H;
#endif

// CSCTL1
// TODO: verify clock values
#if (defined __msp430fr5728__) || (defined __msp430fr5739__)
#define CLOCK_DCO_SET_5330KH()  CSCTL1 = DCOFSEL_0;
#define CLOCK_DCO_SET_6670KH()  CSCTL1 = DCOFSEL_1;
#define CLOCK_DCO_SET_8MH()     CSCTL1 = DCOFSEL_3;
#define CLOCK_DCO_SET_16MH()    CSCTL1 = DCORSEL | DCOFSEL_0;
#define CLOCK_DCO_SET_20MH()    CSCTL1 = DCORSEL | DCOFSEL_1;
#define CLOCK_DCO_SET_24MH()    CSCTL1 = DCORSEL | DCOFSEL_3;
#endif

#if (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_DCO_SET_1MH()     CSCTL1 = DCOFSEL_0;
#define CLOCK_DCO_SET_2670KH()  CSCTL1 = DCOFSEL_1;
#define CLOCK_DCO_SET_3330KH()  CSCTL1 = DCOFSEL_2;
#define CLOCK_DCO_SET_4MH()     CSCTL1 = DCOFSEL_3;
#define CLOCK_DCO_SET_5330KH()  CSCTL1 = DCOFSEL_4;
#define CLOCK_DCO_SET_6670KH()  CSCTL1 = DCOFSEL_5;
#define CLOCK_DCO_SET_8MH()     CSCTL1 = DCOFSEL_6;
#define CLOCK_DCO_SET_16MH()    CSCTL1 = DCORSEL | DCOFSEL_4;
#define CLOCK_DCO_SET_21MH()    CSCTL1 = DCORSEL | DCOFSEL_5;
#define CLOCK_DCO_SET_24MH()    CSCTL1 = DCORSEL | DCOFSEL_6;
#endif


// CSCTL2
#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_ACLK_SEL_CLEAR_BITS()     CSCTL2 &= ~(SELA0 | SELA1 | SELA2);
#define CLOCK_MCLK_SEL_CLEAR_BITS()     CSCTL2 &= ~(SELM0 | SELM1 | SELM2);
#define CLOCK_SMCLK_SEL_CLEAR_BITS()    CSCTL2 &= ~(SELS0 | SELS1 | SELS2);
#endif

#if (defined __msp430fr5728__) || (defined __msp430fr5739__)
#define CLOCK_MCLK_SET_TO_XT1()  CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__XT1CLK;
#define CLOCK_MCLK_SET_TO_VLO()  CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__VLOCLK;
#define CLOCK_MCLK_SET_TO_DCO()  CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__DCOCLK;
#define CLOCK_MCLK_SET_TO_XT2()  CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__XT2CLK;
#define CLOCK_SMCLK_SET_TO_XT1() CLOCK_SMCLK_SEL_CLEAR_BITS(); CSCTL2 |= SELS__XT1CLK;
#define CLOCK_SMCLK_SET_TO_VLO() CLOCK_SMCLK_SEL_CLEAR_BITS(); CSCTL2 |= SELS__VLOCLK;
#define CLOCK_SMCLK_SET_TO_DCO() CLOCK_SMCLK_SEL_CLEAR_BITS(); CSCTL2 |= SELS__DCOCLK;
#define CLOCK_SMCLK_SET_TO_XT2() CLOCK_SMCLK_SEL_CLEAR_BITS(); CSCTL2 |= SELS__XT2CLK;
#define CLOCK_ACLK_SET_TO_XT1()  CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__XT1CLK;
#define CLOCK_ACLK_SET_TO_VLO()  CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__VLOCLK;
#define CLOCK_ACLK_SET_TO_DCO()  CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__DCOCLK;
#define CLOCK_ACLK_SET_TO_XT2()  CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__XT2CLK;
#endif

#if (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_MCLK_SET_TO_LFXT()    CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__LFXTCLK;
#define CLOCK_MCLK_SET_TO_VLO()     CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__VLOCLK;
#define CLOCK_MCLK_SET_TO_LFMOD()   CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__LFMODCLK;
#define CLOCK_MCLK_SET_TO_DCO()     CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__DCOCLK;
#define CLOCK_MCLK_SET_TO_MOD()     CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__MODCLK;
#define CLOCK_MCLK_SET_TO_HFXT()    CLOCK_MCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELM__HFXTCLK;
#define CLOCK_SMCLK_SET_TO_LFXT()   CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__LFXTCLK;
#define CLOCK_SMCLK_SET_TO_VLO()    CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__VLOCLK;
#define CLOCK_SMCLK_SET_TO_LFMOD()  CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__LFMODCLK;
#define CLOCK_SMCLK_SET_TO_DCO()    CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__DCOCLK;
#define CLOCK_SMCLK_SET_TO_MOD()    CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__MODCLK;
#define CLOCK_SMCLK_SET_TO_HFXT()   CLOCK_SMCLK_SEL_CLEAR_BITS();  CSCTL2 |= SELS__HFXTCLK;
#define CLOCK_ACLK_SET_TO_LFXT()    CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__LFXTCLK;
#define CLOCK_ACLK_SET_TO_VLO()     CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__VLOCLK;
#define CLOCK_ACLK_SET_TO_LFMOD()   CLOCK_ACLK_SEL_CLEAR_BITS();  CSCTL2 |= SELA__LFMODCLK;
#endif

// CSCTL3
#if (defined __msp430fr5728__) || (defined __msp430fr5739__) || (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_ACLK_DIV_CLEAR_BITS()     CSCTL3 &= ~(DIVA0 | DIVA1 | DIVA2);
#define CLOCK_MCLK_DIV_CLEAR_BITS()     CSCTL3 &= ~(DIVM0 | DIVM1 | DIVM2);
#define CLOCK_SMCLK_DIV_CLEAR_BITS()    CSCTL3 &= ~(DIVS0 | DIVS1 | DIVS2);

#define CLOCK_ACLK_DIV_BY_1()   CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__1;
#define CLOCK_ACLK_DIV_BY_2()   CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__2;   
#define CLOCK_ACLK_DIV_BY_4()   CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__4;
#define CLOCK_ACLK_DIV_BY_8()   CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__8;
#define CLOCK_ACLK_DIV_BY_16()  CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__16;
#define CLOCK_ACLK_DIV_BY_32()  CLOCK_ACLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVA__32;
#define CLOCK_MCLK_DIV_BY_1()   CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__1;
#define CLOCK_MCLK_DIV_BY_2()   CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__2;   
#define CLOCK_MCLK_DIV_BY_4()   CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__4;
#define CLOCK_MCLK_DIV_BY_8()   CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__8;
#define CLOCK_MCLK_DIV_BY_16()  CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__16;
#define CLOCK_MCLK_DIV_BY_32()  CLOCK_MCLK_DIV_CLEAR_BITS();    CSCTL3 |= DIVM__32;
#define CLOCK_SMCLK_DIV_BY_1()  CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__1;
#define CLOCK_SMCLK_DIV_BY_2()  CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__2;   
#define CLOCK_SMCLK_DIV_BY_4()  CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__4;
#define CLOCK_SMCLK_DIV_BY_8()  CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__8;
#define CLOCK_SMCLK_DIV_BY_16() CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__16;
#define CLOCK_SMCLK_DIV_BY_32() CLOCK_SMCLK_DIV_CLEAR_BITS();   CSCTL3 |= DIVS__32;
#endif

// CSCTL4
#if (defined __msp430fr5728__) || (defined __msp430fr5739__)
#define CLOCK_XT1_DRIVE_CLEAR_BITS()    CSCTL4 &= ~(XT1DRIVE1 | XT1DRIVE0);
#define CLOCK_XT2_DRIVE_CLEAR_BITS()    CSCTL4 &= ~(XT2DRIVE1 | XT2DRIVE0);

#define CLOCK_XT2_DRIVE_0()     CLOCK_XT2_DRIVE_CLEAR_BITS();   CSCTL4 |= XT2DRIVE_0;
#define CLOCK_XT2_DRIVE_1()     CLOCK_XT2_DRIVE_CLEAR_BITS();   CSCTL4 |= XT2DRIVE_1;
#define CLOCK_XT2_DRIVE_2()     CLOCK_XT2_DRIVE_CLEAR_BITS();   CSCTL4 |= XT2DRIVE_2;
#define CLOCK_XT2_DRIVE_3()     CLOCK_XT2_DRIVE_CLEAR_BITS();   CSCTL4 |= XT2DRIVE_3;
#define CLOCK_XT2_SOURCE_EXTERNAL_CRYSTAL()     CSCTL4 &= ~XT2BYPASS;
#define CLOCK_XT2_SOURCE_EXTERNAL_CLOCK()       CSCTL4 |= XT2BYPASS;
#define CLOCK_XT2_ON()                          CSCTL4 &= ~XT2OFF;
#define CLOCK_XT2_OFF()                         CSCTL4 |= XT2OFF; 
#define CLOCK_XT1_DRIVE_0()     CLOCK_XT1_DRIVE_CLEAR_BITS();   CSCTL4 |= XT1DRIVE_0;
#define CLOCK_XT1_DRIVE_1()     CLOCK_XT1_DRIVE_CLEAR_BITS();   CSCTL4 |= XT1DRIVE_1;
#define CLOCK_XT1_DRIVE_2()     CLOCK_XT1_DRIVE_CLEAR_BITS();   CSCTL4 |= XT1DRIVE_2;
#define CLOCK_XT1_DRIVE_3()     CLOCK_XT1_DRIVE_CLEAR_BITS();   CSCTL4 |= XT1DRIVE_3;
#define CLOCK_XT1_SOURCE_EXTERNAL_CRYSTAL()     CSCTL4 &= ~XT1BYPASS;
#define CLOCK_XT1_SOURCE_EXTERNAL_CLOCK()       CSCTL4 |= XT1BYPASS;
#define CLOCK_XT1_ON()                          CSCTL4 &= ~XT1OFF;
#define CLOCK_XT1_OFF()                         CSCTL4 |= XT1OFF;
#define CLOCK_XT1_LOW_FREQ_MODE()               CSCTL4 &= ~XTS;
#define CLOCK_XT1_HIGH_FREQ_MODE()              CSCTL4 |= XTS;
#define CLOCK_SMCLK_ON()                        CSCTL4 &= ~SMCLKOFF;
#define CLOCK_SMCLK_OFF()                       CSCTL4 |= SMCLKOFF;
#endif

#if (defined __msp430fr5969__) || (defined __msp430fr6989__)
#define CLOCK_HFXT_DRIVE_CLEAR_BITS()   CSCTL4 &= ~(HFXTDRIVE1 | HFXTDRIVE0);
#define CLOCK_HFXT_FREQ_SEL_CLEAR_BITS()     CSCTL4 &= ~(HFFREQ1 | HFFEQ0);
#define CLOCK_LFXT_DRIVE_CLEAR_BITS()   CSCTL4 &= ~(LFXTDRIVE1 | LFXTDRIVE0);

#define CLOCK_HFXT_DRIVE_0()    CLOCK_HFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= HFXTDRIVE_0;
#define CLOCK_HFXT_DRIVE_1()    CLOCK_HFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= HFXTDRIVE_1;
#define CLOCK_HFXT_DRIVE_2()    CLOCK_HFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= HFXTDRIVE_2;
#define CLOCK_HFXT_DRIVE_3()    CLOCK_HFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= HFXTDRIVE_3;
#define CLOCK_HFXT_SOURCE_EXTERNAL_CRYSTAL()    CSCTL4 &= ~HFXTBYPASS;
#define CLOCK_HFXT_SOURCE_EXTERNAL_CLOCK()      CSCTL4 |= HFXTBYPASS;
#define CLOCK_HFXT_FREQ_SEL_0_TO_4MH()      CLOCK_HFXT_FREQ_SEL_CLEAR_BITS(); CSCTL4 |= HFFREQ_0;
#define CLOCK_HFXT_FREQ_SEL_4_TO_8MH()      CLOCK_HFXT_FREQ_SEL_CLEAR_BITS(); CSCTL4 |= HFFREQ_1;
#define CLOCK_HFXT_FREQ_SEL_8_TO_16MH()     CLOCK_HFXT_FREQ_SEL_CLEAR_BITS(); CSCTL4 |= HFFREQ_2;
#define CLOCK_HFXT_FREQ_SEL_16_TO_24MH()    CLOCK_HFXT_FREQ_SEL_CLEAR_BITS(); CSCTL4 |= HFFREQ_3;
#define CLOCK_HFXT_ON()     CSCTL4 &= ~HFXTOFF;
#define CLOCK_HFXT_OFF()    CSCTL4 |= HFXTOFF;
#define CLOCK_LFXT_DRIVE_0()    CLOCK_LFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= LFXTDRIVE_0;
#define CLOCK_LFXT_DRIVE_1()    CLOCK_LFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= LFXTDRIVE_1;
#define CLOCK_LFXT_DRIVE_2()    CLOCK_LFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= LFXTDRIVE_2;
#define CLOCK_LFXT_DRIVE_3()    CLOCK_LFXT_DRIVE_CLEAR_BITS();  CSCTL4 |= LFXTDRIVE_3;
#define CLOCK_LFXT_SOURCE_EXTERNAL_CRYSTAL()    CSCTL4 &= ~LFXTBYPASS;
#define CLOCK_LFXT_SOURCE_EXTERNAL_CLOCK()      CSCTL4 |= LFXTBYPASS;
#define CLOCK_VLO_ON()      CSCTL4 &= ~VLOOFF;
#define CLOCK_VLO_OFF()     CSCTL4 |= VLOOFF;
#define CLOCK_SMCLK_ON()    CSCTL4 &= ~SMCLKOFF;
#define CLOCK_SMCLK_OFF()   CSCTL4 |= SMCLKOFF;
#define CLOCK_LFXT_ON()     CSCTL4 &= ~LFXTOFF;
#define CLOCK_LFXT_OFF()    CSCTL4 |= LFXTOFF;
#endif



// CSCTL5
#if (defined __msp430fr5728__) || (defined __msp430fr5739)
#define CLOCK_XT2_FAULT_COUNTER_DISABLED()  CSCTL5 &= ~ENSTFCNT2;
#define CLOCK_XT2_FAULT_COUNTER_ENABLED()   CSCTL5 |= ENSTFCNT2;
#define CLOCK_XT1_FAULT_COUNTER_DISABLED()  CSCTL5 &= ~ENSTFCNT1;
#define CLOCK_XT1_FAULT_COUNTER_ENABLED()   CSCTL5 |= ENSTFCNT1;
// TODO XT2OFFG and XT1OFFG
#endif

#if (defined __msp430fr5969__) || (defined __msp430fr5989__)
#define CLOCK_HFXT_FAULT_COUNTER_DISABLED()     CSCTL5 &= ~ENSTFCNT2;
#define CLOCK_HFXT_FAULT_COUNTER_ENABLED()      CSCTL5 |= ENSTFCNT2;
#define CLOCK_LFXT_FAULT_COUNTER_DISABLED()      CSCTL5 &= ~ENSTFCNT1;
#define CLOCK_LFXT_FAULT_COUNTER_ENABLED()       CSCTL5 |= ENSTFCNT1;
// TODO HFXTOFFG and LFXTOFFG
#endif


// TODO: CSCTL6
//
//
//


#endif
