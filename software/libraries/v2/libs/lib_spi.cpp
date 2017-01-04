#include "pins.h"
#include "lib_spi.h"

void MSP430_SPI::setup (spi_stack_t *s, const uint8_t periphrial, uint8_t mode) {

    s->mode = mode;
    if (periphrial == __A0__) {
#if (defined SPI_A0_SCLK_PIN__) 
        s->mosi_pin = SPI_A0_MOSI_PIN__;
        s->mosi_dir =  & (INFIX5(P, SPI_A0_MOSI_PORT__, D, I, R));
        s->mosi_sel0 = & (INFIX5(P, SPI_A0_MOSI_PORT__, S, E, L0));
        s->mosi_sel1 = & (INFIX5(P, SPI_A0_MOSI_PORT__, S, E, L1));
        s->mosi_ren =  & (INFIX (P, SPI_A0_MOSI_PORT__, REN));

        s->miso_pin = SPI_A0_MISO_PIN__;
        s->miso_dir =  & (INFIX5(P, SPI_A0_MISO_PORT__, D, I, R));
        s->miso_sel0 = & (INFIX5(P, SPI_A0_MISO_PORT__, S, E, L0));
        s->miso_sel1 = & (INFIX5(P, SPI_A0_MISO_PORT__, S, E, L1));
        s->miso_ren =  & (INFIX (P, SPI_A0_MISO_PORT__, REN));
        s->miso_in = (volatile unsigned char *) & (INFIX(P, SPI_A0_MISO_PORT__, IN));

        s->sclk_pin = SPI_A0_SCLK_PIN__;
        s->sclk_dir =  & (INFIX5(P, SPI_A0_SCLK_PORT__, D, I, R));
        s->sclk_sel0 = & (INFIX5(P, SPI_A0_SCLK_PORT__, S, E, L0));
        s->sclk_sel1 = & (INFIX5(P, SPI_A0_SCLK_PORT__, S, E, L1));
        s->sclk_ren =  & (INFIX (P, SPI_A0_SCLK_PORT__, REN));

        s->CTLW0 = &UCA0CTLW0;
        s->BRW   = &UCA0BRW;
        s->STATW = (volatile unsigned int *) &UCA0STATW;
        s->RXBUF = (volatile unsigned int *) &UCA0RXBUF;
        s->TXBUF = &UCA0TXBUF;
        s->IE    = &UCA0IE;
        s->IFG   = &UCA0IFG;
        s->IV    = &UCA0IV;
#endif
    } else if (periphrial == __A1__) {
#if (defined SPI_A1_SCLK_PIN__) 
        s->mosi_pin = SPI_A1_MOSI_PIN__;
        s->mosi_dir =  & (INFIX5(P, SPI_A1_MOSI_PORT__, D, I, R));
        s->mosi_sel0 = & (INFIX5(P, SPI_A1_MOSI_PORT__, S, E, L0));
        s->mosi_sel1 = & (INFIX5(P, SPI_A1_MOSI_PORT__, S, E, L1));
        s->mosi_ren =  & (INFIX (P, SPI_A1_MOSI_PORT__, REN));

        s->miso_pin = SPI_A1_MISO_PIN__;
        s->miso_dir =  & (INFIX5(P, SPI_A1_MISO_PORT__, D, I, R));
        s->miso_sel0 = & (INFIX5(P, SPI_A1_MISO_PORT__, S, E, L0));
        s->miso_sel1 = & (INFIX5(P, SPI_A1_MISO_PORT__, S, E, L1));
        s->miso_ren =  & (INFIX (P, SPI_A1_MISO_PORT__, REN));
        s->miso_in = (volatile unsigned char *) & (INFIX(P, SPI_A1_MISO_PORT__, IN));

        s->sclk_pin = SPI_A1_SCLK_PIN__;
        s->sclk_dir =  & (INFIX5(P, SPI_A1_SCLK_PORT__, D, I, R));
        s->sclk_sel0 = & (INFIX5(P, SPI_A1_SCLK_PORT__, S, E, L0));
        s->sclk_sel1 = & (INFIX5(P, SPI_A1_SCLK_PORT__, S, E, L1));
        s->sclk_ren =  & (INFIX (P, SPI_A1_SCLK_PORT__, REN));

        s->CTLW0 = &UCA1CTLW0;
        s->BRW   = &UCA1BRW;
        s->STATW = (volatile unsigned int *) &UCA1STATW;
        s->RXBUF = (volatile unsigned int *) &UCA1RXBUF;
        s->TXBUF = &UCA1TXBUF;
        s->IE    = &UCA1IE;
        s->IFG   = &UCA1IFG;
        s->IV    = &UCA1IV;
#endif
    } else if (periphrial == __B0__) {
#if (defined SPI_B0_SCLK_PIN__) 
        s->mosi_pin = SPI_B0_MOSI_PIN__;
        s->mosi_dir =  & (INFIX5(P, SPI_B0_MOSI_PORT__, D, I, R));
        s->mosi_sel0 = & (INFIX5(P, SPI_B0_MOSI_PORT__, S, E, L0));
        s->mosi_sel1 = & (INFIX5(P, SPI_B0_MOSI_PORT__, S, E, L1));
        s->mosi_ren =  & (INFIX (P, SPI_B0_MOSI_PORT__, REN));

        s->miso_pin = SPI_B0_MISO_PIN__;
        s->miso_dir =  & (INFIX5(P, SPI_B0_MISO_PORT__, D, I, R));
        s->miso_sel0 = & (INFIX5(P, SPI_B0_MISO_PORT__, S, E, L0));
        s->miso_sel1 = & (INFIX5(P, SPI_B0_MISO_PORT__, S, E, L1));
        s->miso_ren =  & (INFIX (P, SPI_B0_MISO_PORT__, REN));
        s->miso_in = (volatile unsigned char *) & (INFIX(P, SPI_B0_MISO_PORT__, IN));

        s->sclk_pin = SPI_B0_SCLK_PIN__;
        s->sclk_dir =  & (INFIX5(P, SPI_B0_SCLK_PORT__, D, I, R));
        s->sclk_sel0 = & (INFIX5(P, SPI_B0_SCLK_PORT__, S, E, L0));
        s->sclk_sel1 = & (INFIX5(P, SPI_B0_SCLK_PORT__, S, E, L1));
        s->sclk_ren =  & (INFIX (P, SPI_B0_SCLK_PORT__, REN));

        s->CTLW0 = &UCB0CTLW0;
        s->BRW   = &UCB0BRW;
        s->STATW = &UCB0STATW;
        s->RXBUF = (volatile unsigned int *) &UCB0RXBUF;
        s->TXBUF = &UCB0TXBUF;
        s->IE    = &UCB0IE;
        s->IFG   = &UCB0IFG;
        s->IV    = &UCB0IV;
#endif
    } else if (periphrial == __B1__) {
#if (defined SPI_B1_SCLK_PIN__) 
        s->mosi_pin = SPI_B1_MOSI_PIN__;
        s->mosi_dir =  & (INFIX5(P, SPI_B1_MOSI_PORT__, D, I, R));
        s->mosi_sel0 = & (INFIX5(P, SPI_B1_MOSI_PORT__, S, E, L0));
        s->mosi_sel1 = & (INFIX5(P, SPI_B1_MOSI_PORT__, S, E, L1));
        s->mosi_ren =  & (INFIX (P, SPI_B1_MOSI_PORT__, REN));

        s->miso_pin = SPI_B1_MISO_PIN__;
        s->miso_dir =  & (INFIX5(P, SPI_B1_MISO_PORT__, D, I, R));
        s->miso_sel0 = & (INFIX5(P, SPI_B1_MISO_PORT__, S, E, L0));
        s->miso_sel1 = & (INFIX5(P, SPI_B1_MISO_PORT__, S, E, L1));
        s->miso_ren =  & (INFIX (P, SPI_B1_MISO_PORT__, REN));
        s->miso_in = (volatile unsigned char *) & (INFIX(P, SPI_B1_MISO_PORT__, IN));

        s->sclk_pin = SPI_B1_SCLK_PIN__;
        s->sclk_dir =  & (INFIX5(P, SPI_B1_SCLK_PORT__, D, I, R));
        s->sclk_sel0 = & (INFIX5(P, SPI_B1_SCLK_PORT__, S, E, L0));
        s->sclk_sel1 = & (INFIX5(P, SPI_B1_SCLK_PORT__, S, E, L1));
        s->sclk_ren =  & (INFIX (P, SPI_B1_SCLK_PORT__, REN));

        s->CTLW0 = &UCB1CTLW0;
        s->BRW   = &UCB1BRW;
        s->STATW = &UCB1STATW;
        s->RXBUF = (volatile unsigned int *) &UCB1RXBUF;
        s->TXBUF = &UCB1TXBUF;
        s->IE    = &UCB1IE;
        s->IFG   = &UCB1IFG;
        s->IV    = &UCB1IV;
#endif
    }
}

