/*
 * timer_ctrl.c
 *
 * Created: 1/5/2021 9:22:27 PM
 *  Author: damay
 */ 

#include "constants.h"
#include "timer_ctrl.h"
#include "uart_watchdog.h"
#include "io_ctrl.h"

#include <xc.h>
#include <avr/interrupt.h>

//Frequency of timer in Hz
#define TIMER_FREQ 1000

//Compute the value that the timer will count up to for a 1kHz
//clock assuming a no prescaler.
#define TIMER_COUNT_VAL (int) ( (float) F_CPU / (TIMER_FREQ) ) - 1

//Counter that keeps track of the when the LED should be turned on/off
int led_blink_count = 0;

//Interrupt handler for the timer
ISR(TIMER1_COMPA_vect) {
	
	//Increment the watch dog value on each timer tick
	uart_watchdog_increment();
	
	if(led_blink_count == 1000) {
		//status_led_ctrl(0);
	}
	else if(led_blink_count == 2000){
		//status_led_ctrl(1);
		led_blink_count = 0;
	}
	led_blink_count++;
}


/*
	Configures the hardware timer and interrupt handler.
	
	Parameters:
		None
		
	Return:
		None
*/
void configure_timer() {
	//Set CTC mode
	TCCR1B = (1<<WGM12);
	//Select a 1024 prescaler
	//TCCR1B = (1<<CS12) | (1<<CS10);
	//Enable the interrupt
	TIMSK1 = (1<<OCIE1A);
	
	//Disable interrupts to write the 16 bit value
	cli();
	//Interrupt occurs every second
	OCR1A = TIMER_COUNT_VAL;
	//Re-enable interrupts
	sei();
	
	//Select no prescaler. Do this last since it actually starts the clock.
	TCCR1B |= (1<<CS10);
}