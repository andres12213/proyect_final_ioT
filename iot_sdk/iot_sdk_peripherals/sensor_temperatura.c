
/*
 * sensor_temperatura.c
 *
 *  Created on: 10/09/2021
 *      Author: Asus
 */

#include "sensor_temperatura.h"
#include <stdio.h>


uint32_t adc_sensor_de_temp;

void sensorTemperaturaIniciarCaptura(void); //metodos privados para que no se vean en la libreria principal
void sensorTemperaturaEsperarResultado(void);


void sensorTemperaturaIniciarCaptura(void){
	ADC16_SetChannelConfig(SENSOR_TEMPERATURA_ADC16_BASE, SENSOR_TEMPERATURA_ADC16_CHANNEL_GROUP, &ADC0_channelsConfig[1]);
}

void sensorTemperaturaEsperarResultado(void){

	while (0U == (kADC16_ChannelConversionDoneFlag
			& ADC16_GetChannelStatusFlags(SENSOR_TEMPERATURA_ADC16_BASE, SENSOR_TEMPERATURA_ADC16_CHANNEL_GROUP))){
	       }

}

float sensorTemperaturaObtenerDatoCelsius(void){
	sensorTemperaturaIniciarCaptura();
	sensorTemperaturaEsperarResultado();
	uint32_t resultadoADC;
float temp,volADC,m;
	resultadoADC = ADC16_GetChannelConversionValue(SENSOR_TEMPERATURA_ADC16_BASE, SENSOR_TEMPERATURA_ADC16_CHANNEL_GROUP);
	volADC=(3*resultadoADC)/4095;
	if(volADC>=0.716){
		m=1.646;
	}else{
		m=1.769;
	}
		temp = 25 -((volADC-0.716)/m);


//	volts = ((3*resultadoADC)/4095);


//		temperatura =   (volts * 90)/10;

	return (temp);
//	return temperatura;
}

void sensorTe_ini (void){

}

void Sensortemp_Task_Run(void){
	adc_sensor_de_temp=sensorTemperaturaObtenerDatoCelsius();
}
