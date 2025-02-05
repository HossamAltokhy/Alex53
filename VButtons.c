#include "VButtons.h"
#include <avr/io.h>
#include "DIO.h"




void init_VButtons(){
    // Direction of Button
    // set button pin as input pin
    // DDRx
//    DDRD &= ~(1<<BTN0);
    
    DIO_DIR_PINx(PORTx_D, BTN0, INPUT);
}


char VButton_isPressed(char Button){
    if(DIO_READ_PINx(PORTx_D, Button)){
        return 1;
    }
    else{
        return 0;
    }
}
