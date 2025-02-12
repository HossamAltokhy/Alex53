/* 
 * File:   LCD4.h
 * Author: hossa
 *
 * Created on February 12, 2025, 8:44 PM
 */

#ifndef LCD4_H
#define	LCD4_H


#include "DIO.h"
#include <avr/io.h>

// Pin Mapping
#define LCD_DIR     PORTx_A
#define LCD_DATA    PORTx_A
#define LCD4_DATA    PORTA

#define LCD4_D4      PA4
#define LCD4_D5      PA5
#define LCD4_D6      PA6
#define LCD4_D7      PA7

#define LCD_EN_DIR  PORTx_B      
#define LCD_RS_DIR  PORTx_B      
//#define LCD_RW_DIR  PORTx_B

#define LCD_EN      PB2
#define LCD_RS      PB1
//#define LCD_RW      PB1


#define LCD_CMD_CLEAR          0x01
#define LCD_CMD_RET_HOME       0x02
#define LCD_CMD_ENTRY_MODE     0x06
#define LCD_CMD_DIS_ON_CUR_OFF 0x0C
#define LCD_CMD_FUNCTION_SET   0x28


// Functions

void init_LCD4();
void LCD4_cmd(char cmd);
void LCD4_clear();
void LCD4_EN();
void LCD4_goto(int x, int y);
void LCD4_write(char ch);
void LCD4_num(int num);
void LCD4_str(char *str);



#endif	/* LCD4_H */

