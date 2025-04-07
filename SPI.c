#define F_CPU 16000000UL
#include <util/delay.h>
#include <avr/io.h>
#include "DIO.h"
#include "SPI.h"

void init_SPI(char SPI_MODE){
    // set Freq/128
    SPCR |= (1<<SPR1)|(1<<SPR0); // 16MHz/128
    // set mode MASTER / SLAVE
    SPCR |= (SPI_MODE<<MSTR);
    switch(SPI_MODE){
        case SPI_MASTER:
            DIO_DIR_PINx(PORTx_B, MOSI, OUTPUT );
            DIO_DIR_PINx(PORTx_B, SS, OUTPUT );
            DIO_DIR_PINx(PORTx_B, SCK, OUTPUT );
            
            break;
        case SPI_SLAVE:
            DIO_DIR_PINx(PORTx_B, MISO, OUTPUT );
            
            break;
    }
    _delay_ms(100);
    // Enable SPI
    SPCR |= (1<<SPE);
}
void SPI_write(char data){
    SPDR = data;
    while(!(SPSR & (1<<SPIF)));  
    //wait till flag rises.
    // To prevent Write Collision.
    
}
char SPI_read(){
    while(!(SPSR & (1<<SPIF))); 
   
    return SPDR;
}
