/*
 * io_ctrl.c
 *
 * Created: 12/23/2020 11:22:14 AM
 *  Author: damay
 */ 

#include <xc.h>

#include "io_ctrl.h"

/*
	Configures the I/O pins for the relay pin and the status LED pin.
	
	Parameters:
		None
	
	Return:
		None
*/
void configure_io_pins() {
	//Status LED pin is set as an output all other pins are inputs
	DDRB = (1<<DDB1);
	//Relay control pin is set as an output all other pins are inputs
	DDRC = (1<< DDC1);
}

/*
	Controls the state of the relay control pin.
	
	Parameters:
		relay_state	: Value to control the relay pin. 1 to set the pin high
					  0 to set the pin low.
	
	Return:
		Returns 0 on success and -1 on failure.
*/
int relay_ctrl(char relay_state) {
	//Acceptable values for relay_state are either 0 or 1;
	if(relay_state == 1) {
		//Turn the pin on.
		PORTC |= (1<<PORTC1);
	}
	else if(relay_state == 0) {
		//Turn the pin off
		PORTC &= ~(1<<PORTC1);
	}
	//Only 0 and 1 are valid inputs so return
	//an error for anything else.
	else {
		return -1;
	}
	
	return 0;
}

/*
	Controls the state of the status LED control pin.
	
	Parameters:
		led_state	: Value to control the status LED pin. 1 to set the
					  pin high 0 to set the pin low.
	
	Return:
		Returns 0 on success and -1 on failure.
*/
int status_led_ctrl(char led_state) {
	//Acceptable values for relay_state are either 0 or 1;
	if(led_state == 1) {
		//Turn the pin on
		PORTB |= (1<<PORTB1);
	}
	else if(led_state == 0) {
		//Turn the pin off
		PORTB &= ~(1<<PORTB1);
	}
	//Only 0 and 1 are valid inputs so return
	//an error for anything else.
	else {
		return -1;
	}
	
	return 0;
}
