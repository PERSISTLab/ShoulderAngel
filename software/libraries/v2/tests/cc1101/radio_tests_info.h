#include <stdint.h>
#include "lib_general_definitions.h"

// Info for Test 1
#define LOGICAL_CHANNEL_1 1
#define DATA_RATE_1 5
#define SEND_POWER_1 5

// Info for Test 2
#define LOGICAL_CHANNEL_2 3
#define DATA_RATE_2 5
#define SEND_POWER_2 0

// Info for Test 4
#define LOGICAL_CHANNEL_4 15
#define DATA_RATE_4 7
#define SEND_POWER_4 0

// Info for Test 5
#define LOGICAL_CHANNEL_5 16
#define DATA_RATE_5 7
#define SEND_POWER_5 0

// Random Packets
#define PACKET_SIZE_1 5
#define PACKET_SIZE_2 4
#define PACKET_SIZE_3 15
const uint8_t packet1[PACKET_SIZE_1] = {0x11, 0x33, 0x55, 0x77, 0x99};
const uint8_t packet2[PACKET_SIZE_2] = {0xAA, 0xBB, 0xCC, 0xDD};
const uint8_t packet3[PACKET_SIZE_3] = {
    0x3F, 0x3E, 0x30, 0x31, 0x32,
    0x4F, 0x4E, 0x40, 0x41, 0x42,
    0x5F, 0x5E, 0x50, 0x51, 0x52 };

