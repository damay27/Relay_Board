/*
 * uart_watchdog.c
 *
 * Created: 1/5/2021 11:16:08 PM
 *  Author: damay
 */ 

#include "uart_watchdog.h"

#include <avr/interrupt.h>

uint16_t uart_watchdog_count = 0;
uint16_t uart_watchdog_timeout = 5000;

uint8_t uart_watchdog_enabled = 0;

/*
	NOTE: This function should only be used in the interrupt handler and as such assumes that
	interrupts are already globally disabled. That is why it does not disable global interrupts.
	
	Increment the internal watchdog value.
		
	Parameter:
		None
		
	Return:
		None
*/
void uart_watchdog_increment() {
	uart_watchdog_count++;
}

/*
	Clear the internal watchdog counter.
	
	Parameters:
		None
		
	Return:
		None
*/
void uart_watchdog_clear() {
	//Disable interrupts before accessing the 16 bit value.
	cli();
	uart_watchdog_count = 0;
	sei();
}

/*
	Check the state of the watchdog.
	
	Parameters:
		None
		
	Return:
		Returns 1 if the internal watchdog counter is
		less than the timeout value and zero otherwise.
*/
uint8_t uart_watchdog_ok() {
	//Disable interrupts before accessing the 16 bit value.
	cli();
	int ok = uart_watchdog_count < uart_watchdog_timeout;
	sei();
	return ok;
}

/*
	Set the timeout value for the watchdog.
	
	Parameter:
		timeout	: New timeout value.
		
	Return:
		None
*/
void uart_watchdog_set_timeout(uint16_t timeout) {
	//Disable interrupts before accessing the 16 bit value.
	cli();
	uart_watchdog_timeout = timeout;
	sei();
}

/*
	Enable the watchdog.
	
	Parameters:
		None
		
	Return:
		None
*/
void uart_watchdog_enable() {
	uart_watchdog_enabled = 1;
}

/*
	Disable the watchdog.
	
	Parameters:
		None
	
	Return:
		None
*/
void uart_watchdog_disable() {
	uart_watchdog_enabled = 0;
}

/*
	Check if the watchdog is enabled.
	
	Parameters:
		None
		
	Return:
		Returns 1 if the watchdog is enabled and zero
		otherwise.
*/
uint8_t uart_watchdog_is_enabled() {
	return uart_watchdog_enabled;
}