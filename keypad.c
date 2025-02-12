#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>

#include "keypad.h"
#include "DIO.h"

void init_Keypad() {
    // PINs Direction
    DIO_DIR_PINx(ROWs_DIR, ROW1, OUTPUT);
    DIO_DIR_PINx(ROWs_DIR, ROW2, OUTPUT);
    DIO_DIR_PINx(ROWs_DIR, ROW3, OUTPUT);


    DIO_DIR_PINx(COLs_DIR, COL1, INPUT);
    DIO_DIR_PINx(COLs_DIR, COL2, INPUT);
    DIO_DIR_PINx(COLs_DIR, COL3, INPUT);

    _delay_ms(20);


    // initial Value

    DIO_RESET_PINx(ROWs_DIR, ROW1);
    DIO_RESET_PINx(ROWs_DIR, ROW2);
    DIO_RESET_PINx(ROWs_DIR, ROW3);

    _delay_ms(10);
}

int getKey() {

    while (1) {

        DIO_RESET_PINx(ROWs_DIR, ROW1);
        DIO_RESET_PINx(ROWs_DIR, ROW2);
        DIO_RESET_PINx(ROWs_DIR, ROW3);
        _delay_ms(10);
        char res = PIND & 0x8C;
        //0b 10001100   No key 0x8C
        //0b 00001100   COL3   0x0C
        //0b 10000100   COL2   0x84
        //0b 10001000   COL1   0x88

        switch (res) {

            case 0x8C:

                break;
            case 0x0C:
                DIO_SET_PINx(ROWs_DIR, ROW1);
                DIO_SET_PINx(ROWs_DIR, ROW2);
                _delay_ms(10);
                if (!(PIND & (1 << COL3))) {
                    DIO_RESET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_RESET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    return 9;
                } else {
                    DIO_SET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_SET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    if (!(PIND & (1 << COL3))) {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 6;
                    } else {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 3;
                    }
                }
                break;
            case 0x84:
                DIO_SET_PINx(ROWs_DIR, ROW1);
                DIO_SET_PINx(ROWs_DIR, ROW2);
                _delay_ms(10);
                if (!(PIND & (1 << COL2))) {
                    DIO_RESET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_RESET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    return 8;
                } else {
                    DIO_SET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_SET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    if (!(PIND & (1 << COL2))) {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 5;
                    } else {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 2;
                    }
                }
                break;
            case 0x88:
                DIO_SET_PINx(ROWs_DIR, ROW1);
                DIO_SET_PINx(ROWs_DIR, ROW2);
                _delay_ms(10);
                if (!(PIND & (1 << COL1))) {
                    DIO_RESET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_RESET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    return 7;
                } else {
                    DIO_SET_PINx(ROWs_DIR, ROW1);
                    DIO_RESET_PINx(ROWs_DIR, ROW2);
                    DIO_SET_PINx(ROWs_DIR, ROW3);
                    _delay_ms(10);
                    if (!(PIND & (1 << COL1))) {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 4;
                    } else {
                        DIO_RESET_PINx(ROWs_DIR, ROW1);
                        DIO_RESET_PINx(ROWs_DIR, ROW2);
                        DIO_RESET_PINx(ROWs_DIR, ROW3);
                        _delay_ms(10);
                        return 1;
                    }
                }
                break;
        }


    }





    return 0;


}
