#include <avr/io.h>
#include "AT24C16B.h"
#define F_CPU 16000000UL
#include <util/delay.h>
#include "TWI.h"




void init_AT24C16B(){
    
    init_TWI(OWN_ADDRESS);
    
}

char MM_AT24C16B_read_Current(){
    
    
    
    return TWI_MR(AT24C16B_ADDRESS_R);
    
   
    
}

char MM_AT24C16B_read(short MM_address){
    // Start Condition
    TWI_STA_COND();
    // Send Device Address (Write mode)
    TWI_CALL_DEVICE(AT24C16B_ADDRESS_W);
    
    
    // Send Memory Location
//    TWDR = (char) (MM_address>>8);
//    TWCR = (1<<TWINT)|(1<<TWEN);
//    _delay_ms(1);
    TWDR = (char) MM_address;
    TWCR = (1<<TWINT)|(1<<TWEN);
    
    // wait
    while (!(TWCR & (1 << TWINT)));

    char status = (TWSR & 0xF8); // 11111000
    if (status != 0x28 && status != 0x30) {
        return 3;
    }
    // Send Start (Repeated Start)
    TWI_STA_COND();
    
    // Send Device Address (Read mode)
    TWI_CALL_DEVICE(AT24C16B_ADDRESS_R);
    
    // Enable ACK
    TWCR = (1<<TWINT)|(1<<TWEA)|(1<<TWEN);
    
    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x50) {
        return 2;
    }
    
    // Read Received Data
    char data = TWDR;
    
    // Stop Condition
    TWI_STO_COND();
    
    
    return data;
}

void MM_AT24C16B_write(short MM_address, char data){
    // Start Condition
    TWI_STA_COND();
    
    // Send Device Address
    TWI_CALL_DEVICE(AT24C16B_ADDRESS_W);
    
    // Send Memory Location Address 
    
//    TWDR = (char) (MM_address>>8);
//    TWCR = (1<<TWINT)|(1<<TWEN);
//    _delay_ms(1);
    TWDR = (char) MM_address;
    TWCR = (1<<TWINT)|(1<<TWEN);
    
    // wait
    while (!(TWCR & (1 << TWINT)));

    char status = (TWSR & 0xF8); // 11111000
    if (status != 0x28 && status != 0x30) {
        return 3;
    }
    
    // Send Data
    TWI_SEND_DATA(data);
    
    // Send Stop Condition
    TWI_STO_COND();
}
