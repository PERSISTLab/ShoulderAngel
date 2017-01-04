#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <inttypes.h>

#include "elf.h"

#define YES 244
#define NO 255

typedef struct {
	Elf32_Ehdr eHdr;
	Elf32_Shdr *sHdr;
	char **sData;
} elf_file;

elf_file * read_elf_file (char filename[]);
void print_elf_file_info (char *filename, elf_file *parsedFile);