void MSP430_SPI::configure_pins_for_spi (spi_stack_t *s) {
    SPI_SCLK_SEL_SPI(s);
    SPI_SI_SEL_SPI(s);
    SPI_SO_SEL_SPI(s);
}

void MSP430_SPI::configure_pins_for_gpio (spi_stack_t *s) {
    SPI_SCLK_CONFIG_AS_INPUT(s);
    SPI_SI_CONFIG_AS_INPUT(s);
    SPI_SO_CONFIG_AS_INPUT(s);
    SPI_SCLK_SEL_GPIO(s);
    SPI_SI_SEL_GPIO(s);
    SPI_SO_SEL_GPIO(s);
}


void MSP430_SPI::send_byte (spi_stack_t *s, const uint8_t data) {
    SPI_WRITE_BYTE(s, data);
    SPI_WAIT_TILL_DONE(s);
}


void MSP430_SPI::send_bytes (spi_stack_t *s, const uint8_t data[], const uint32_t bytesToSend) {
    uint32_t i;
    for (i = 0; i < bytesToSend; i++) {
        SPI_WRITE_BYTE(s, data[i]);
        SPI_WAIT_TILL_DONE(s);
    }
}


uint8_t MSP430_SPI::transfer_byte (spi_stack_t *s, uint8_t byte) {
    SPI_WRITE_BYTE(s, byte);
    SPI_WAIT_TILL_DONE(s);
    byte = SPI_READ_BYTE(s);
    return byte;
}


