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
all: clock_8MHz clock_16MHz clock_24MHz

%.o : $(MSP430_LIBRARY_DIRECTORY)/%.cpp $(MSP430_LIBRARY_DIRECTORY)/%.h pins.h Makefile
	$(CC) -c $(CXXFLAGS) $(LFLAGS) $< -o $@ -D __$(DEVICE)__

clock_8MHz: $(OBJ) clock_8MHz.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ clock_8MHz.cpp -o clock_8MHz.elf

clock_16MHz: $(OBJ) clock_16MHz.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ clock_16MHz.cpp -o clock_16MHz.elf

clock_24MHz: $(OBJ) clock_24MHz.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ clock_24MHz.cpp -o clock_24MHz.elf

# Upload to board
install_clock_8MHz: clock_8MHz
		sudo mspdebug $(DRIVER) "prog clock_8MHz.elf"

install_clock_16MHz: clock_16MHz
		sudo mspdebug $(DRIVER) "prog clock_16MHz.elf"

install_clock_24MHz: clock_24MHz
		sudo mspdebug $(DRIVER) "prog clock_24MHz.elf"


clean: 
	rm -f  *.asm *.o *.elf


