/* 
 * File:   DIO.h
 * Author: hossa
 *
 * Created on January 29, 2025, 8:22 PM
 */

#ifndef DIO_H
#define	DIO_H



#define PinOut   1
#define PinIn    0

#define ON   1
#define OFF  0

void setPORTA_DIR(char PORT_DIR);
void setPINA_DIR(char pinNum, char Pin_state);


void setPORTA_Val(char PORT_Val);
void setPINA_Val(char pinNum, char Pin_state);

void setPORTB_DIR(char PORT_DIR);
void setPINB_DIR(char pinNum, char Pin_state);


void setPORTB_Val(char PORT_Val);
void setPINB_Val(char pinNum, char Pin_state);


#endif	/* DIO_H */

