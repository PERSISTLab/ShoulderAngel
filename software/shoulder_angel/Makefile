#/bin/bash -x

# Version Selection
#VERSION = launch5969_v1
VERSION = launch6989_v1

# device
DEVICE = msp430fr5969
ifeq ("$(VERSION)", $(filter "$(VERSION)", "launch6989_v1"))
    DEVICE := msp430fr6989
endif

#paths
SUPPORT_FILE_DIRECTORY = /opt/ti-mspgcc/include
MSP430_LIBRARY_DIRECTORY = ./../libraries/v2/libs
RADIO_TESTS_DIRECTORY = $(MSP430_LIBRARY_DIRECTORY)/../tests/cc1101

# compiler options
CC      = msp430-elf-g++
CXXFLAGS = -I . -I $(SUPPORT_FILE_DIRECTORY) -I $(RADIO_TESTS_DIRECTORY) -I $(MSP430_LIBRARY_DIRECTORY) -mmcu=$(DEVICE) -g -O0 -mhwmult=f5series -mlarge
LFLAGS = -L . -L $(SUPPORT_FILE_DIRECTORY) -L $(RADIO_TESTS_DIRECTORY) -L $(MSP430_LIBRARY_DIRECTORY)

# mspdebug driver
DRIVER:= rf2500
ifeq ("$(DEVICE)", $(filter "$(DEVICE)", "msp430fr6989" "msp430fr5969"))
    DRIVER:= tilib
endif

# Objects
OBJ = lib_uart.o lib_spi.o lib_bsl.o lib_cc1101.o 

# Compiling
all: shoulder_angel

%.o : $(MSP430_LIBRARY_DIRECTORY)/%.cpp $(MSP430_LIBRARY_DIRECTORY)/%.h pins.h Makefile
	$(CC) -c $(CXXFLAGS) $(LFLAGS) $< -o $@ -D __$(DEVICE)__ -D __$(VERSION)__

shoulder_angel: $(OBJ) shoulder_angel.cpp shoulder_angel.h Makefile pins.h goldenImage.dat
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) shoulder_angel.cpp -o shoulder_angel.elf -D __$(DEVICE)__ -D __$(VERSION)__

install_shoulder_angel: shoulder_angel
	mspdebug tilib "prog shoulder_angel.elf" --allow-fw-update

gdb_shoulder_angel: shoulder_angel
	msp430-elf-gdb -x shoulder_angel.gdb

clean:
	rm -f *.asm *.o *.elf

