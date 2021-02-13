/*
 * main.c
 *
 * Created: 12/23/2020 11:13:48 AM
 *  Author: damay
 */ 

//
//#define F_CPU 1000000
//#include <xc.h>
//#include <util/delay.h>
//
//int main (){
	//DDRC |= (1<< PC1);
	//DDRB |= (1<<PB1);
	//for(;;){
		//_delay_ms(3000);
		//PORTB = (1<<PB1);
		//PORTC = (1<<PC1);
		//_delay_ms(3000);
		//PORTB = 0;
		//PORTC = 0;
	//}
	//return 0;
//}




#include "constants.h"
#include "io_ctrl.h"
#include "uart_ctrl.h"
#include "timer_ctrl.h"
#include "uart_watchdog.h"
#include "adc_ctrl.h"

#include <xc.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include <stdint.h>

#define IDLE_STATE 0
#define TIMEOUT_READ_STATE 1
#define CURRENT_SEND_STATE 2

//void time_out_read_16(uint8_t *state) {
	//static uint8_t byte_count = 0;
	//static uint16_t timeout_value;
	//int uart_status;
	//unsigned char uart_receive_data;
	//
	//uart_status = uart_receive(&uart_receive_data);
	//
	//if(uart_status == 1 && byte_count == 0) {
		////If no bytes have been read then read the upper bits
		//timeout_value = (uart_receive_data << 8);
		//byte_count++;
	//}
	//else if(uart_status == 1 && byte_count == 1) {
		////If one byte has already been read then read the lower bits
		//timeout_value |= uart_receive_data;
		////Now that both bytes have been received update the watchdog timeout.
		//uart_watchdog_set_timeout(timeout_value);
		//uart_send(ACK);
		//
		////Reset the byte count and timeout variables back to zero
		////so that they are ready for use when the function is next called
		//byte_count = 0;
		//timeout_value = 0;
		//
		////Transition back to the idle state
		//*state = IDLE_STATE;
	//}
//
//}

//void send_current_16(uint8_t *state) {
	//static uint8_t byte_count = 0;
	//static uint16_t peak_send;
	//
	//cli();
	////peak_send = adc_get_peak() - adc_get_dc();
	////peak_send = abs(adc_get_peak() - 512);
	////peak_send = adc_get_dc();
	//peak_send = adc_get_peak();
	//sei();
//
	//int uart_status;
	//
	//if(byte_count == 0) {
		////If no bytes have been sent then read the upper bits
		//uart_send(peak_send >> 8);
//
		//byte_count++;
	//}
	//else if(byte_count == 1) {
		//uart_send(peak_send & 255);
		////uart_send(ACK);
		////Reset the byte count and timeout variables back to zero
		////so that they are ready for use when the function is next called
		//byte_count = 0;
		//
		////Transition back to the idle state
		//*state = IDLE_STATE;
	//}
//
//}


//Special state variable for use with the check_for_data function
//Needed for command that sets the watch dog timeout since we will
//need to ensure that the next piece of data after the WATCH_DOG_TIMEOUT
//opcode will actually be used to set the timeout.
uint8_t state = IDLE_STATE;
void check_for_data() {
	
	int uart_status;
	unsigned char uart_receive_data;
	
	uart_status = uart_receive(&uart_receive_data);
		
	if(uart_status == 1) {
		
		if(state == TIMEOUT_READ_STATE) {
			
			//The timeout value is sent in seconds so multiply by 1000
			//to convert to milliseconds.
			uart_watchdog_set_timeout(uart_receive_data * 1000);
			uart_watchdog_clear();
			uart_send(ACK);
			state = IDLE_STATE;
		}
		else {
			switch(uart_receive_data) {
				case RELAY_ON:
					uart_watchdog_clear();
					relay_ctrl(1);
					uart_send(ACK);
					break;
				case RELAY_OFF:
					relay_ctrl(0);
					uart_send(ACK);
					break;
				case WATCH_DOG_ENABLE:
					uart_watchdog_clear();
					uart_watchdog_enable();
					uart_send(ACK);
					break;
				case WATCH_DOG_TIMEOUT:
					state = TIMEOUT_READ_STATE;
					break;
				case WATCH_DOG_DISABLE:
					uart_watchdog_disable();
					uart_send(ACK);
					break;
				case WATCH_DOG_UPDATE:
					uart_watchdog_clear();
					uart_send(ACK);
					break;
				case LOAD_DETECT:
					//*state = CURRENT_SEND_STATE;
					uart_watchdog_clear();
					if(is_load_detected() == 1) {
						uart_send('1');
					}
					else {
						uart_send('0');
					}
					break;
				default:
					uart_send(NACK);
					break;
			}
		}
	}
}


