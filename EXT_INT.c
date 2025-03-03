#include <avr/io.h>
#include "EXT_INT.h"

void init_INT0(char INT_MODE) {

    // Select Mode (Interrupt Sense Control)
    // Low Level, Any Change, Falling Edge or Rising Edge.
    // MCUCR
    MCUCR &= ~((1 << ISC01) | (1 << ISC00));
    MCUCR |= INT_MODE;


    // Enable Individual Interrupt
    // GICR 
    GICR |= (1 << INT0);


    // Go Enable Global Interrupt (SEI)

    // Will do in the application layer.
}

void init_INT1(char INT_MODE) {
    // Select Mode (Interrupt Sense Control)
    // Low Level, Any Change, Falling Edge or Rising Edge.
    // MCUCR
    MCUCR &= ~((1 << ISC11) | (1 << ISC10));
    MCUCR |= (INT_MODE<<2);


    // Enable Individual Interrupt
    // GICR 
    GICR |= (1 << INT1);


    // Go Enable Global Interrupt (SEI)

    // Will do in the application layer.
}


void init_INT2(char INT_MODE) {
    // Select Mode (Interrupt Sense Control)
    // Falling Edge or Rising Edge.
    // MCUCSR
    MCUCSR &= ~((1 << ISC2));
    MCUCSR |= INT_MODE<<ISC2;


    // Enable Individual Interrupt
    // GICR 
    GICR |= (1 << INT2);


    // Go Enable Global Interrupt (SEI)

    // Will do in the application layer.
}
