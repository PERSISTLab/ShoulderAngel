#ifndef __PINS
#define __PINS

#ifdef __msp430fr5739__
#include <msp430fr5739.h>
#define SPI_UC_ID__ __B0__
#endif

#ifdef __msp430fr5969__
#include <msp430fr5969.h>
#define SPI_UC_ID__ __A0__
#define __USCI_SPI_VECTOR__ USCI_A0_VECTOR
#define SNOOP_TX_UC_ID__    __A0__
#define SNOOP_RX_UC_ID__    __B0__
#define __USCI_SPI_RX_VECTOR__  USCI_B0_VECTOR
#endif

#ifdef __msp430fr6989__
#include <msp430fr6989.h>
#define SPI_UC_ID__ __A0__
#define __USCI_SPI_VECTOR__ USCI_A0_VECTOR
#endif



#else
#error "Two or more pins files declared"
#endif
