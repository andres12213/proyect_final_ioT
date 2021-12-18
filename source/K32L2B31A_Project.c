/*! @file : K32L2B31A_Project.c
 * @author  Ernesto Andres Rincon Cruz
 * @ Revision para soporte de Modem Quectel:
 * Gustavo Galeano Oct 2 2021
 * @version 0.0.000
 * @date    23/08/2021
 * @brief   Funcion principal main
 * @details
 *			v0.0.000	Proyecto base creado usando MCUXpresso
 *
 *
 */
/*******************************************************************************
 * Includes
 ******************************************************************************/
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "K32L2B31A.h"
#include "fsl_debug_console.h"
#include "stdbool.h"
#include "leds.h"
#include "sensor_de_luz.h"
#include "botones.h"
#include "modem.h"
#include "sensor_temperatura.h"

#include "irq_lptmr0.h"
#include "irq_lpuart0.h"


// Para modulo Alarma
volatile uint32_t segAct=0;

// Inicializa Alarma
void Alarma_Init(void){
	segAct = lptmr0_irq_counter;
}

// retorna el tiempo futuro de la alarma
uint32_t Alarma_Set(uint32_t time2Wait){
	segAct = lptmr0_irq_counter;
	return (segAct + time2Wait);
}

// retorna si la alarma se cumplio
char Alarma_Elapsed(uint32_t time2Test){
	segAct = lptmr0_irq_counter;
	if(segAct >= time2Test) return true;
	else return false;
}

#define Timer_Init() LPTMR_StartTimer(LPTMR0)

/* Init board hardware. */
void BOARD_Init(void){
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif
}



//  main
int main(void) {
	BOARD_Init();
    Timer_Init();
    Modem_Init();
    Key_Task_Init();
    SensorLuz_Init();
    sensorTe_ini();

    Alarma_Init();
    while(1) { // multiTaks de tareas por Polling
    	Modem_Task_Run();
    	Key_Task_Run();
    	SensorLuz_Task_Run();
    	Sensortemp_Task_Run();
    }
    return 0 ;
}

