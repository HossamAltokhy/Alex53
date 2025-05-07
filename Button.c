#include "Button.h"
#include "DIO.h"
#include <avr/io.h>



void init_BTNs(){
    DIO_DIR_PINx(BTN1_DIR, BTN1, INPUT);
    DIO_DIR_PINx(BTN2_DIR, BTN2, INPUT);
    DIO_DIR_PINx(BTN3_DIR, BTN3, INPUT);
    
}
int BTNs_isPressed(char BTN){
    
    if(DIO_READ_PINx(BTN1_DIR, BTN)){
        return 1;
    }
    else{
        return 0;
    }
    
}
