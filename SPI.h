/* 
 * File:   SPI.h
 * Author: hossa
 *
 * Created on April 7, 2025, 9:00 PM
 */

#ifndef SPI_H
#define	SPI_H

#define SPI_MASTER   1
#define SPI_SLAVE    0


#define MOSI 5
#define MISO 6
#define SS   4
#define SCK  7


void init_SPI(char SPI_MODE);
void SPI_write(char data);
char SPI_read();

#endif	/* SPI_H */

