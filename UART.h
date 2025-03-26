/* 
 * File:   UART.h
 * Author: hossa
 *
 * Created on March 24, 2025, 9:48 PM
 */

#ifndef UART_H
#define	UART_H

#define baudrate_9600   9600
#define baudrate_4800   4800
// mode Async or Sync.
// Tx, Rx Only or Both. 
// Baudrate xx bps

void init_UART(int baudrate);
void UART_RXCIE();
void UART_send(char data);
char UART_receive();
void UART_send_str(char * str);
void UART_send_num(int num);

#endif	/* UART_H */

