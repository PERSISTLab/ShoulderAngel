SUPPORT_FILE_DIRECTORY = /opt/ti-mspgcc/include
MSP430_LIBRARY_DIRECTORY = ./../../../../LabResources/tools/msp430_libraries/v2/libs

#DEVICE	= msp430fr5739
#DEVICE	= msp430fr5969
DEVICE	= msp430fr6989

CC      = msp430-elf-g++

CXXFLAGS = -I . -I $(SUPPORT_FILE_DIRECTORY) -I $(MSP430_LIBRARY_DIRECTORY) -mmcu=$(DEVICE) -g -O0 -mhwmult=none
LFLAGS = -L . -L $(SUPPORT_FILE_DIRECTORY) -L $(MSP430_LIBRARY_DIRECTORY)

all: blink1 blink2 blink3

blink1: blink1.cpp Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) blink1.cpp -o blink1.elf -D __$(DEVICE)__

blink2: blink2.cpp Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) blink2.cpp -o blink2.elf -D __$(DEVICE)__

blink3: blink3.cpp Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) blink3.cpp -o blink3.elf -D __$(DEVICE)__


# mspdebug driver
DRIVER:= rf2500
ifeq ("$(DEVICE)", $(filter "$(DEVICE)", "msp430fr6989" "msp430fr5969"))
    DRIVER:= tilib
endif

installblink1: blink1
	mspdebug $(DRIVER) "prog blink1.elf"

installblink2: blink2
	mspdebug $(DRIVER) "prog blink2.elf"

installblink3: blink3
	mspdebug $(DRIVER) "prog blink3.elf"

clean: 
	rm -f *.elf *.asm *.o

