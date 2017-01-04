#/bin/bash -x


#DEVICE = msp430fr5728
#DEVICE = msp430fr5739

#DEVICE = msp430fr5969
DEVICE = msp430fr6989

#paths
SUPPORT_FILE_DIRECTORY = /opt/ti-mspgcc/include
MSP430_LIBRARY_DIRECTORY = ./../../libs/

# compiler options
CC      = msp430-elf-g++

CXXFLAGS = -I . -I $(SUPPORT_FILE_DIRECTORY) -I $(MSP430_LIBRARY_DIRECTORY) -mmcu=$(DEVICE) -g -O0 -mhwmult=f5series
LFLAGS = -L . -L $(SUPPORT_FILE_DIRECTORY) -L $(MSP430_LIBRARY_DIRECTORY)

# sudo mspdebug driver
DRIVER:= rf2500
ifeq ("$(DEVICE)", $(filter "$(DEVICE)", "msp430fr6989" "msp430fr5969"))
    DRIVER:= tilib
endif

OBJ = lib_spi.o lib_cc1101.o

# Compiling
all: rx1 rx2 rx12 tx1 tx2 rx1_tx2 rx12_tx3 rx3_tx12 tx_slow

%.o : $(MSP430_LIBRARY_DIRECTORY)/%.cpp $(MSP430_LIBRARY_DIRECTORY)/%.h pins.h Makefile
	$(CC) -c $(CXXFLAGS) $(LFLAGS) $< -o $@ -D __$(DEVICE)__

rx1: $(OBJ) rx1.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx1.cpp -o rx1.elf -D __$(DEVICE)__

rx2: $(OBJ) rx2.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx2.cpp -o rx2.elf -D __$(DEVICE)__

rx12: $(OBJ) rx12.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx12.cpp -o rx12.elf -D __$(DEVICE)__

rx4: $(OBJ) rx4.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx4.cpp -o rx4.elf -D __$(DEVICE)__

rx5: $(OBJ) rx5.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx5.cpp -o rx5.elf -D __$(DEVICE)__

tx1: $(OBJ) tx1.cpp pins.h Makefile
	#$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx1.cpp -o tx1.elf -D __$(DEVICE)__ --allow-fw-update
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx1.cpp -o tx1.elf -D __$(DEVICE)__

tx2: $(OBJ) tx2.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx2.cpp -o tx2.elf -D __$(DEVICE)__

tx4: $(OBJ) tx4.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx4.cpp -o tx4.elf -D __$(DEVICE)__

tx5: $(OBJ) tx5.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx5.cpp -o tx5.elf -D __$(DEVICE)__

rx1_tx2: $(OBJ) rx1_tx2.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx1_tx2.cpp -o rx1_tx2.elf -D __$(DEVICE)__

rx12_tx3: $(OBJ) rx12_tx3.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx12_tx3.cpp -o rx12_tx3.elf -D __$(DEVICE)__

rx3_tx12: $(OBJ) rx3_tx12.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) rx3_tx12.cpp -o rx3_tx12.elf -D __$(DEVICE)__

sa_packet_corruption: $(OBJ) sa_packet_corruption.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) sa_packet_corruption.cpp -o sa_packet_corruption.elf -D __$(DEVICE)__

tracker_receiver: $(OBJ) tracker_receiver.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tracker_receiver.cpp -o tracker_receiver.elf -D __$(DEVICE)__

tx_slow: $(OBJ) tx_slow.cpp pins.h Makefile
	$(CC) $(CXXFLAGS) $(LFLAGS) $(OBJ) tx_slow.cpp -o tx_slow.elf -D __$(DEVICE)__

# Upload to board
installrx1: rx1
	sudo mspdebug $(DRIVER) "prog rx1.elf"

installrx2: rx2
	sudo mspdebug $(DRIVER) "prog rx2.elf"

installrx12: rx12
	sudo mspdebug $(DRIVER) "prog rx12.elf"

installrx4: rx4
	sudo mspdebug $(DRIVER) "prog rx4.elf"

installrx5: rx5
	sudo mspdebug $(DRIVER) "prog rx5.elf"

installtx1: tx1
	sudo mspdebug $(DRIVER) "prog tx1.elf" --allow-fw-update

installtx2: tx2
	sudo mspdebug $(DRIVER) "prog tx2.elf"

installtx4: tx4
	sudo mspdebug $(DRIVER) "prog tx4.elf"

installtx5: tx5
	sudo mspdebug $(DRIVER) "prog tx5.elf"

installrx1_tx2: rx1_tx2
	sudo mspdebug $(DRIVER) "prog rx1_tx2.elf"

installrx12_tx3: rx12_tx3
	sudo mspdebug $(DRIVER) "prog rx12_tx3.elf"

installsa_packet_corruption: sa_packet_corruption
	sudo mspdebug $(DRIVER) "prog sa_packet_corruption.elf"

installtracker_receiver: tracker_receiver
	sudo mspdebug $(DRIVER) "prog tracker_receiver.elf"

installtx_slow: tx_slow
	sudo mspdebug $(DRIVER) "prog tx_slow.elf"

# GDB
gdb_rx1: rx1
	msp430-elf-gdb -x rx1.gdb

gdb_tx1: tx1
	msp430-elf-gdb -x tx1.gdb


clean: 
	rm -f *.elf *.asm *.o


