#ifndef AnalogIn
#define AnalogIn

#include "pin_common.h"

typedef struct adc_pin_name {
    pin_name pin;
    ADC_TypeDef* adc;
    uint32_t channel;
} adc_pin_name;

typedef struct adc_handle {
  ADC_HandleTypeDef ADC_InitStruct;
  ADC_ChannelConfTypeDef ADC_ChannelConfig;
} adc_handle;

void analogin_init(adc_pin_name pin, adc_handle* handle);
uint32_t analogin_read(adc_handle* handle);
uint16_t analogin_read_u16(adc_handle* handle);
float analogin_voltage(adc_handle* handle);
float analogin_percent(adc_handle* handle);

#endif
