#ifndef __BITS
#define __BITS

#ifdef __launch5969_v1__

#include <msp430fr5969.h>
#define TARGET_VCC_PORT__       4
#define TARGET_VCC_PIN__        2
#define RADIO_VCC_PORT__        1
#define RADIO_VCC_PIN__         2
#define T_RADIO_ENA_PORT__ 3
#define T_RADIO_ENA_PIN__  0

#define BSL_UC_ID__         __A1__
#define __USCI_BSL_VECTOR__ USCI_A1_VECTOR
#define BSL_RST_PORT__      1
#define BSL_RST_PIN__       3
#define BSL_TEST_PORT__     1
#define BSL_TEST_PIN__      4

#define RADIO_UC_ID__       __A0__
#define RADIO_CSN_PORT__    3
#define RADIO_CSN_PIN__     4
#define RADIO_GDO0_PORT__   3
#define RADIO_GDO0_PIN__    5
#define RADIO_GDO2_PORT__   3
#define RADIO_GDO2_PIN__    6

#define SNOOP_TX_UC_ID__                RADIO_UC_ID__
#define SNOOP_RX_UC_ID__                __B0__
#define __USCI_SPI_SNOOP_RX_VECTOR__    USCI_B0_VECTOR

#endif
///////////////////////////Nicole's Attempt///////////////////////////////////
#ifdef __launch5989_v1__

#include <msp430fr5989.h>
#define TARGET_VCC_PORT__       5	
#define TARGET_VCC_PIN__        3	

#define RADIO_VCC_PORT__        4	
#define RADIO_VCC_PIN__         0	

#define T_RADIO_ENA_PORT__  4		
#define T_RADIO_ENA_PIN__   1		

#define CURR_SENSE_PORT__   9		
#define CURR_SENSE_PIN__    6		
#define MCTL0_SEL_CURR_SENSE_ADC()    ADC_MCTL0_SEL_A14();  

#define VOLT_SENSE_PORT__   9		
#define VOLT_SENSE_PIN__    7		

#define BSL_UC_ID__         __A0__ 	
#define __USCI_BSL_VECTOR__ USCI_A0_VECTOR 

#define BSL_RST_PORT__      3  	
#define BSL_RST_PIN__       5	

#define BSL_TEST_PORT__     3	
#define BSL_TEST_PIN__      4	

#define RADIO_UC_ID__       __B0__  

#define RADIO_CSN_PORT__    2	
#define RADIO_CSN_PIN__     4	

#define RADIO_GDO0_PORT__   2	
#define RADIO_GDO0_PIN__    5	

#define RADIO_GDO2_PORT__   2	
#define RADIO_GDO2_PIN__    6	

#define SNOOP_TX_UC_ID__                RADIO_UC_ID__
#define SNOOP_RX_UC_ID__                __B1__ 

#define __USCI_SPI_SNOOP_RX_VECTOR__    USCI_B1_VECTOR  

#endif
///////////////////////////Nicole's Attempt///////////////////////////////////


#ifdef __launch6989_v1__

#include <msp430fr6989.h>
#define TARGET_VCC_PORT__       4
//#define TARGET_VCC_PORT__       5
#define TARGET_VCC_PIN__        3

#define RADIO_VCC_PORT__        4
#define RADIO_VCC_PIN__         0

#define T_RADIO_ENA_PORT__  4
#define T_RADIO_ENA_PIN__   1

#define CURR_SENSE_PORT__   9
#define CURR_SENSE_PIN__    6
#define MCTL0_SEL_CURR_SENSE_ADC()    ADC_MCTL0_SEL_A14();

#define VOLT_SENSE_PORT__   9
#define VOLT_SENSE_PIN__    7

#define BSL_UC_ID__         __A0__
#define __USCI_BSL_VECTOR__ USCI_A0_VECTOR

#define BSL_RST_PORT__      3
#define BSL_RST_PIN__       6
//#define BSL_RST_PIN__       5

#define BSL_TEST_PORT__     3
#define BSL_TEST_PIN__      7
//#define BSL_TEST_PIN__      4

#define RADIO_UC_ID__       __B0__

#define RADIO_CSN_PORT__    2
#define RADIO_CSN_PIN__     4

#define RADIO_GDO0_PORT__   2
#define RADIO_GDO0_PIN__    5

#define RADIO_GDO2_PORT__   2
#define RADIO_GDO2_PIN__    6

#define SNOOP_TX_UC_ID__                RADIO_UC_ID__
#define SNOOP_RX_UC_ID__                __B1__

#define __USCI_SPI_SNOOP_RX_VECTOR__    USCI_B1_VECTOR

#endif

// Pins to Bits
#define TARGET_VCC_BIT__    BV(TARGET_VCC_PIN__)
#define RADIO_VCC_BIT__     BV(RADIO_VCC_PIN__)
#define T_RADIO_ENA_BIT__   BV(T_RADIO_ENA_PIN__)
#define BSL_RST_BIT__       BV(BSL_RST_PIN__)
#define BSL_TEST_BIT__      BV(BSL_TEST_PIN__)
#define RADIO_CSN_BIT__     BV(RADIO_CSN_PIN__)
#define RADIO_GDO0_BIT__    BV(RADIO_GDO0_PIN__)
#define RADIO_GDO2_BIT__    BV(RADIO_GDO2_PIN__)
#define CURR_SENSE_BIT__    BV(CURR_SENSE_PIN__)
#define VOLT_SENSE_BIT__    BV(VOLT_SENSE_PIN__)

