################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/lists/fsl_component_generic_list.c 

OBJS += \
./component/lists/fsl_component_generic_list.o 

C_DEPS += \
./component/lists/fsl_component_generic_list.d 


# Each subdirectory must supply rules for building sources it contributes
component/lists/%.o: ../component/lists/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_K32L2B31VLH0A -DCPU_K32L2B31VLH0A_cm0plus -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DPRINTF_FLOAT_ENABLE=1 -DSDK_DEBUGCONSOLE_UART -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSLCD_PANEL_LCD_S401M16KR_H -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\nxp\K32L2B31A_Project\board" -I"C:\nxp\K32L2B31A_Project\source" -I"C:\nxp\K32L2B31A_Project\freertos\template\ARM_CM0" -I"C:\nxp\K32L2B31A_Project\freertos\freertos_kernel\include" -I"C:\nxp\K32L2B31A_Project\freertos\freertos_kernel\portable\GCC\ARM_CM0" -I"C:\nxp\K32L2B31A_Project\drivers" -I"C:\nxp\K32L2B31A_Project\drivers\freertos" -I"C:\nxp\K32L2B31A_Project\component\serial_manager" -I"C:\nxp\K32L2B31A_Project\component\uart" -I"C:\nxp\K32L2B31A_Project\utilities" -I"C:\nxp\K32L2B31A_Project\accel" -I"C:\nxp\K32L2B31A_Project\slcd" -I"C:\nxp\K32L2B31A_Project\component\gpio" -I"C:\nxp\K32L2B31A_Project\component\timer" -I"C:\nxp\K32L2B31A_Project\component\lists" -I"C:\nxp\K32L2B31A_Project\component\button" -I"C:\nxp\K32L2B31A_Project\component\timer_manager" -I"C:\nxp\K32L2B31A_Project\component\common_task" -I"C:\nxp\K32L2B31A_Project\component\osa" -I"C:\nxp\K32L2B31A_Project\component\led" -I"C:\nxp\K32L2B31A_Project\CMSIS" -I"C:\nxp\K32L2B31A_Project\device" -I"C:\nxp\K32L2B31A_Project\iot_sdk" -I"C:\nxp\K32L2B31A_Project\iot_sdk\iot_sdk_peripherals" -I"C:\nxp\K32L2B31A_Project\iot_sdk\iot_sdk_irq" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


