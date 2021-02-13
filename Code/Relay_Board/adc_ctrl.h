/*
 * adc_ctrl.h
 *
 * Created: 1/7/2021 7:42:53 PM
 *  Author: damay
 */ 


#ifndef ADC_CTRL_H_
#define ADC_CTRL_H_

#include <stdint.h>

void configure_adc();
//void adc_compute_current();
//uint16_t adc_get_peak();
//uint16_t adc_get_current();
//uint16_t adc_get_dc();
uint8_t is_load_detected();
void adc_handle_value();




#endif /* ADC_CTRL_H_ */