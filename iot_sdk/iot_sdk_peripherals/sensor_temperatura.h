/*
 * sensor_temperatura.h
 *
 *  Created on: 10/09/2021
 *      Author: Asus
 */
//_----------------------------------------------------------------------------------
#define MAX_ADC			(float)65535
#define VDD_MAX			(float)(3.3)
#define VTEMP25			(float)(0.716)


#define ADC_VTEMP25		14219//(VTEMP25 * MAX_ADC)/(VDD_MAX)
#define ADC_VSLOPE		32//(float)(VTEMP25 * MAX_ADC)/(VDD_MAX)

 float getTemperatureValue(void);



//_-------------------------------------------------------------------------------



#ifndef IOT_SDK_PERIPHERALS_SENSOR_TEMPERATURA_H_
#define IOT_SDK_PERIPHERALS_SENSOR_TEMPERATURA_H_





#include "peripherals.h"

#define SENSOR_TEMPERATURA_ADC16_BASE          ADC0
#define SENSOR_TEMPERATURA_ADC16_CHANNEL_GROUP 0U
//#define DEMO_ADC16_USER_CHANNEL  23U /* PTE30, ADC0_SE23 */
#define DEMO_ADC16_USER_CHANNEL  26U /* PTE22, ADC0_SE3 */


float sensorTemperaturaObtenerDatoCelsius(void);
// parte modulo
void sensorTe_ini(void);
void Sensortemp_Task_Run(void);
#endif /* IOT_SDK_PERIPHERALS_SENSOR_TEMPERATURA_H_ */
