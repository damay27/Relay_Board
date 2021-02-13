
#include "uart_ctrl.h"
#include "constants.h"
#include <xc.h>

#define UBRR_VALUE (int) ( ( F_CPU / ( (float) 8 * BAUD ) ) - 1 )

void configure_uart() {
	//Set baud rate
	UBRR0H = (unsigned char) (UBRR_VALUE>>8);
	UBRR0L = (unsigned char) UBRR_VALUE;
	//Enable receive and transmit functionality
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	//The double transmission speed needs to be used so that we can get with .5%
	//of the 9600 b/sec baud rate using a 1MHz clock.
	UCSR0A = (1<<U2X0);
	//8bit word
	UCSR0C =  (1 << UCSZ01) | (1 << UCSZ00);
}

int uart_send( uint8_t data ) {
	//Wait for empty transmit buffer
	if ( !( UCSR0A & (1<<UDRE0)) ) {
		return 0;
	}
	
	//Load data into the transmit register
	UDR0 = data;
	return 1;
}

int uart_receive( uint8_t *data ) {
	/* Wait for data to be received */
	if ( !(UCSR0A & (1<<RXC0)) ) {
		return 0;
	}
	
	//Get and return received data from buffer
	*data = UDR0;
	return 1;
}

void uart_send_blocking( uint8_t data ) {
	//Wait for empty transmit buffer
	while ( !( UCSR0A & (1<<UDRE0)) );
	
	//Load data into the transmit register
	UDR0 = data;
}

uint8_t uart_receive_blocking() {
	/* Wait for data to be received */
	while ( !(UCSR0A & (1<<RXC0)) );
	
	//Get and return received data from buffer
	return UDR0;
}