/*
	This program reads data from the uart connection and will take action based on the
	received opcode. Most of these commands can be serviced immediately and are therefor
	serviced by the wait_data function. There are however two commands that cannot be
	serviced in this way which are listed below.
		1. WATCH_DOG_TIMEOUT
		2. LOAD_DETECT
	In the case of the WATCH_DOG_TIMEOUT command two bytes of data must be received. In the case
	of the LOAD_DETECT command must send two bytes of data. It should be noted that no command
	may block during its operation so that watchdog overflows can be handled. 
*/

void main( void )
{
	//DDRC = (1<< DDC6);
	//DDRC |= (1<< PC1);
	//DDRB = (1<<DDB1);
	configure_io_pins();
	
	configure_adc();
	
	configure_uart();
	
	configure_timer();
	
	
	//uint8_t state = IDLE_STATE;
	
	while(1) {
		
		//_delay_ms(2000);
		//relay_ctrl(1);
		//_delay_ms(2000);
		//relay_ctrl(0);
		
		
		check_for_data();
		//switch(state) {
			//case IDLE_STATE:
				//wait_data(&state);
				//break;
			//case TIMEOUT_READ_STATE:
				//time_out_read_16(&state);
				//break;
			////case CURRENT_SEND_STATE:
				////send_current_16(&state);
				////break;
			//default:
				//break;
		//}
		
		if(uart_watchdog_is_enabled() == 1 && !uart_watchdog_ok()) {
			relay_ctrl(0);
		}
		
		adc_handle_value();
	
	}
	
	//while(1) {		
		//USART_Transmit('A');
		////PORTB = (1<<PB1);
		////PORTC = (1<<PC1);
		//relay_ctrl(1);
		//status_led_ctrl(1);
		//_delay_ms(3000);
		////PORTB = 0;
		////PORTC = 0;
		//relay_ctrl(0);
		//status_led_ctrl(0);
		//_delay_ms(3000);
//
	//}
}


































//#define F_CPU 1000000
//#include <avr/io.h>
//#include <util/delay.h>
//#define BAUD 9600
//#define MYUBRR    F_CPU/8/BAUD-1
//
//void init_uart(unsigned short uValue  ){
	//// setting the baud rate  based on the datasheet
	//UBRR0H =0x00;//(unsigned char)  ( uValue>> 8);  // 0x00
	//UBRR0L =0x0C;//(unsigned char) uValue;  // 0x0C
	//// enabling TX & RX
	//UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	//UCSR0A = (1<<UDRE0)|(1<<U2X0);
	//UCSR0C =  (1 << UCSZ01) | (1 << UCSZ00);    // Set frame: 8data, 1 stop
//
//}
//
//unsigned char USART_Receive( void )
//{
	///* Wait for data to be received */
	//while ( !(UCSR0A & (1<<RXC0)) )
	//;
	///* Get and return received data from buffer */
	//return UDR0;
//}
//void USART_Transmit( unsigned char data )
//{
	///* Wait for empty transmit buffer */
	//while ( !( UCSR0A & (1<<UDRE0)) )
	//;
	///* Put data into buffer, sends the data */
	//UDR0 = data;
//}
//
//int main (){
	//init_uart(MYUBRR);
	//DDRD |= (1<< PD7);
	//for(;;){
		//PORTD ^= (1<< PD7);
		//USART_Transmit('x');
		//USART_Transmit('l');
		////_delay_ms(1000);
	//}
	//return 0;
//}