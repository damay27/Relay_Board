/*
 * uart_ctrl.h
 *
 * Created: 1/4/2021 8:27:53 PM
 *  Author: damay
 */ 


#ifndef UART_CTRL_H_
#define UART_CTRL_H_

#include <stdint.h>

//All of these are set to ascii values so that the
//board can be controlled through a terminal emulator
//such as PuTTY.
#define ACK 0x41 //A
#define NACK 0x4E //N
#define RELAY_ON 0x4F //O
#define RELAY_OFF 0x46 //F
#define WATCH_DOG_ENABLE 0x57 //W
#define WATCH_DOG_TIMEOUT 0x54 //T
#define WATCH_DOG_DISABLE 0x44 //D
#define WATCH_DOG_UPDATE 0x55 //U
#define LOAD_DETECT 0x4C //L

/*
	Configure the UART hardware on the chip.
	
	Parameters:
		None
		
	Return:
		None
*/
void configure_uart();

/*
	Send one byte of data over UART.
	
	Parameters:
		data	: Byte of data to be sent.
		
	Return:
		Returns 0 if the byte could not be sent. Returns
		1 if the byte could be sent.
*/
int uart_send( uint8_t data );

/*
	Receive one byte of data over UART.
	
	Parameters:
		data	: Pointer to where the received data should be stored.
		
	Return:
		Returns 0 if the byte could not be read. Returns
		1 if the byte could be read.
*/
int uart_receive( uint8_t *data );

/*
	Send one byte of data over UART and blocks until the byte can
	be sent.
	
	Parameters:
		data	: Byte of data to be sent.
	
	Return:
		None
*/
void uart_send_blocking( uint8_t data );

/*
	Receive one byte of data over UART and blocks until the byte can
	be read.
	
	Parameters:
		None
	
	Return:
		Returns the byte that was read.
*/
uint8_t uart_receive_blocking();


#endif /* UART_CTRL_H_ */