// Power switching definitions
#define TARGET_VCC_SET_AS_INPUT()   INFIX4(P, TARGET_VCC_PORT__, D,IR) &=~(TARGET_VCC_BIT__);
#define TARGET_VCC_SET_AS_OUTPUT()  INFIX4(P, TARGET_VCC_PORT__, D,IR) |= (TARGET_VCC_BIT__);
#define TARGET_VCC_DRIVE_LOW()      INFIX4(P, TARGET_VCC_PORT__, O,UT) &=~(TARGET_VCC_BIT__);
#define TARGET_VCC_DRIVE_HIGH()     INFIX4(P, TARGET_VCC_PORT__, O,UT) |= (TARGET_VCC_BIT__);
#define TURN_OFF_TARGET()           TARGET_VCC_SET_AS_INPUT();  TARGET_VCC_DRIVE_LOW();
#define TURN_ON_TARGET()            TARGET_VCC_SET_AS_OUTPUT(); TARGET_VCC_DRIVE_HIGH();
#define RADIO_VCC_SET_AS_INPUT()    INFIX4(P, RADIO_VCC_PORT__, D,IR) &=~(RADIO_VCC_BIT__);
#define RADIO_VCC_SET_AS_OUTPUT()   INFIX4(P, RADIO_VCC_PORT__, D,IR) |= (RADIO_VCC_BIT__);
#define RADIO_VCC_DRIVE_LOW()       INFIX4(P, RADIO_VCC_PORT__, O,UT) &=~(RADIO_VCC_BIT__);
#define RADIO_VCC_DRIVE_HIGH()      INFIX4(P, RADIO_VCC_PORT__, O,UT) |= (RADIO_VCC_BIT__);
#define TURN_OFF_RADIO()            RADIO_VCC_SET_AS_INPUT();   RADIO_VCC_DRIVE_LOW();
#define TURN_ON_RADIO()             RADIO_VCC_SET_AS_OUTPUT();  RADIO_VCC_DRIVE_HIGH();
#define T_RADIO_ENA_SET_AS_INPUT()  INFIX4(P, T_RADIO_ENA_PORT__, D,IR) &=~(T_RADIO_ENA_BIT__)
#define T_RADIO_ENA_SET_AS_OUTPUT() INFIX4(P, T_RADIO_ENA_PORT__, D,IR) |= (T_RADIO_ENA_BIT__)
#define T_RADIO_ENA_DRIVE_LOW()     INFIX4(P, T_RADIO_ENA_PORT__, O,UT) &=~(T_RADIO_ENA_BIT__)
#define T_RADIO_ENA_DRIVE_HIGH()    INFIX4(P, T_RADIO_ENA_PORT__, O,UT) |= (T_RADIO_ENA_BIT__)
#define DISABLE_TARGET_RADIO()      T_RADIO_ENA_SET_AS_INPUT();     T_RADIO_ENA_DRIVE_LOW();
#define ENABLE_TARGET_RADIO()       T_RADIO_ENA_SET_AS_OUTPUT();    T_RADIO_ENA_DRIVE_HIGH();

// Current Sense Definitions
#define CURR_SENSE_SET_AS_INPUT()     INFIX4(P, CURR_SENSE_PORT__, D,IR) &=~(CURR_SENSE_BIT__);
#define CURR_SENSE_SET_AS_OUTPUT()    INFIX4(P, CURR_SENSE_PORT__, D,IR) |= (CURR_SENSE_BIT__);
#define CURR_SENSE_DRIVE_LOW()        INFIX4(P, CURR_SENSE_PORT__, O,UT) &=~(CURR_SENSE_BIT__);
#define CURR_SENSE_DRIVE_HIGH()       INFIX4(P, CURR_SENSE_PORT__, O,UT) |= (CURR_SENSE_BIT__);
#define CURR_SENSE_SET_TO_GPIO() \
    INFIX5(P, CURR_SENSE_PORT__, S, E, L0) &=~CURR_SENSE_BIT__; \
    INFIX5(P, CURR_SENSE_PORT__, S, E, L1) &=~CURR_SENSE_BIT__;
#define CURR_SENSE_SET_TO_ADC() \
    INFIX5(P, CURR_SENSE_PORT__, S, E, L0) |= CURR_SENSE_BIT__; \
    INFIX5(P, CURR_SENSE_PORT__, S, E, L1) |= CURR_SENSE_BIT__;

// Radio port definitions
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

// BSL port definitions
#define BSL_RST_DIR__     INFIX5 (P, BSL_RST_PORT__,  D, I, R )
#define BSL_RST_OUT__     INFIX5 (P, BSL_RST_PORT__,  O, U, T )
#define BSL_RST_IN__      INFIX  (P, BSL_RST_PORT__,  IN )
#define BSL_RST_REN__     INFIX  (P, BSL_RST_PORT__,  REN )
#define BSL_RST_SEL0__    INFIX  (P, BSL_RST_PORT__,  SEL0 )
#define BSL_RST_SEL1__    INFIX  (P, BSL_RST_PORT__,  SEL1 )
#define BSL_TEST_DIR__     INFIX5 (P, BSL_TEST_PORT__,  D, I, R )
#define BSL_TEST_OUT__     INFIX5 (P, BSL_TEST_PORT__,  O, U, T )
#define BSL_TEST_IN__      INFIX  (P, BSL_TEST_PORT__,  IN )
#define BSL_TEST_REN__     INFIX  (P, BSL_TEST_PORT__,  REN )
#define BSL_TEST_SEL0__    INFIX  (P, BSL_TEST_PORT__,  SEL0 )
#define BSL_TEST_SEL1__    INFIX  (P, BSL_TEST_PORT__,  SEL1 )


// BSL password - Needs to be defined as 4 bytes
#define PW_START 0x0000ffe0

#else
#error "Two or more pins files declared"
#endif
