/*
 * io_ctrl.h
 *
 * Created: 12/23/2020 11:17:40 AM
 *  Author: damay
 */ 


#ifndef IO_CTRL_H_
#define IO_CTRL_H_


/*
	Configures the I/O pins for the relay pin and the status LED pin.
	
	Parameters:
		None
	
	Return:
		None
*/
void configure_io_pins();


/*
	Controls the state of the relay control pin.
	
	Parameters:
		relay_state	: Value to control the relay pin. 1 to set the pin high
					  0 to set the pin low.
	
	Return:
		Returns 0 on success and -1 on failure.
*/
int relay_ctrl(char relay_state);

/*
	Controls the state of the status LED control pin.
	
	Parameters:
		led_state	: Value to control the status LED pin. 1 to set the
					  pin high 0 to set the pin low.
	
	Return:
		Returns 0 on success and -1 on failure.
*/
int status_led_ctrl(char led_state);


#endif /* IO_CTRL_H_ */