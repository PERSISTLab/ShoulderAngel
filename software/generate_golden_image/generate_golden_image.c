#include "elf_operations.h"
#include <assert.h>

#define RX_DATA_BLOCK_OVERHEAD 4
#define WRAPPER_OVERHEAD 5

typedef struct __attribute__((__packed__)) program_parser_tag {
    uint8_t identifier[16];
    uint32_t size;
    uint16_t numCommands;
    uint16_t *commandSizes;
    uint8_t *commandBin;
} program_parser_t;

void calc_checksum (uint8_t *data, uint16_t size, uint8_t *ptrCKH, uint8_t *ptrCKL) {
    uint16_t crc = 0xFFFF;
    while (size) {
        crc = (uint8_t) (crc >> 8) | (crc << 8);
        crc ^= (uint8_t) *data;
        crc ^= (uint8_t) (crc & 0xff) >> 4;
        crc ^= (crc << 8) << 4;
        crc ^= ((crc & 0xff) << 4) << 1;
        size--;
        data++;
    }

    *ptrCKH = (uint8_t) (crc >> 8);
    *ptrCKL = (uint8_t) (crc & 0x00FF);
}


uint8_t * construct_core_command (const char *data, const uint32_t commandSize, const uint32_t addr) {

    uint32_t i;
    uint8_t * command;

    assert (commandSize <= 256 + RX_DATA_BLOCK_OVERHEAD); // data size cannot be more that 256(data) + RX_DATA_BLOCK_OVERHEAD

    command = (uint8_t *) malloc (commandSize * sizeof (uint8_t));

    // RX_data_block_fast command
    command[0] = 0x1b;

    // Enter the address into the command
    command[1] = (uint8_t) (addr & 0xFF); // low byte
    command[2] = (uint8_t) ((addr >> 8) & 0xFF);
    command[3] = (uint8_t) ((addr >> 16) & 0xFF);

    // Copy data into the command
    for (i = 4; i < commandSize; i++) {
        command[i] = data[i - 4];
    }

    return command;
}


// Creates the BSL packet based off the core command
// Structure:
// 1. Header - 0x80
// 2. Command Size (low byte)
// 3. Command Size (high byte)
// 4. Command Data
// 5. Checksum (low byte)
// 6. Checksum (high byte)
uint8_t * command_wrapper (uint8_t *command, uint32_t commandSize) {
    uint32_t i, packetSize;
    uint8_t *packet;
    uint8_t CKL, CKH;

    packetSize = commandSize + WRAPPER_OVERHEAD;
    packet = (uint8_t *) malloc (packetSize * sizeof (uint8_t));

    // Header
    packet[0] = 0x80;

    // Command Size
    packet[1] = (uint8_t) (commandSize & 0xFF);
    packet[2] = (uint8_t) ((commandSize >> 8) & 0xFF);

    // Command Data
    for (i = 0; i < commandSize; i++) {
        packet[i + 3] = command[i];
    }

    // Checksum
    calc_checksum (command, commandSize, &CKH, &CKL);
    packet[packetSize - 2] = CKL;
    packet[packetSize - 1] = CKH;

    return packet;
}

// Print number in little indian
void printNum (FILE *fp, uint64_t num, uint8_t size) {
    while (size > 0) {
        fprintf (fp, ", 0x%02x", (uint32_t) num & 0x00000000000000FF);
        num >>= 8;
        size--;
    }
}


