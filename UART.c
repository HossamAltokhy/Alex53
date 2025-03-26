#define F_CPU 16000000UL

#include <util/delay.h>
#include <avr/io.h>
#include "UART.h"
#include "stdlib.h"



void init_UART(int baudrate){
    
    // Baudrate  >> 9600 bps
//    UBRR = 103; //F_CPU/16.0/baudrate -1;
    short UBRR = F_CPU/16.0/baudrate -1;
    UBRRL = (char) UBRR;
    UBRRH = (char) (UBRR>>8);
    
    // Enable Both Tx&Rx.
    UCSRB |= (1<<RXEN)|(1<<TXEN);
//    UCSRC = (1<<URSEL)|(1<<UMSEL);
}

void UART_RXCIE(){
    
    UCSRB |= (1<<RXCIE);
    
}
void UART_send(char data){
    
    // wait till UDR is empty!!
    while(!(UCSRA & (1<<UDRE)));
    
    UDR = data;
}

void UART_send_str(char * str)
{
    for(int i = 0 ;str[i]!= '\0' ; i++){
        UART_send(str[i]);
    }
}

void UART_send_num(int num){

    char str[11];
    itoa(num, str , 10);
    UART_send_str(str);
}
char UART_receive(){
    // wait till data is received
    while(!(UCSRA & (1<<RXC)));
    return UDR;
}

