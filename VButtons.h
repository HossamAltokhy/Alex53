/* 
 * File:   VButtons.h
 * Author: hossa
 *
 * Created on February 3, 2025, 9:38 PM
 */

#ifndef VBUTTONS_H
#define	VBUTTONS_H
#include <avr/io.h>


#define BTN0    PD0
#define BTN0_DIR    DDRD


void init_VButtons();
char VButton_isPressed(char Button);

#endif	/* VBUTTONS_H */

