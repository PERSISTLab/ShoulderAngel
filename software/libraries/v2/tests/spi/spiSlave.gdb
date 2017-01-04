file spiSlave.elf
target remote localhost:2000
break main
load spiSlave.elf
c

