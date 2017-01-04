#!/bin/bash -x

#DEVICE = msp430fr5739
DEVICE = msp430fr5969
#DEVICE = msp430fr6989

#paths
SUPPORT_FILE_DIRECTORY = /opt/ti-mspgcc/include
MSP430_LIBRARY_DIRECTORY = ./../../libs

# compiler options
CC      = msp430-elf-g++

CXXFLAGS = -I . -I $(SUPPORT_FILE_DIRECTORY) -I $(MSP430_LIBRARY_DIRECTORY) -mmcu=$(DEVICE) -g -O0 -mhwmult=f5series -std=c++11
LFLAGS = -L . -L $(SUPPORT_FILE_DIRECTORY) -L $(MSP430_LIBRARY_DIRECTORY)

# mspdebug DRIVER
DRIVER:= rf2500
ifeq ("$(DEVICE)", $(filter "$(DEVICE)", "msp430fr6989" "msp430fr5969"))
    DRIVER:= tilib
endif

OBJ = lib_spi.o

# Compiling
all: spiMaster spiSlave

%.o : $(MSP430_LIBRARY_DIRECTORY)/%.cpp $(MSP430_LIBRARY_DIRECTORY)/%.h pins.h Makefile
	$(CC) -c $(CXXFLAGS) $(LFLAGS) $< -o $@ -D __$(DEVICE)__

spiMaster: $(OBJ) spiMaster.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ spiMaster.cpp -o spiMaster.elf

spiSlave: $(OBJ) spiSlave.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ spiSlave.cpp -o spiSlave.elf

spiSnoop: $(OBJ) spiSnoop.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) -D __$(DEVICE)__ spiSnoop.cpp -o spiSnoop.elf

# Upload to board
install_spiMaster: spiMaster
		sudo mspdebug $(DRIVER) "prog spiMaster.elf"

install_spiSlave: spiSlave
		sudo mspdebug $(DRIVER) "prog spiSlave.elf"

install_spiSnoop: spiSnoop
		sudo mspdebug $(DRIVER) "prog spiSnoop.elf"

# gdb
gdb_spiMaster: spiMaster
	msp430-elf-gdb -x spiMaster.gdb

gdb_spiSlave: spiSlave
	msp430-elf-gdb -x spiSlave.gdb

clean: 
	rm -f  *.asm *.o


