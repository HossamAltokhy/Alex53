
#include <avr/io.h>
#include "TWI.h"

void init_TWI(char SLAVE_ADDRESS) {

    TWBR = 18;
    TWAR = (SLAVE_ADDRESS<<1);
}

char TWI_MT(char SLA_W, char data) {
    char status = 0;
    // Start Condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x08) {
        return 1;
    }
    // start condition is sent correctly.

    // Send SLA address
    TWDR = SLA_W;
    TWCR = (1 << TWINT) | (1 << TWEN);
    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x18 && status != 0x20) {
        return 2;
    }
    // SLA_W is sent correctly & ACK is received.

    // send data
    TWDR = data;
    TWCR = (1 << TWINT) | (1 << TWEN);
    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x28 && status != 0x30) {
        return 3;
    }
    // data is sent correctly & ACK is received.

    // send Stop condition
    TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);


    return 0;
}

char TWI_MR(char SLA_R) {
    char status = 0;
    // Start Condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x08) {
        return 1;
    }
    // start condition is sent correctly.

    // Send SLA address
    TWDR = SLA_R;
    TWCR = (1 << TWINT) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x40) {
        return 2;
    }
    // SLA_R is sent correctly & ACK is received.

    // Enable Acknowledge
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x50) {
        return 2;
    }

    char data = TWDR;

    // send Stop condition
    TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);

    return data;




}

char TWI_SR() {
    
    char status = 0;
    
    // Enable Acknowledge
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x60) {
        return 1;
    }
    
    // Enable Acknowledge
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0x80) {
        return 2;
    }
    
    char data = TWDR;
    
    
    return data;

}

char TWI_ST(char data){
    char status = 0;
    
    // Enable Acknowledge
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);

    // wait
    while (!(TWCR & (1 << TWINT)));

    status = (TWSR & 0xF8); // 11111000
    if (status != 0xA8) {
        return 1;
    }
    
    TWDR = data;
    TWCR = (1 << TWINT) | (1 << TWEN);
    
    // wait
    while (!(TWCR & (1 << TWINT)));
    
    status = (TWSR & 0xF8); // 11111000
    if (status != 0xB8) {
        return 1;
    }
    
    
    return 0;
}