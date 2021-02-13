/*
 * uart_watchdog.h
 *
 * Created: 1/5/2021 11:08:01 PM
 *  Author: damay
 */ 


#ifndef UART_WATCHDOG_H_
#define UART_WATCHDOG_H_

#include <stdint.h>

/*
	NOTE: This function should only be used in the interrupt handler and as such assumes that
	interrupts are already globally disabled. That is why it does not disable global interrupts.
	
	Increment the internal watchdog value.
	
	Parameter:
		None
	
	Return:
		None
*/
void uart_watchdog_increment();

/*
	Clear the internal watchdog counter.
	
	Parameters:
		None
		
	Return:
		None
*/
void uart_watchdog_clear();

/*
	Check the state of the watchdog.
	
	Parameters:
		None
		
	Return:
		Returns 1 if the internal watchdog counter is
		less than the timeout value and zero otherwise.
*/
uint8_t uart_watchdog_ok();

/*
	Set the timeout value for the watchdog.
	
	Parameter:
		timeout	: New timeout value.
		
	Return:
		None
*/
void uart_watchdog_set_timeout(uint16_t timeout);

/*
	Enable the watchdog.
	
	Parameters:
		None
		
	Return:
		None
*/
void uart_watchdog_enable();

/*
	Disable the watchdog.
	
	Parameters:
		None
	
	Return:
		None
*/
void uart_watchdog_disable();

/*
	Check if the watchdog is enabled.
	
	Parameters:
		None
		
	Return:
		Returns 1 if the watchdog is enabled and zero
		otherwise.
*/
uint8_t uart_watchdog_is_enabled();

#endif /* UART_WATCHDOG_H_ */