#include "DIO.h"
#include "LCD8.h"
#include <avr/io.h>
#define F_CPU 16000000UL
#include <util/delay.h>
#include <stdlib.h>



void init_LCD8(){
    // DIO
    DIO_DIR_PORTx(LCD_DIR, OUTPUT_PORT);
    DIO_DIR_PINx(LCD_EN_DIR, LCD_EN, OUTPUT);
    DIO_DIR_PINx(LCD_RS_DIR, LCD_RS, OUTPUT);
    DIO_DIR_PINx(LCD_RW_DIR, LCD_RW, OUTPUT);
    // Set on Write-only
    DIO_RESET_PINx(LCD_RW_DIR, LCD_RW);
    _delay_ms(10);
    
    // Commands
    
    LCD8_clear();
    LCD8_cmd(LCD_CMD_FUNCTION_SET);
    _delay_ms(1);
    LCD8_cmd(LCD_CMD_DIS_ON_CUR_OFF);
    _delay_ms(1);
    LCD8_cmd(LCD_CMD_ENTRY_MODE);
    _delay_ms(1);
    LCD8_cmd(LCD_CMD_RET_HOME);
    _delay_ms(1);
    
    _delay_ms(20);
    
    
    
}

void LCD8_cmd(char cmd){
    DIO_SET_PORTx(LCD_DATA, cmd);
    DIO_RESET_PINx(LCD_RS_DIR, LCD_RS);
    LCD8_EN();
}
void LCD8_write(char data){
    DIO_SET_PORTx(LCD_DATA, data);
    DIO_SET_PINx(LCD_RS_DIR, LCD_RS);
    LCD8_EN();
}

void LCD8_EN(){
    DIO_SET_PINx(LCD_EN_DIR, LCD_EN);
    _delay_ms(5);
    DIO_RESET_PINx(LCD_EN_DIR, LCD_EN);
}


void LCD8_str(char * str){
    for(int i =0; str[i]!= '\0' ;i++){
        LCD8_write(str[i]);
    }
}
    

void LCD8_clear(){
    LCD8_cmd(LCD_CMD_CLEAR);
}


void LCD8_num(int num){
    char num_str[11];
    itoa(num, num_str, 10);
    LCD8_str(num_str);
}

void LCD8_goto(int x, int y){
    
    LCD8_cmd((0x80+y) | (x<<6));
    
    
}