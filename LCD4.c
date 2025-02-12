#include "DIO.h"
#include "LCD4.h"
#include <avr/io.h>
#define F_CPU 16000000UL
#include <util/delay.h>
#include <stdlib.h>



void init_LCD4(){
    // DIO
    DIO_DIR_PINx(LCD_DIR, LCD4_D4,OUTPUT);
    DIO_DIR_PINx(LCD_DIR, LCD4_D5,OUTPUT);
    DIO_DIR_PINx(LCD_DIR, LCD4_D6,OUTPUT);
    DIO_DIR_PINx(LCD_DIR, LCD4_D7,OUTPUT);
    
    DIO_DIR_PINx(LCD_EN_DIR, LCD_EN, OUTPUT);
    DIO_DIR_PINx(LCD_RS_DIR, LCD_RS, OUTPUT);
//    DIO_DIR_PINx(LCD_RW_DIR, LCD_RW, OUTPUT);
    // Set on Write-only
//    DIO_RESET_PINx(LCD_RW_DIR, LCD_RW);
    _delay_ms(10);
    
    // Commands
    
    //LCD4_clear();
    LCD4_cmd(LCD_CMD_RET_HOME);
    _delay_ms(1);
    LCD4_cmd(LCD_CMD_FUNCTION_SET);
    _delay_ms(1);
    LCD4_cmd(LCD_CMD_DIS_ON_CUR_OFF);
    _delay_ms(1);
    LCD4_cmd(LCD_CMD_ENTRY_MODE);
    _delay_ms(1);
    
    
    _delay_ms(20);
    
    
    
}

void LCD4_cmd(char cmd){
    DIO_RESET_PINx(LCD_RS_DIR, LCD_RS);
    
    LCD4_DATA = (cmd & 0xF0)| (LCD4_DATA & 0x0F); 
    LCD4_EN();
    LCD4_DATA = (cmd<<4)| (LCD4_DATA & 0x0F);
    LCD4_EN();
}
void LCD4_write(char data){
    DIO_SET_PINx(LCD_RS_DIR, LCD_RS);
    LCD4_DATA = (data & 0xF0)| (LCD4_DATA & 0x0F); 
    LCD4_EN();
    LCD4_DATA = (data<<4)| (LCD4_DATA & 0x0F);
    LCD4_EN();
}

void LCD4_EN(){
    DIO_SET_PINx(LCD_EN_DIR, LCD_EN);
    _delay_ms(5);
    DIO_RESET_PINx(LCD_EN_DIR, LCD_EN);
}


void LCD4_str(char * str){
    for(int i =0; str[i]!= '\0' ;i++){
        LCD4_write(str[i]);
    }
}
    

void LCD4_clear(){
    LCD4_cmd(LCD_CMD_CLEAR);
}


void LCD4_num(int num){
    char num_str[11];
    itoa(num, num_str, 10);
    LCD4_str(num_str);
}

void LCD4_goto(int x, int y){
    
    LCD4_cmd((0x80+y) | (x<<6));
    
    
}
