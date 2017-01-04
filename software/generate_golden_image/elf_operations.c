#include "elf_operations.h"

// Read the elf header info into elf header struct
void read_elf_header (FILE *in_fp, elf_file *parsedFile) {
	
	rewind (in_fp);
	fread (&(parsedFile->eHdr), sizeof (Elf32_Ehdr), 1, in_fp);

	// Check to make sure file is elf file from file header
	if (strncmp ((char *) parsedFile->eHdr.e_ident, "\177ELF", 4)) {
		printf ("Is not an ELF file\n");
		exit (3);
	}
}


// Read all the section headers
void read_section_headers (FILE *in_fp, elf_file *parsedFile) {

	uint32_t i;
	parsedFile->sHdr = (Elf32_Shdr *) malloc (parsedFile->eHdr.e_shnum * sizeof (Elf32_Shdr));
	
	// Move to start of section headers
	fseek (in_fp, parsedFile->eHdr.e_shoff, SEEK_SET);

	// Read all section headers
	for (i = 0; i < parsedFile->eHdr.e_shnum; i++) {
		fread (&(parsedFile->sHdr[i]), sizeof (Elf32_Shdr), 1, in_fp);
	}
}


// Reads each section's data and stores all the sections' data in an array
void read_section_data (FILE *in_fp, elf_file *parsedFile) {
	
	uint32_t i;
	parsedFile->sData = (char **) malloc (parsedFile->eHdr.e_shnum * sizeof (char *));

	// For every section
	for (i = 0; i < parsedFile->eHdr.e_shnum; i++) {
		parsedFile->sData[i] = (char *) malloc (parsedFile->sHdr[i].sh_size * sizeof (char));
		// Move to start of section's data
		fseek (in_fp , parsedFile->sHdr[i].sh_offset, SEEK_SET);
		// Copy data into array
		fread (parsedFile->sData[i], parsedFile->sHdr[i].sh_size, 1, in_fp);
	}
}


// Read raw elf file and store into struct
elf_file * read_elf_file (char filename[]) {

	elf_file *parsedFile = (elf_file *) malloc (sizeof (elf_file));

	// Open input file
	FILE *in_fp = fopen (filename, "r");
	if (in_fp == NULL) {
		printf ("Unable to open <%s>\n", filename);
		exit (2);
	}

	// Read elf header
	read_elf_header (in_fp, parsedFile);

	// Read Section Headers
	read_section_headers (in_fp, parsedFile);
	read_section_data (in_fp, parsedFile);

	// Close Input File
	fclose (in_fp);

	return (parsedFile);
}



