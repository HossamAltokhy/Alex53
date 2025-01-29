/* 
 * File:   DIO.h
 * Author: hossa
 *
 * Created on January 29, 2025, 8:22 PM
 */

#ifndef DIO_H
#define	DIO_H

#define PORTx_A     1
#define PORTx_B     2
#define PORTx_C     3
#define PORTx_D     4


#define OUTPUT      1
#define INPUT       0

#define HIGH        1
#define LOW         0

// Direction ?   input or output
void DIO_DIR_PORTx(char PORTx, char PORT_DIR);
void DIO_DIR_PINx(char PORTx, char PINx, char PIN_DIR);

// OUTPUT
// State ?  High or Low
void DIO_SET_PORTx(char PORTx, char PORT_DATA);
void DIO_SET_PINx(char PORTx, char PINx);
void DIO_RESET_PINx(char PORTx, char PINx);


// INPUT
// READ
char DIO_READ_PORTx(char PORTx);
char DIO_READ_PINx(char PORTx, char PINx);

#endif	/* DIO_H */

