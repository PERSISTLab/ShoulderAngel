#include "pins.h"
#include "lib_cc1101.h"
#include "lib_spi.h"
#include "cc1101_registers.h"

uint8_t PaTable[8] = {0xC0 ,0xC0 ,0xC0 ,0xC0 ,0xC0 ,0xC0 ,0xC0 ,0xC0};

static const uint8_t rfPowerTable[] = {
    0xC0, // 29.1 mA    10 dBm
    0xC8, // 24.2 mA    7 dBm
    0x84, // 19.4 mA    5 dBm
    0x60, // 15.9 mA    0 dBm
    0x34, // 14.4 mA    -10 dBm
    0x1D, // 13.1 mA    -15 dBm
    0x0E, // 12.4 mA    -20 dBm
    0x12, // 11.9 mA    -30 dBm
};


// If clocking in a lot of data over spi.bus, clock speed of MCU needs to be higher
//Otherwise data will be lost
// 0-10 data rates, 0-2 only use if in high speed mode on MCU
//static const uint8_t rate_MDMCFG3[] = {
static const uint8_t rate_MDMCFG3[] = {
    0x3b, // 499.590 kBaud
    0x3b, // 249.795 kBaud
    0x83, // 153.252 kBaud
    0x83, //  76.626 kBaud // This setting works well, and any data rates below it
    0x83, //  38.313 kBaud
    0x8b, //  19.355 kBaud
    0x83, //   9.288 kBaud
    0x83, //   4.644 kBaud
    0x83, //   2.322 kBaud
    0x83, //   1.161 kBaud
    0x43  //   0.969 kBaud
};


static const uint8_t rate_MDMCFG4[] = {
    0x8e, // 499.590 kBaud
    0x8d, // 249.795 kBaud
    0x8c, // 153.252 kBaud
    0x8b, //  76.626 kBaud
    0x8a, //  38.313 kBaud
    0x89, //  19.355 kBaud
    0x88, //   9.288 kBaud
    0x87, //   4.644 kBaud
    0x86, //   2.322 kBaud
    0x85, //   1.161 kBaud
    0x85  //   0.969 kBaud
};


#define __mrfi_NUM_LOGICAL_CHANS__      25
static const uint8_t mrfiLogicalChanTable[] = // randomized version
{
    90, 105,  40,  45,  70,
    80, 100,   5,  60, 115,
    15, 125, 120,  50,  95,
    30,  75,  10,  25,  55,
    110,  65,  85,  35,  20
};


// ****************************************************************
// * FUNCTION NAME: send_wait
// ***************************************************************
void MSP430_CC1101::send_wait(cc1101_stack_t *c) {
    SPI_SO_SEL_GPIO(c->cc1101_spi);
    SPI_SO_CONFIG_AS_INPUT(c->cc1101_spi);
    CC1101_WAIT_TO_SEND(c);
    //__delay_cycles(800);
    SPI_SO_SEL_SPI(c->cc1101_spi);
}


// ****************************************************************
// *FUNCTION NAME:reset
// *FUNCTION     :CC1101 reset //details refer datasheet of CC1101/CC1100//
// *INPUT        :none
// *OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::reset(cc1101_stack_t *c) {
    CC1101_TURN_CHIP_SELECT_ON(c);
    delay(1);
    CC1101_TURN_CHIP_SELECT_OFF(c);
    delay(4);
    CC1101_TURN_CHIP_SELECT_ON(c);

    send_wait(c);
    spi.send_byte(c->cc1101_spi, CC1101_SRES);
    send_wait(c);


    CC1101_TURN_CHIP_SELECT_OFF(c);
}


// ****************************************************************
// *FUNCTION NAME:write_reg
// *FUNCTION     :CC1101 write data to register
// *INPUT        :addr: register address; value: register value
// *OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::write_reg(cc1101_stack_t *c, const uint8_t addr, const uint8_t value) {
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    spi.send_byte(c->cc1101_spi, addr);
    spi.send_byte(c->cc1101_spi, value); 
    CC1101_TURN_CHIP_SELECT_OFF(c);
}


