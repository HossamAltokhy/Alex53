#include <avr/io.h>
#include "DIO.h"
#include "LED.h"

void init_LEDs() {
    DIO_DIR_PINx(LED1_DIR, LED1, OUTPUT);
    DIO_DIR_PINx(LED2_DIR, LED2, OUTPUT);
    DIO_DIR_PINx(LED3_DIR, LED3, OUTPUT);
    DIO_DIR_PINx(LED4_DIR, LED4, OUTPUT);
}

void LED_ON(char LED) {
    switch (LED) {
        case LED1:
            DIO_SET_PINx(LED1_DIR, LED1);
            break;
        case LED2:
            DIO_SET_PINx(LED2_DIR, LED2);
            break;
        case LED3:
            DIO_SET_PINx(LED3_DIR, LED3);
            break;
        case LED4:
            DIO_SET_PINx(LED4_DIR, LED4);
            break;
        case ALL_LEDs:
            DIO_SET_PINx(LED1_DIR, LED1);
            DIO_SET_PINx(LED2_DIR, LED2);
            DIO_SET_PINx(LED3_DIR, LED3);
            DIO_SET_PINx(LED4_DIR, LED4);
            break;
    }
}

void LED_OFF(char LED) {
    switch (LED) {
        case LED1:
            DIO_RESET_PINx(LED1_DIR, LED1);
            break;
        case LED2:
            DIO_RESET_PINx(LED2_DIR, LED2);
            break;
        case LED3:
            DIO_RESET_PINx(LED3_DIR, LED3);
            break;
        case LED4:
            DIO_RESET_PINx(LED4_DIR, LED4);
            break;
        case ALL_LEDs:
            DIO_RESET_PINx(LED1_DIR, LED1);
            DIO_RESET_PINx(LED2_DIR, LED2);
            DIO_RESET_PINx(LED3_DIR, LED3);
            DIO_RESET_PINx(LED4_DIR, LED4);
            break;
    }
}