/*! @file : sensor_de_luz.h
 * @author  Ernesto Andres Rincon Cruz
 * @version 1.0.0
 * @date    4 sept. 2021
 * @brief   Driver para 
 * @details
 *
 */
#ifndef IOT_SDK_PERIPHERALS_SENSOR_DE_LUZ_H_
#define IOT_SDK_PERIPHERALS_SENSOR_DE_LUZ_H_
/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "peripherals.h"

/*!
 * @addtogroup PERIPHERALS
 * @{
 */
/*!
 * @addtogroup SENSOR_DE_LUZ
 * @{
 */
/*******************************************************************************
 * Public Definitions
 ******************************************************************************/
#define SENSOR_DE_LUZ_ADC16_BASE          ADC0
#define SENSOR_DE_LUZ_ADC16_CHANNEL_GROUP 0U
#define SENSOR_DE_LUZ_ADC16_USER_CHANNEL  3U /* PTE22, ADC0_SE3 */
/*******************************************************************************
 * External vars
 ******************************************************************************/

/*******************************************************************************
 * Public vars
 ******************************************************************************/

/*******************************************************************************
 * Public Prototypes
 ******************************************************************************/
 /*!
  * @brief Retorna del resultado de la conversión ADC para sensor de luz
  *
  */
 float sensorDeLuzObtenerdatoADC(void);

// inicializa vables del modulo
 void SensorLuz_Init(void);
 void SensorLuz_Task_Run(void);

/** @} */ // end of SENSOR_DE_LUZ group
/** @} */ // end of PERIPHERALS group

#endif /* IOT_SDK_PERIPHERALS_SENSOR_DE_LUZ_H_ */
