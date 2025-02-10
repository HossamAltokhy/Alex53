/* 
 * File:   LCD8.h
 * Author: hossa
 *
 * Created on February 10, 2025, 9:33 PM
 */

#ifndef LCD8_H
#define	LCD8_H

#include "DIO.h"
#include <avr/io.h>

// Pin Mapping
#define LCD_DIR     PORTx_A
#define LCD_DATA    PORTx_A

#define LCD_EN_DIR  PORTx_B      
#define LCD_RS_DIR  PORTx_B      
#define LCD_RW_DIR  PORTx_B

#define LCD_EN      PB0
#define LCD_RS      PB2
#define LCD_RW      PB1


#define LCD_CMD_CLEAR          0x01
#define LCD_CMD_RET_HOME       0x02
#define LCD_CMD_ENTRY_MODE     0x06
#define LCD_CMD_DIS_ON_CUR_OFF 0x0C
#define LCD_CMD_FUNCTION_SET   0x38


// Functions

void init_LCD8();
void LCD8_cmd(char cmd);
void LCD8_clear();
void LCD8_EN();
void LCD8_goto(int x, int y);
void LCD8_write(char ch);
void LCD8_num(int num);
void LCD8_str(char *str);





#endif	/* LCD8_H */

