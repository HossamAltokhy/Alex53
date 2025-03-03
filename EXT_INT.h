/* 
 * File:   EXT_INT.h
 * Author: hossa
 *
 * Created on February 19, 2025, 9:56 PM
 */

#ifndef EXT_INT_H
#define	EXT_INT_H


#define Low_Level      0
#define Any_Change     1
#define Falling_Edge   2
#define Rising_Edge    3

#define INT2_Falling_Edge   0
#define INT2_Rising_Edge    1

void init_INT0(char INT_MODE);
void init_INT1(char INT_MODE);
void init_INT2(char INT_MODE);


#endif	/* EXT_INT_H */

