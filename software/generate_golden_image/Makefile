
COMP = gcc
FLAGS = -g -Wall

generate_golden_image : generate_golden_image.o elf_operations.o
	$(COMP) $(FLAGS) generate_golden_image.o elf_operations.o -o generate_golden_image

generate_golden_image.o : generate_golden_image.c elf_operations.h elf.h
	$(COMP) $(FLAGS) -c generate_golden_image.c

elf_operations.o : elf_operations.c elf_operations.h elf.h
	$(COMP) $(FLAGS) -c elf_operations.c

clean :
	rm -f *.o generate_golden_image *.elf_report.txt *.dat