// ****************************************************************
// *FUNCTION NAME:write_burst_reg
// *FUNCTION     :CC1101 write burst data to register
// *INPUT        :addr: register address; buffer:register value array; num:number to write
// *OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::write_burst_reg(cc1101_stack_t *c, const uint8_t addr, const uint8_t *buffer, const uint8_t num) {
    uint8_t temp;
    temp = addr | WRITE_BURST;

    CC1101_TURN_CHIP_SELECT_OFF(c);
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    spi.send_byte(c->cc1101_spi, temp);
    spi.send_bytes(c->cc1101_spi, buffer, num);
    CC1101_TURN_CHIP_SELECT_OFF(c);
}


// ****************************************************************
// *FUNCTION NAME:send_data
// *FUNCTION     :use CC1101 send data
// *INPUT        :txBuffer: data array to send; size: number of data to send, no more than packet length
// *OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::send_data(cc1101_stack_t *c, const uint8_t *txBuffer, uint8_t size) {
    write_reg(c, CC1101_TXFIFO, size); // Send size first in variable length mode(always be in var length mode)
    write_burst_reg(c, CC1101_TXFIFO, txBuffer, size); //write data to send
    strobe(c, CC1101_STX); //start send
    uint64_t i = 0;
    while(CC1101_GDO0_IS_LOW(c) && i < 1200) {
        i++;
    }
    i = 0;
    while(CC1101_GDO0_IS_HIGH(c) && i < 1200) {
        i++;
    }
    strobe(c, CC1101_SFTX);                                 //flush TXfifo
}


// ****************************************************************
// *FUNCTION NAME:strobe
// *FUNCTION     :CC1101 strobe
// *INPUT        :strobe: command; //refer define in CC1101.h//
// *OUTPUT       :status byte
// ****************************************************************
uint8_t MSP430_CC1101::strobe(cc1101_stack_t *c, const uint8_t strobe) {
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    uint8_t statusByte = spi.transfer_byte(c->cc1101_spi, strobe);
    CC1101_TURN_CHIP_SELECT_OFF(c);
    return statusByte;
}


// ****************************************************************
// *FUNCTION NAME:read_reg
// *FUNCTION     :CC1101 read data from register
// *INPUT        :addr: register address
// *OUTPUT       :register value
// ****************************************************************
uint8_t MSP430_CC1101::read_reg(cc1101_stack_t *c, const uint8_t addr) {
    uint8_t temp, value;

    temp = addr | READ_SINGLE;
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    spi.transfer_byte(c->cc1101_spi, temp);
    value = spi.transfer_byte(c->cc1101_spi, 0);
    CC1101_TURN_CHIP_SELECT_OFF(c);

    return value;
}


// ****************************************************************
// FUNCTION NAME:read_burst_reg
// FUNCTION     :CC1101 read burst data from register
// INPUT        :addr: register address; buffer:array to store register value;
//              :num: number to read
// OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::read_burst_reg(cc1101_stack_t *c, const uint8_t addr, uint8_t *buffer, const uint8_t num) {
    uint8_t temp;

    temp = addr | READ_BURST;
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    spi.transfer_byte(c->cc1101_spi, temp);
    spi.read_bytes(c->cc1101_spi, buffer, num);
    CC1101_TURN_CHIP_SELECT_OFF(c);
}


// ****************************************************************
// FUNCTION NAME:read_status
// FUNCTION     :CC1101 read status register
// INPUT        :addr: register address
// OUTPUT       :status value
// ****************************************************************
uint8_t MSP430_CC1101::read_status(cc1101_stack_t *c, uint8_t addr) {
    uint8_t value, temp;
    temp = addr | READ_BURST;
    CC1101_TURN_CHIP_SELECT_ON(c);
    send_wait(c);
    spi.transfer_byte(c->cc1101_spi, temp);
    value = spi.transfer_byte(c->cc1101_spi, 0);
    CC1101_TURN_CHIP_SELECT_OFF(c);

    return value;
}