int main (int argc, char *argv[]) {

    elf_file **goldenImages;
    FILE *fp;
    uint32_t i, j, k, temp;
    //uint16_t print_output;
    uint32_t currProgram;
    uint32_t numPrograms;
    uint32_t programSize;
    uint32_t commandSize, packetSize;
    uint8_t isFirst;
    uint8_t *command, *packet;
    char *filenameBuff;
    program_parser_t *progs;

    // Check input arguements are correct
    if (argc == 1) {
        printf ("Need to specify input files\n");
        exit (1);
    }
    /*if (!(argc == 1 || (argc == 2 && ((strcmp (argv[1], "-v") == 0) || (strcmp (argv[1], "-c") == 0))))) {
        printf ("Usage: set_golden_image (-v)\n");
        exit (1);
    }

    if (argc == 2 && strcmp (argv[1], "-c") == 0) {
        print_output = NO;
    } else {
        print_output = YES;
    }*/

    /*if (print_output == YES) {
        printf ("Enter number of programs to load: ");
    }
    scanf ("%u", &numPrograms);*/
    numPrograms = argc - 1;
    goldenImages = (elf_file **) malloc (numPrograms * sizeof (elf_file*));
    progs = (program_parser_t *) malloc (numPrograms * sizeof (program_parser_t));

    // Open file
    fp = fopen ("goldenImage.dat", "w");

    // Write header
    fprintf (fp,
            "/********************************************\n"
            " * This file was written by set_golden_images\n"
            " ********************************************/\n");
    fprintf (fp, "// GOLDEN IMAGE FILES: \n");

    // Get each file and parse it
    for (currProgram = 0; currProgram < numPrograms; currProgram++) {
        /*if (print_output == YES) {
            printf ("Enter in program %d filename: ", currProgram + 1);
        }

        // Put filename in golden image so its easy to see what programs are loaded
        scanf ("%s", filenameBuff);*/
        filenameBuff = argv[currProgram + 1];
        fprintf (fp, "// %d - %s\n", currProgram, filenameBuff);

        // Parse the binary for the golden image
        goldenImages[currProgram] = read_elf_file (filenameBuff);

        // Print out info of the golden image if verbose
        /*if (argc == 3) {
            print_elf_file_info (filenameBuff, goldenImages[currProgram]);
        }*/

        // Copy first 16 bytes of filename into the identifier
        for (i = 0; i < 16; i++) {
            progs[currProgram].identifier[i] = (uint8_t) filenameBuff[i];
            if (filenameBuff[i] == '\0') {
                break;
            }
        }
        // Determine number of commands that will be sent for this program
        progs[currProgram].numCommands = 0;
        for (i = 0; i < goldenImages[currProgram]->eHdr.e_shnum; i++) {
            if (goldenImages[currProgram]->sHdr[i].sh_addr != 0) {
                // takes multiple commands if bigger than 256
                temp = 1 + goldenImages[currProgram]->sHdr[i].sh_size / 256;
                if (goldenImages[currProgram]->sHdr[i].sh_size % 256 == 0) {
                    temp--;
                }
                progs[currProgram].numCommands += temp;
            }
        }

        // Determine the command sizes for this program
        // + Determine total size of all the commands for this program
        programSize = 0;
        progs[currProgram].commandSizes = (uint16_t *) malloc (progs[currProgram].numCommands * sizeof (uint16_t *));
        uint16_t currCommand = 0;
        for (i = 0; i < goldenImages[currProgram]->eHdr.e_shnum; i++) {
            if (goldenImages[currProgram]->sHdr[i].sh_addr != 0) {
                temp = 1 + goldenImages[currProgram]->sHdr[i].sh_size / 256;
                if (goldenImages[currProgram]->sHdr[i].sh_size % 256 == 0) {
                    temp--;
                }
                for (j = 0; j < temp; j++) {
                    commandSize = goldenImages[currProgram]->sHdr[i].sh_size - 256 * j;
                    if (commandSize > 256) {
                        commandSize = 256;
                    }
                    commandSize += WRAPPER_OVERHEAD + RX_DATA_BLOCK_OVERHEAD;
                    progs[currProgram].commandSizes[currCommand] = commandSize;
                    currCommand++;
                    programSize += commandSize;
                }
            }
        }
        progs[currProgram].size = programSize;

        // Store each command in the struct
        uint32_t binIdx = 0;
        progs[currProgram].commandBin = (uint8_t *) malloc (programSize *sizeof(uint8_t));
        for (i = 0; i < goldenImages[currProgram]->eHdr.e_shnum; i++) {
            if (goldenImages[currProgram]->sHdr[i].sh_addr != 0) {
                temp = 1 + goldenImages[currProgram]->sHdr[i].sh_size / 256;
                if (goldenImages[currProgram]->sHdr[i].sh_size % 256 == 0) {
                    temp--;
                }
                for (j = 0; j < temp; j++) {
                    // Create the core command
                    commandSize = goldenImages[currProgram]->sHdr[i].sh_size - 256 * j;
                    if (commandSize > 256) {
                        commandSize = 256;
                    }
                    commandSize += RX_DATA_BLOCK_OVERHEAD;
                    command = construct_core_command (&(goldenImages[currProgram]->sData[i][j * 256]), commandSize, goldenImages[currProgram]->sHdr[i].sh_addr + 256 * j);

                    // Wrap the core command in the wapper to make the packet
                    packet = command_wrapper (command, commandSize);
                    packetSize = commandSize + WRAPPER_OVERHEAD;
                    // Write entire packet to the file
                    for (k = 0; k < packetSize; k++) {
                        progs[currProgram].commandBin[binIdx] = packet[k];
                        binIdx++;
                    }
                    free (command);
                    free (packet);
                }
            }
        }
    }

    // Print everything to the file
    fprintf (fp, "#define NUM_ORIG_PROGS %u\n", numPrograms);
    fprintf (fp, "#define __HIGH_FRAM__ __attribute__((section(\".upper.rodata\")))\n");
    fprintf (fp, "extern const __HIGH_FRAM__ uint8_t orig_prog_addr[] = {");

    isFirst = YES;
    // Print for each program
    for (currProgram = 0; currProgram < numPrograms; currProgram++) {
        fprintf (fp, "\n");
        // Print 16 byte Identifier
        for (i = 0; i < 16; i++) {
            if (isFirst == YES) {
                isFirst = NO;
            } else {
                fprintf (fp, ", ");
            }
            fprintf (fp, "0x%02x", progs[currProgram].identifier[i]);
        }
        // Print the number of commands
        printNum (fp, progs[currProgram].numCommands, 2);

        // Print the Total Size
        printNum (fp, progs[currProgram].size, 4);

        // Print the array of Command Sizes
        for (i = 0; i < progs[currProgram].numCommands; i++) {
            printNum (fp, progs[currProgram].commandSizes[i], 2);
        }

        // Print command binary
        for (i = 0; i < progs[currProgram].size; i++) {
            fprintf (fp, ", 0x%02x", progs[currProgram].commandBin[i]);
        }
    }
    fprintf (fp, "};\n");
    fprintf (fp, "extern const __HIGH_FRAM__ uint8_t update_prog_addr[1] = {0x00};\n");
    fclose (fp);

    return 0;
}
