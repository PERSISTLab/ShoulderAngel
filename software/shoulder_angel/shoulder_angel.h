/* This file contains options for the shoulder angel program
 *
 */
/*****************************************************************************/
/* GENERAL DEFINITIONS */
/*****************************************************************************/
// MODES (enum)
#define MODE_SLEEP              0xF0
#define MODE_BLINK_LED0         0xF1
#define MODE_BLINK_LED1         0xF2
#define MODE_REPROGRAM_DEVICE   0xF3
#define MODE_STOP_SPI_SNOOPING  0xF4
#define MODE_SNOOP_RADIO_DATA   0xF5
#define MODE_START_SPI_SNOOPING 0xF6
#define MODE_RADIO_TAKEOVER     0xF7
#define MODE_RECEIVE_UPDATE     0xF8
#define MODE_READ_CURRENT       0xF9

// Timer states (enum)
#define RADIO_TAKEOVER_TIMER    0x01
#define HANDSHAKE_TIMER         0x02
#define UPDATE_RECEIVE_TIMEOUT  0x03
#define RADIO_RECEIVE_TIMEOUT   0x04
#define WAIT_FOR_SPI_BYTES_TIMER   0x05

// Wireless Reprogramming (for selective acknowledgments)
#define NUM_CHANNELS 8

// Other Defs
#define HANDSHAKE_SUCCESS TRUE
#define HANDSHAKE_FAILURE FALSE
#define ORIGINAL_PROGRAMS 0x30
#define RECEIVED_PROGRAMS 0x31


/*****************************************************************************/
/* SPECIAL PACKET DEFINITIONS AND INITIALIZATIONS*/
/*****************************************************************************/
#define RECOVERY_PACKET_SIZE        10
#define UPDATE_START_PACKET_SIZE    11
#define UPDATE_CONFIRM_PACKET_SIZE  12
#define DATA_PER_PACKET             53
#define UPDATE_DATA_IDENTIFIER      0xBA00
#define UPDATE_STATS_IDENTIFIER     0xBA01
#define UPDATE_DATA_ACK_IDENTIFIER  0xBA02

const uint8_t recoveryPacket[RECOVERY_PACKET_SIZE] = {
    0xFF, 0xEE, 0xDD, 0xCC, 0xBB,
    0xAA, 0x99, 0x88, 0x77, 0x66 };

const uint8_t updateStartPacket[UPDATE_START_PACKET_SIZE] = {
    0xEF, 0xEE, 0xED, 0xEC, 0xEB,
    0xEA, 0xE9, 0xE8, 0xE7, 0xE6,
    0xE5 };

const uint8_t updateConfirmPacket[UPDATE_CONFIRM_PACKET_SIZE] = {
    0xCF, 0xCE, 0xCD, 0xCC, 0xCB,
    0xCA, 0xC9, 0xC8, 0xC7, 0xC6,
    0xC5, 0xC4 };


/*****************************************************************************/
/* SPECIAL PACKET STRUCTS */
/*****************************************************************************/
typedef struct __attribute__((__packed__)) update_data_packet_tag {
    uint16_t identifier;
    uint8_t channel;
    uint16_t num;
    uint8_t data[DATA_PER_PACKET];
    uint16_t crc;
} update_data_packet_t;

typedef struct __attribute__((__packed__)) update_stats_tag {
    uint16_t identifier;
    uint16_t numPackets;
    uint8_t lastPacketSize;
    uint16_t crc;
} update_stats_t;

typedef struct __attribute__((__packed__)) update_data_ack_tag {
    uint16_t identifier;
    uint16_t packetNums[NUM_CHANNELS];
    uint16_t crc;
} update_data_ack_t;


/*****************************************************************************/
/* PROGRAM STUCTS */
/*****************************************************************************/
typedef struct __attribute__((__packed__)) prog_header_tag {
    uint8_t identifier[16];
    uint16_t numCommands;
    uint32_t size;
} prog_header_t;

typedef struct prog_parser_tag {
    prog_header_t *header;
    uint16_t *commandSizes;
    uint8_t *commandBin;
} prog_parser_t;


// These are what controls how long the timers are
#define TIMER_DIV_ACLK()        CLOCK_ACLK_DIV_BY_1() // 1, 2, 4, 8, 16, 24, 32 (i think)
#define CURRENT_TIMER_DIV1      ID__1      // ID__1, ID__2, ID__4, ID__8
#define CURRENT_TIMER_DIV2      TAIDEX_0   // TAIDEX_0, TAIDEX_1, ... TAIDEX_7
#define CURRENT_COUNT_INIT      0xF000	// 0x1000 = 4096 = 0.5s, 2048 = 0.25s, etc
#define RADIO_TIMER_DIV1        ID__1      // ID__1, ID__2, ID__4, ID__8
#define RADIO_TIMER_DIV2        TAIDEX_0   // TAIDEX_0, TAIDEX_1, ... TAIDEX_7
#define RADIO_COUNT_INIT        0xF000		// Set really high for the recovery packet test
#define RP_TIMER_DIV1           ID__1      // ID__1, ID__2, ID__4, ID__8
#define RP_TIMER_DIV2           TAIDEX_0   // TAIDEX_0, TAIDEX_1, ... TAIDEX_7
#define RP_COUNT_INIT           0x0400
#define HANDSHAKE_TIMER_DIV1    ID__1      // ID__1, ID__2, ID__4, ID__8
#define HANDSHAKE_TIMER_DIV2    TAIDEX_0   // TAIDEX_0, TAIDEX_1, ... TAIDEX_7
#define HANDSHAKE_COUNT_INIT    0xF000
