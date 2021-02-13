/*
 * adc_ctrl.c
 *
 * Created: 1/7/2021 7:48:13 PM
 *  Author: damay
 */ 

#include "constants.h"
#include "adc_ctrl.h"
#include "io_ctrl.h"

#include <xc.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdlib.h>

#define READ_ZERO 0
#define READ_CURRENT 1
#define READ_COUNT 1000

//Holds the sum of the sensors output pin values.
//This is used to determine if a load is present or
//not.
uint16_t adc_sum = 0;
//Holds the average value of sensors zero value output pin
uint16_t dc_offset = 0;

//Intermediate sum value for use when data is still
//being collected. Once all of the data has been
//collected its contents will be copied over to
//either dc_offset or adc_sum.
uint16_t adc_sum_intermediate = 0;

//Keep count of how many samples have been read since the last
//time the input was switched.
int count = 0;


//Keeps track of which input is being read.
//1 -> Read current value.
//0 -> Read the zero value.
uint8_t adc_read_state = 0;

uint16_t new_value = 0;
uint8_t new_value_flag = 0;


void switch_input(int input) {
	if(input == READ_ZERO) {
		//Turn on bit 1
		ADMUX |= (1<<MUX1);
		//status_led_ctrl(1);
	}
	else if(input == READ_CURRENT) {
		//Trun off bit 1
		ADMUX &= ~(1<<MUX1);
		//status_led_ctrl(0);
	}
}

void adc_handle_value() {
	
	if(new_value_flag == 1) {
	
		//Reset the flag
		new_value_flag = 0;
	
		//Alternate between reading the sensor value and reading the sensor
		//zero value
		if(adc_read_state == READ_CURRENT) {

			//Only keep positive values
			if(new_value > dc_offset+5) {
				//This is a bit ad hoc. Basically it sums sensor readings
				//with the zero value removed. Multiplying by 2 helps make
				//each state (load detected vs. no load) distinct since doubling
				//a large value will have a bigger affect than doubling a small
				//value.
				//adc_sum_intermediate += 5 * (new_value - dc_offset);
				//adc_sum_intermediate += new_value;
				adc_sum_intermediate += 1;
				

				//Only count acceptable values
				//count++;
			}
			count++;

			//After taking 100 sensor readings reset the variable states and
			//switch to reading the zero value.
			if(count >= READ_COUNT) {
				adc_sum = adc_sum_intermediate;
				//adc_sum = adc_sum_intermediate/count;
				adc_sum_intermediate = 0;
				count = 0;
				//adc_read_state = READ_ZERO;
				//switch_input(READ_ZERO);
			}
		
		}
		else {
			status_led_ctrl(1);
			//Sum up the readings so they can be averaged
			adc_sum_intermediate += new_value;
			count++;
		
			//After taking 100 samples average the samples and switch to
			//reading the current value.
			if(count >= READ_COUNT) {
				dc_offset = adc_sum_intermediate / count;
				adc_sum_intermediate = 0;
				count = 0;
				adc_read_state = READ_CURRENT;
				switch_input(READ_CURRENT);
			}
		
		}
	}
}

ISR(ADC_vect) {
	new_value = ADCL;
	new_value |= (( ADCH & 0b11) << 8);
	
	new_value_flag = 1;
}

void configure_adc() {
	
	//Delay so that the voltages on the board can stabilize
	_delay_ms(1000);
	
	ADMUX |= (1<<REFS0);
	
								//Run an initial test to determine the dc offset of the signal
								ADCSRA = (1<<ADEN) | (1<<ADPS2) | (1<<ADSC);
								while( (ADCSRA & (1<<ADSC)) != 0 ){};
								//Read the results of the dc offset test
								dc_offset = ADCL;
								dc_offset |= (( ADCH & 0b11) << 8);
	//The interrupt flag is cleared when ADCSRA is written below
	
	//Set the actual settings
	ADCSRA = (1<<ADATE) | (1<<ADEN) | (1<<ADIE) | (1<<ADPS2);
	ADCSRA |= (1<<ADSC);
	
	adc_read_state = READ_CURRENT;
	switch_input(READ_CURRENT);
	//adc_read_state = READ_ZERO;
	//switch_input(READ_ZERO);
}

//uint16_t adc_get_peak() {
	//return adc_avg;
//}
//
//uint16_t adc_get_dc() {
	//return dc_offset;
//}
#include "uart_ctrl.h"
uint8_t is_load_detected() {
	
	//This is once again a bit ad hoc. This more or less
	//is used to classify the data as either representing
	//a load being present or the absence of a load. The
	//value of 250 was chosen based on experimentation.
	cli();
	//uart_send(adc_sum);
	//uart_send(adc_sum >> 8);
	if(adc_sum >= READ_COUNT/100) {
		sei();
		status_led_ctrl(1);
		return 1;
	}
	else {
		sei();
		status_led_ctrl(0);
		return 0;
	}
}