// ****************************************************************
// FUNCTION NAME:reg_config_settings
// FUNCTION     :CC1101 register config //details refer datasheet of CC1101/CC1100//
// INPUT        :none
// OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::reg_config_settings(cc1101_stack_t *c) 
{
    write_reg(c, CC1101_FSCTRL1,  0x08);
    write_reg(c, CC1101_FSCTRL0,  0x00);
    write_reg(c, CC1101_FREQ2,    0x10);
    write_reg(c, CC1101_FREQ1,    0xA7);
    write_reg(c, CC1101_FREQ0,    0x62);
    write_reg(c, CC1101_MDMCFG4,  rate_MDMCFG4[c->dataRateNdx]); // CHANBW_E[1:0], CHANBW_M[1:0], DRATE_E[3:0], reset is B10001100, 0x56 is 1.5kBaud, 0x55 is around 0.6kBaud
    write_reg(c, CC1101_MDMCFG3,  rate_MDMCFG3[c->dataRateNdx]); // DRATE_M[7:0], reset is 0x22, 0x00 with above setting is 1.5kBaud
    write_reg(c, CC1101_MDMCFG2,  0x03);
    write_reg(c, CC1101_MDMCFG1,  0x22);
    write_reg(c, CC1101_MDMCFG0,  0xF8);
    write_reg(c, CC1101_CHANNR,   0x00);
    write_reg(c, CC1101_DEVIATN,  0x47);
    write_reg(c, CC1101_FREND1,   0xB6);
    write_reg(c, CC1101_FREND0,   0x10);
    write_reg(c, CC1101_MCSM0 ,   0x18);
    write_reg(c, CC1101_FOCCFG,   0x1D);
    write_reg(c, CC1101_BSCFG,    0x1C);
    write_reg(c, CC1101_AGCCTRL2, 0xC7);
    write_reg(c, CC1101_AGCCTRL1, 0x00);
    write_reg(c, CC1101_AGCCTRL0, 0xB2);
    write_reg(c, CC1101_FSCAL3,   0xEA);
    write_reg(c, CC1101_FSCAL2,   0x2A);
    write_reg(c, CC1101_FSCAL1,   0x00);
    write_reg(c, CC1101_FSCAL0,   0x11);
    write_reg(c, CC1101_FSTEST,   0x59);
    write_reg(c, CC1101_TEST2,    0x81);
    write_reg(c, CC1101_TEST1,    0x35);
    write_reg(c, CC1101_TEST0,    0x09);
    write_reg(c, CC1101_IOCFG2,   0x0B); 	//serial clock.synchronous to the data in synchronous serial mode
    write_reg(c, CC1101_IOCFG0,   0x06);  	//asserts when sync word has been sent/received, and de-asserts at the end of the packet 
    write_reg(c, CC1101_PKTCTRL1, 0x04);		//two status uint8_ts will be appended to the payload of the packet,including RSSI LQI and CRC OK, no address check
    write_reg(c, CC1101_PKTCTRL0, 0x05);		//whitening off;CRC Enable£»fixed length packets set by PKTLEN reg
    write_reg(c, CC1101_ADDR,     0x00);		//address used for packet filtration.
    write_reg(c, CC1101_PKTLEN,   0x3D); 	//61 uint8_ts max length
}

