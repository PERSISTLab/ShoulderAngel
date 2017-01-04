#!/bin/bash -x

#DEVICE = msp430fr5739
#DEVICE = msp430fr5969
DEVICE = msp430fr6989

#paths
SUPPORT_FILE_DIRECTORY = /opt/ti-mspgcc/include
MSP430_LIBRARY_DIRECTORY = ./../../libs

# compiler options
CC      = msp430-elf-g++

CXXFLAGS = -I . -I $(SUPPORT_FILE_DIRECTORY) -I $(MSP430_LIBRARY_DIRECTORY) -mmcu=$(DEVICE) -g -O0 -mhwmult=f5series -std=c++11
LFLAGS = -L . -L $(SUPPORT_FILE_DIRECTORY) -L $(MSP430_LIBRARY_DIRECTORY)

# mspdebug driver
DRIVER:= rf2500
ifeq ("$(DEVICE)", $(filter "$(DEVICE)", "msp430fr6989" "msp430fr5969"))
    DRIVER:= tilib
endif

OBJ = lib_uart.o

# Compiling
all: uart1 uart2

%.o : $(MSP430_LIBRARY_DIRECTORY)/%.cpp $(MSP430_LIBRARY_DIRECTORY)/%.h pins.h Makefile
	$(CC) -c $(CXXFLAGS) $(LFLAGS) $< -o $@ -D __$(DEVICE)__

uart1: $(OBJ) uart1.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ uart1.cpp -o uart1.elf

uart2: $(OBJ) uart2.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ uart2.cpp -o uart2.elf

# Upload to board
install_uart1: uart1
		sudo mspdebug $(DRIVER) "prog uart1.elf"

install_uart2: uart2
		sudo mspdebug $(DRIVER) "prog uart2.elf"
# gdb
gdb_uart1: uart1
	msp430-elf-gdb -x uart1.gdb

gdb_uart2: uart2
	msp430-elf-gdb -x uart2.gdb

clean: 
	rm -f  *.asm *.o