// Printing operations (seperated because I wanted them seperate)
/******************************************************************************/
// (deal with it)
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
void print_elf_header_info (FILE *out_fp, elf_file *parsedFile) {

	/* Storage capacity class */
	fprintf (out_fp, "Storage class\t= ");
	switch(parsedFile->eHdr.e_ident[EI_CLASS])
	{
		case ELFCLASS32:
			fprintf (out_fp, "32-bit objects\n");
			break;

		case ELFCLASS64:
			fprintf (out_fp, "64-bit objects\n");
			break;

		default:
			fprintf (out_fp, "INVALID CLASS\n");
			break;
	}

	/* Data Format */
	fprintf (out_fp, "Data format\t= ");
	switch(parsedFile->eHdr.e_ident[EI_DATA])
	{
		case ELFDATA2LSB:
			fprintf (out_fp, "2's complement, little endian\n");
			break;

		case ELFDATA2MSB:
			fprintf (out_fp, "2's complement, big endian\n");
			break;

		default:
			fprintf (out_fp, "INVALID Format\n");
			break;
	}

	/* OS ABI */
	fprintf (out_fp, "OS ABI\t\t= ");
	switch(parsedFile->eHdr.e_ident[EI_OSABI])
	{
		case ELFOSABI_SYSV:
			fprintf (out_fp, "UNIX System V ABI\n");
			break;

		case ELFOSABI_HPUX:
			fprintf (out_fp, "HP-UX\n");
			break;

/*		case ELFOSABI_NETBSD:
			fprintf (out_fp, "NetBSD\n");
			break;

		case ELFOSABI_LINUX:
			fprintf (out_fp, "Linux\n");
			break;

		case ELFOSABI_SOLARIS:
			fprintf (out_fp, "Sun Solaris\n");
			break;

		case ELFOSABI_AIX:
			fprintf (out_fp, "IBM AIX\n");
			break;

		case ELFOSABI_IRIX:
			fprintf (out_fp, "SGI Irix\n");
			break;

		case ELFOSABI_FREEBSD:
			fprintf (out_fp, "FreeBSD\n");
			break;

		case ELFOSABI_TRU64:
			fprintf (out_fp, "Compaq TRU64 UNIX\n");
			break;

		case ELFOSABI_MODESTO:
			fprintf (out_fp, "Novell Modesto\n");
			break;

		case ELFOSABI_OPENBSD:
			fprintf (out_fp, "OpenBSD\n");
			break;

		case ELFOSABI_ARM_AEABI:
			fprintf (out_fp, "ARM EABI\n");
			break;
*/
		case ELFOSABI_ARM:
			fprintf (out_fp, "ARM\n");
			break;

		case ELFOSABI_STANDALONE:
			fprintf (out_fp, "Standalone (embedded) app\n");
			break;

		default:
			fprintf (out_fp, "Unknown (0x%x)\n", parsedFile->eHdr.e_ident[EI_OSABI]);
			break;
	}

	/* ELF filetype */
	fprintf (out_fp, "Filetype \t= ");
	switch(parsedFile->eHdr.e_type)
	{
		case ET_NONE:
			fprintf (out_fp, "N/A (0x0)\n");
			break;

		case ET_REL:
			fprintf (out_fp, "Relocatable\n");
			break;

		case ET_EXEC:
			fprintf (out_fp, "Executable\n");
			break;

		case ET_DYN:
			fprintf (out_fp, "Shared Object\n");
			break;
		default:
			fprintf (out_fp, "Unknown (0x%x)\n", parsedFile->eHdr.e_type);
			break;
	}

	/* ELF Machine-id */
	fprintf (out_fp, "Machine\t\t= ");
	switch(parsedFile->eHdr.e_machine)
	{
		case EM_NONE:
			fprintf (out_fp, "None (0x0)\n");
			break;

		case EM_386:
			fprintf (out_fp, "INTEL x86 (0x%x)\n", EM_386);
			break;

		case EM_ARM:
			fprintf (out_fp, "ARM (0x%x)\n", EM_ARM);
			break;
		default:
			fprintf (out_fp, "Machine\t= 0x%x\n", parsedFile->eHdr.e_machine);
			break;
	}

	/* Entry point */
	fprintf (out_fp, "Entry point\t= 0x%08x\n", parsedFile->eHdr.e_entry);

	/* ELF header size in bytes */
	fprintf (out_fp, "ELF header size\t= 0x%08x\n", parsedFile->eHdr.e_ehsize);

	/* Program Header */
	fprintf (out_fp, "\nProgram Header\t= ");
	fprintf (out_fp, "0x%08x\n", parsedFile->eHdr.e_phoff);		/* start */
	fprintf (out_fp, "\t\t  %d entries\n", parsedFile->eHdr.e_phnum);	/* num entry */
	fprintf (out_fp, "\t\t  %d bytes\n", parsedFile->eHdr.e_phentsize);	/* size/entry */

	/* Section header starts at */
	fprintf (out_fp, "\nSection Header\t= ");
	fprintf (out_fp, "0x%08x\n", parsedFile->eHdr.e_shoff);		/* start */
	fprintf (out_fp, "\t\t  %d entries\n", parsedFile->eHdr.e_shnum);	/* num entry */
	fprintf (out_fp, "\t\t  %d bytes\n", parsedFile->eHdr.e_shentsize);	/* size/entry */
	fprintf (out_fp, "\t\t  0x%08x (string table offset)\n", parsedFile->eHdr.e_shstrndx);

	/* File flags (Machine specific)*/
	fprintf (out_fp, "\nFile flags \t= 0x%08x\n", parsedFile->eHdr.e_flags);

	/* ELF file flags are machine specific.
	 * INTEL implements NO flags.
	 * ARM implements a few.
	 * Add support below to parse ELF file flags on ARM
	 */
	int32_t ef = parsedFile->eHdr.e_flags;
	fprintf (out_fp, "\t\t  ");

	if(ef & EF_ARM_RELEXEC)
		fprintf (out_fp, ",RELEXEC ");

	if(ef & EF_ARM_HASENTRY)
		fprintf (out_fp, ",HASENTRY ");

	if(ef & EF_ARM_INTERWORK)
		fprintf (out_fp, ",INTERWORK ");

	if(ef & EF_ARM_APCS_26)
		fprintf (out_fp, ",APCS_26 ");

	if(ef & EF_ARM_APCS_FLOAT)
		fprintf (out_fp, ",APCS_FLOAT ");

	if(ef & EF_ARM_PIC)
		fprintf (out_fp, ",PIC ");

/*	if(ef & EF_ARM_ALIGN8)
		fprintf (out_fp, ",ALIGN8 ");

	if(ef & EF_ARM_NEW_ABI)
		fprintf (out_fp, ",NEW_ABI ");

	if(ef & EF_ARM_OLD_ABI)
		fprintf (out_fp, ",OLD_ABI ");

	if(ef & EF_ARM_SOFT_FLOAT)
		fprintf (out_fp, ",SOFT_FLOAT ");

	if(ef & EF_ARM_VFP_FLOAT)
		fprintf (out_fp, ",VFP_FLOAT ");

	if(ef & EF_ARM_MAVERICK_FLOAT)
		fprintf (out_fp, ",MAVERICK_FLOAT ");
*/
	fprintf (out_fp, "\n");

	/* MSB of flags conatins ARM EABI version */
	//fprintf (out_fp, "ARM EABI\t= Version %d\n", (ef & EF_ARM_EABIMASK)>>24);

	//fprintf (out_fp, "\n");	/* End of ELF header */

}


