
#include <avr/io.h>
#include "DIO.h"


// Direction ?   input or output

void DIO_DIR_PORTx(char PORTx, char PORT_DIR) {
    switch (PORTx) {
        case PORTx_A:
            DDRA = PORT_DIR;
            break;
        case PORTx_B:
            DDRB = PORT_DIR;
            break;
        case PORTx_C:
            DDRC = PORT_DIR;
            break;
        case PORTx_D:
            DDRD = PORT_DIR;
            break;
    }
}

void DIO_DIR_PINx(char PORTx, char PINx, char PIN_DIR) {
    switch (PORTx) {
        case PORTx_A:
            if (PIN_DIR) {
                DDRA |= (1 << PINx);
            } else {
                DDRA &= ~(1 << PINx);
            }

            break;
        case PORTx_B:
            if (PIN_DIR) {
                DDRB |= (1 << PINx);
            } else {
                DDRB &= ~(1 << PINx);
            }
            break;
        case PORTx_C:
            if (PIN_DIR) {
                DDRC |= (1 << PINx);
            } else {
                DDRC &= ~(1 << PINx);
            }
            break;
        case PORTx_D:
            if (PIN_DIR) {
                DDRD |= (1 << PINx);
            } else {
                DDRD &= ~(1 << PINx);
            }
            break;
    }
}

// OUTPUT
// State ?  High or Low

void DIO_SET_PORTx(char PORTx, char PORT_DATA) {
    switch (PORTx) {
        case PORTx_A:
            PORTA = PORT_DATA;
            break;
        case PORTx_B:
            PORTB = PORT_DATA;
            break;
        case PORTx_C:
            PORTC = PORT_DATA;
            break;
        case PORTx_D:
            PORTD = PORT_DATA;
            break;
    }
}

void DIO_SET_PINx(char PORTx, char PINx) {
    switch (PORTx) {
        case PORTx_A:
            PORTA |= (1 << PINx);
            break;
        case PORTx_B:
            PORTB |= (1 << PINx);
            break;
        case PORTx_C:
            PORTC |= (1 << PINx);
            break;
        case PORTx_D:
            PORTD |= (1 << PINx);
            break;
    }
}

void DIO_TOGGLE_PINx(char PORTx, char PINx) {
    switch (PORTx) {
        case PORTx_A:
            PORTA ^= (1 << PINx);
            break;
        case PORTx_B:
            PORTB ^= (1 << PINx);
            break;
        case PORTx_C:
            PORTC ^= (1 << PINx);
            break;
        case PORTx_D:
            PORTD ^= (1 << PINx);
            break;
    }
}



void DIO_RESET_PINx(char PORTx, char PINx) {
    switch (PORTx) {
        case PORTx_A:
            PORTA &= ~(1 << PINx);
            break;
        case PORTx_B:
            PORTB &= ~(1 << PINx);
            break;
        case PORTx_C:
            PORTC &= ~(1 << PINx);
            break;
        case PORTx_D:
            PORTD &= ~(1 << PINx);
            break;
    }
}


// INPUT
// READ

char DIO_READ_PORTx(char PORTx) {
    switch (PORTx) {
        case PORTx_A:
            return PINA;
        case PORTx_B:
            return PINB;
        case PORTx_C:
            return PINC;
        case PORTx_D:
            return PIND;

        default:
            return 0;

    }
}

char DIO_READ_PINx(char PORTx, char PINx) {
    switch (PORTx) {
        case PORTx_A:
            return (PINA & (1 << PINx)); //?1:0;
        case PORTx_B:
            return (PINB & (1 << PINx)); //?1:0;
        case PORTx_C:
            return (PINC & (1 << PINx)); //?1:0;
        case PORTx_D:
            return (PIND & (1 << PINx)); //?1:0;
        default:
            return 0;
    }
}