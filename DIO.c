
#include <avr/io.h>



void setPORTA_DIR(char PORT_DIR) {
    DDRA = PORT_DIR;
}

void setPINA_DIR(char pinNum, char Pin_state) {
    // OUTPUT pin
    if (Pin_state == 1) {
        // set Bit
        DDRA |= (1 << pinNum);
    }        // INPUT pin
    else {
        // reset Bit
        DDRA &= ~(1 << pinNum);
    }
}

void setPORTA_Val(char PORT_Val) {

    PORTA = PORT_Val;

}

void setPINA_Val(char pinNum, char Pin_state) {
    // HIGH pin
    if (Pin_state == 1) {
        // set Bit
        PORTA |= (1 << pinNum);
    }        // LOW pin
    else {
        // reset Bit
        PORTA &= ~(1 << pinNum);
    }
}

void setPORTB_DIR(char PORT_DIR) {
    DDRB = PORT_DIR;
}

void setPINB_DIR(char pinNum, char Pin_state) {
    // OUTPUT pin
    if (Pin_state == 1) {
        // set Bit
        DDRB |= (1 << pinNum);
    }        // INPUT pin
    else {
        // reset Bit
        DDRB &= ~(1 << pinNum);
    }
}

void setPORTB_Val(char PORT_Val) {

    PORTB = PORT_Val;

}

void setPINB_Val(char pinNum, char Pin_state) {
    // HIGH pin
    if (Pin_state == 1) {
        // set Bit
        PORTB |= (1 << pinNum);
    }        // LOW pin
    else {
        // reset Bit
        PORTB &= ~(1 << pinNum);
    }
}