void print_section_header_info (FILE *out_fp, elf_file *parsedFile) {
	
	char *stringTable = parsedFile->sData[parsedFile->eHdr.e_shstrndx];

	fprintf (out_fp, "========================================");
	fprintf (out_fp, "========================================\n");
	fprintf (out_fp, " idx offset     load-addr  size       algn"
		 " flags      type       section\n");
	fprintf (out_fp, "========================================");
	fprintf (out_fp, "========================================\n");

	uint32_t i, j;
	for(i=0; i<parsedFile->eHdr.e_shnum; i++) {
		fprintf (out_fp, " %03d ", i);
		fprintf (out_fp, "0x%08x ", parsedFile->sHdr[i].sh_offset);
		fprintf (out_fp, "0x%08x ", parsedFile->sHdr[i].sh_addr);
		fprintf (out_fp, "0x%08x ", parsedFile->sHdr[i].sh_size);
		fprintf (out_fp, "%4d ", parsedFile->sHdr[i].sh_addralign);
		fprintf (out_fp, "0x%08x ", parsedFile->sHdr[i].sh_flags);
		fprintf (out_fp, "0x%08x ", parsedFile->sHdr[i].sh_type);
		fprintf (out_fp, "%s\t", (stringTable + parsedFile->sHdr[i].sh_name));
		fprintf (out_fp, "\n");
		
		if (parsedFile->sHdr[i].sh_addr != 0x0000) {
			fprintf (out_fp, "section data = \n0x");
			for (j = 0; j < parsedFile->sHdr[i].sh_size; j++) {
        		fprintf (out_fp, " %02x", parsedFile->sData[i][j] & 0xff);
			}
    		fputc('\n', out_fp);
		}
    }
	fprintf (out_fp, "========================================");
	fprintf (out_fp, "========================================\n");
	fprintf (out_fp, "\n");	/* end of section header table */
}


void print_elf_file_info (char filename[], elf_file *parsedFile) {

	char *output_name;
	FILE *out_fp;

	output_name = (char *) malloc (200 * sizeof (char));
	sprintf (output_name, "%s_report.txt", filename);
	out_fp = fopen (output_name, "w");
	print_elf_header_info (out_fp, parsedFile);
	print_section_header_info (out_fp, parsedFile);
	fclose (out_fp);
	free (output_name);
}
