#define F_CPU 16000000UL
#include "25AA020A.h"
#include <avr/io.h>
#include "DIO.h"
#include <util/delay.h>
#include "SPI.h"

void init_MEM_25AA020(){
    // Freq = 16MHz/128    <<< 10MHz
    init_SPI(SPI_MASTER);
    _delay_ms(200);
    MEM_25AA020_CS_disable();
    _delay_ms(50);
    
}
void MEM_25AA020_write(char address, char data){
    
    MEM_25AA020_CS_enable();
    // send instruction
    SPI_write(WRITE_INSTUCTION);
    // send address
    SPI_write(address);
    // send data
    SPI_write(data);
    
    MEM_25AA020_CS_disable();
    
    _delay_ms(5);
}

char MEM_25AA020_read(char address){
    
    MEM_25AA020_CS_enable();
    // send instruction
    SPI_write(READ_INSTUCTION);
    // send address
    SPI_write(address);
    // send data
    SPI_write(0x00);
    
    char data = SPDR;
    MEM_25AA020_CS_disable();
    
    return data;
    
}

void MEM_25AA020_WREN(){
    MEM_25AA020_CS_enable();
    SPI_write(WREN_INSTUCTION);
    MEM_25AA020_CS_disable();
}
void MEM_25AA020_CS_enable(){
    DIO_RESET_PINx(PORTx_B, SS);
    _delay_us(1);
}
void MEM_25AA020_CS_disable(){
    DIO_SET_PINx(PORTx_B, SS);
    _delay_us(1);
}