// ****************************************************************
// FUNCTION NAME: setup
// ****************************************************************
void MSP430_CC1101::setup(
        cc1101_stack_t *c,
        uint8_t periphrial,
        uint8_t cs_pin,
        volatile uint8_t *cs_dir,
        volatile uint8_t *cs_out,
        volatile uint8_t *cs_in,
        volatile uint8_t *cs_ren,
        volatile uint8_t *cs_sel0,
        volatile uint8_t *cs_sel1,
        uint8_t gdo0_pin,
        volatile uint8_t *gdo0_dir,
        volatile uint8_t *gdo0_out,
        volatile uint8_t *gdo0_in,
        volatile uint8_t *gdo0_ren,
        volatile uint8_t *gdo0_sel0,
        volatile uint8_t *gdo0_sel1,
        uint8_t gdo2_pin,
        volatile uint8_t *gdo2_dir,
        volatile uint8_t *gdo2_out,
        volatile uint8_t *gdo2_in,
        volatile uint8_t *gdo2_ren,
        volatile uint8_t *gdo2_sel0,
        volatile uint8_t *gdo2_sel1
        ) {

            c->cc1101_spi = & (c->__cc1101_spi__);
            spi.setup (c->cc1101_spi, periphrial, MASTER_MODE);

            c->mrfiRadioState = 0;
            c->rfPowerNdx = 0;
            c->dataRateNdx = 9;
            c->packetLength = 61;

            c->cs_pin = cs_pin;
            c->cs_dir = cs_dir;
            c->cs_out = cs_out;
            c->cs_in = cs_in;
            c->cs_ren = cs_ren;
            c->cs_sel0 = cs_sel0;
            c->cs_sel1 = cs_sel1;
            c->gdo0_pin = gdo0_pin;
            c->gdo0_dir = gdo0_dir;
            c->gdo0_out = gdo0_out;
            c->gdo0_in = gdo0_in;
            c->gdo0_ren = gdo0_ren;
            c->gdo0_sel0 = gdo0_sel0;
            c->gdo0_sel1 = gdo0_sel1;
            c->gdo2_pin = gdo2_pin;
            c->gdo2_dir = gdo2_dir;
            c->gdo2_out = gdo2_out;
            c->gdo2_in = gdo2_in;
            c->gdo2_ren = gdo2_ren;
            c->gdo2_sel0 = gdo2_sel0;
            c->gdo2_sel1 = gdo2_sel1;
        }



// ****************************************************************
// FUNCTION NAME:init
// FUNCTION     :CC1101 initialization
// INPUT        :none
// OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::init(cc1101_stack_t *c) {
    CC1101_TURN_CHIP_SELECT_OFF(c); 
    CC1101_CSN_CONFIG_AS_OUTPUT(c);
    CC1101_GDO0_CONFIG_AS_INPUT(c);
    CC1101_GDO2_CONFIG_AS_INPUT(c);
    CC1101_CSN_SEL_GPIO(c);
    CC1101_GDO0_SEL_GPIO(c);
    CC1101_GDO2_SEL_GPIO(c);

    reset(c);
    reg_config_settings(c);
    write_burst_reg(c, CC1101_PATABLE, PaTable, 8);
}


// ****************************************************************
// FUNCTION NAME:RxOn
// FUNCTION     :set CC1101 to receive state
// INPUT        :none
// OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::rx_on(cc1101_stack_t *c) {
    strobe(c, CC1101_SRX);
    c->mrfiRadioState = RADIO_STATE_RX;
}


// ****************************************************************
// FUNCTION NAME:check_receive_flag
// FUNCTION     :check receive data or not
// INPUT        :none
// OUTPUT       :flag: 0 no data; 1 receive data 
// ****************************************************************
uint8_t MSP430_CC1101::check_receive_flag(cc1101_stack_t *c) {
    if(CC1101_GDO0_IS_HIGH(c)) {
        while(CC1101_GDO0_IS_HIGH(c));
        return 1;
    } else {
        return 0;
    }
}


// ****************************************************************
// FUNCTION NAME:receive_data
// FUNCTION     :read data received from RXfifo
// INPUT        :rxBuffer: buffer to store data
// OUTPUT       :size of data received
// ****************************************************************
uint8_t MSP430_CC1101::receive_data(cc1101_stack_t *c, uint8_t *rxBuffer) {
    uint8_t size;
    uint8_t status[2];

    if(read_status (c, CC1101_RXBYTES) & BYTES_IN_RXFIFO) {
        size = read_reg(c, CC1101_RXFIFO);
        read_burst_reg(c, CC1101_RXFIFO, rxBuffer, size);
        read_burst_reg(c, CC1101_RXFIFO, status, 2);
        strobe(c, CC1101_SFRX);
        rx_on(c);
        return size;
    } else {
        strobe(c, CC1101_SFRX);
        rx_on(c);
        return 0;
    }
}