void MSP430_SPI::transfer_bytes (spi_stack_t *s, uint8_t *buffer, uint32_t num) {
    uint32_t i;
    for (i = 0; i < num; i++) {
        SPI_WRITE_BYTE(s, buffer[i]);
        SPI_WAIT_TILL_DONE(s);
        buffer[i] = SPI_READ_BYTE(s);
    }
}


void MSP430_SPI::read_bytes (spi_stack_t *s, uint8_t *buffer, uint32_t num) {
    uint32_t i;
    for (i = 0; i < num; i++) {
        SPI_WRITE_BYTE(s, 0);
        SPI_WAIT_TILL_DONE(s);
        buffer[i] = SPI_READ_BYTE(s);
    }
}


void MSP430_SPI::reset_rx_buffer (spi_stack_t *s) {
    s->rxSize = s->rxHead = s->rxTail = 0;
}


bool MSP430_SPI::rx_buffer_is_empty (spi_stack_t *s) {
    return !(s->rxSize);
}


uint8_t MSP430_SPI::read_byte_from_rx_buffer (spi_stack_t *s) {
    uint8_t byte = 0xFF;
    if (s->rxSize > 0) {
        (s->rxSize)--;
        byte = s->rxBuff[s->rxTail];
        (s->rxTail)++;
        if (s->rxTail == SPI_BUFF_SIZE) {
            s->rxTail = 0;
        }
    }
    return byte;
}

void MSP430_SPI::slave_isr (spi_stack_t *s) {
    if (s->rxSize < SPI_BUFF_SIZE) {
        (s->rxSize)++;
        s->rxBuff[s->rxHead] = SPI_READ_BYTE(s);
        (s->rxHead)++;
        if (s->rxHead == SPI_BUFF_SIZE) {
            s->rxHead = 0;
        }
    }
    SPI_CLEAR_RX_INTERRUPT ( s );
}