// ****************************************************************
// FUNCTION NAME:SetDataRate
// FUNCTION     :set the data rate, i.e. how fast we send data in terms of bytes(baud rate)
// INPUT        :rate_ndx: the ndx in the MDMCFG registers to set to, refer to rate_MDMCFGX arrays
// OUTPUT       :none
// ****************************************************************
void MSP430_CC1101::set_data_rate(cc1101_stack_t *c, uint8_t rate_ndx) {
    c->dataRateNdx = rate_ndx;
    rx_mode_off(c);
    write_reg(c, CC1101_MDMCFG4, rate_MDMCFG4[rate_ndx]);
    write_reg(c, CC1101_MDMCFG3, rate_MDMCFG3[rate_ndx]);
    if(c->mrfiRadioState == RADIO_STATE_RX) {
        rx_on(c);
    }
}

// Sets ALL harmonics to the same power, which could be undesirable
void MSP430_CC1101::set_tx_power(cc1101_stack_t *c, uint8_t powrset) {
    c->rfPowerNdx = powrset;
    rx_mode_off(c);
    for(uint8_t i=0;i<8;i++) {
        PaTable[i] = rfPowerTable[powrset];
    }
    write_burst_reg(c, CC1101_PATABLE,PaTable,8);		//CC1101 PATABLE config
    if(c->mrfiRadioState == RADIO_STATE_RX) {
        rx_on(c);
    }
}

// This idles but does not change here
void MSP430_CC1101::rx_mode_off(cc1101_stack_t *c) {
    strobe(c, CC1101_SIDLE);
    while(strobe(c, CC1101_SNOP) & 0xF0);
    strobe(c, CC1101_SFRX);
}

// Idle mode probably should be avoided, as 1mA draw
// Only voltage regulator to digital part and crystal oscillator running 
void MSP430_CC1101::idle(cc1101_stack_t *c) {
    if(c->mrfiRadioState == RADIO_STATE_RX) {
        rx_mode_off(c);
        c->mrfiRadioState = RADIO_STATE_IDLE;
    }
}

// Voltage regulator to digital part off, register values retained(SLEEP state). 
// All GDO pins programmed to 0x2F(HW to 0)
// Lowest power state for radio, should draw ~200nA
void MSP430_CC1101::sleep(cc1101_stack_t *c) {
    idle(c);
    delay(1);
    strobe(c, CC1101_SPWD);	
    c->mrfiRadioState = RADIO_STATE_OFF;
}

void MSP430_CC1101::wakeup(cc1101_stack_t *c) {
    // if radio is already awake, just ignore wakeup request
    if(c->mrfiRadioState != RADIO_STATE_OFF) {
        return;
    }

    // drive CSn low to initiate wakeup
    CC1101_TURN_CHIP_SELECT_ON(c);

    // wait for MISO to go high indicating the oscillator is stable
    send_wait(c);

    // wakeup is complete, drive CSn high and continue
    CC1101_TURN_CHIP_SELECT_OFF(c);

    // enter idle mode
    c->mrfiRadioState = RADIO_STATE_IDLE;
}

uint8_t MSP430_CC1101::get_state(cc1101_stack_t *c) {
    return  c->mrfiRadioState;
}

void MSP430_CC1101::set_logical_channel(cc1101_stack_t *c, uint8_t channel) {
    // logical channel is not valid?
    if(channel >= __mrfi_NUM_LOGICAL_CHANS__) return;

    // make sure radio is off before changing channels
    rx_mode_off(c);

    write_reg(c, CC1101_CHANNR, mrfiLogicalChanTable[channel]);
    // turn radio back on if it was on before channel change

    if(c->mrfiRadioState == RADIO_STATE_RX) {
        rx_on(c);
    }
}

void MSP430_CC1101::set_max_packet_length(cc1101_stack_t *c, uint8_t pkt_length) {
    c->packetLength = pkt_length;
    write_reg(c, CC1101_PKTLEN, pkt_length);
}
