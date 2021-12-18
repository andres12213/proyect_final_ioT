################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_adc16.c \
../drivers/fsl_clock.c \
../drivers/fsl_cmp.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_cop.c \
../drivers/fsl_dac.c \
../drivers/fsl_dma.c \
../drivers/fsl_dmamux.c \
../drivers/fsl_flexio.c \
../drivers/fsl_flexio_i2c_master.c \
../drivers/fsl_flexio_i2s.c \
../drivers/fsl_flexio_i2s_dma.c \
../drivers/fsl_flexio_spi.c \
../drivers/fsl_flexio_spi_dma.c \
../drivers/fsl_flexio_uart.c \
../drivers/fsl_flexio_uart_dma.c \
../drivers/fsl_ftfx_cache.c \
../drivers/fsl_ftfx_controller.c \
../drivers/fsl_ftfx_flash.c \
../drivers/fsl_ftfx_flexnvm.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2c.c \
../drivers/fsl_i2c_dma.c \
../drivers/fsl_llwu.c \
../drivers/fsl_lptmr.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_lpuart_dma.c \
../drivers/fsl_pit.c \
../drivers/fsl_pmc.c \
../drivers/fsl_rcm.c \
../drivers/fsl_rtc.c \
../drivers/fsl_sim.c \
../drivers/fsl_slcd.c \
../drivers/fsl_smc.c \
../drivers/fsl_spi.c \
../drivers/fsl_spi_dma.c \
../drivers/fsl_tpm.c \
../drivers/fsl_uart.c \
../drivers/fsl_uart_dma.c \
../drivers/fsl_vref.c 

OBJS += \
./drivers/fsl_adc16.o \
./drivers/fsl_clock.o \
./drivers/fsl_cmp.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_cop.o \
./drivers/fsl_dac.o \
./drivers/fsl_dma.o \
./drivers/fsl_dmamux.o \
./drivers/fsl_flexio.o \
./drivers/fsl_flexio_i2c_master.o \
./drivers/fsl_flexio_i2s.o \
./drivers/fsl_flexio_i2s_dma.o \
./drivers/fsl_flexio_spi.o \
./drivers/fsl_flexio_spi_dma.o \
./drivers/fsl_flexio_uart.o \
./drivers/fsl_flexio_uart_dma.o \
./drivers/fsl_ftfx_cache.o \
./drivers/fsl_ftfx_controller.o \
./drivers/fsl_ftfx_flash.o \
./drivers/fsl_ftfx_flexnvm.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2c.o \
./drivers/fsl_i2c_dma.o \
./drivers/fsl_llwu.o \
./drivers/fsl_lptmr.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_lpuart_dma.o \
./drivers/fsl_pit.o \
./drivers/fsl_pmc.o \
./drivers/fsl_rcm.o \
./drivers/fsl_rtc.o \
./drivers/fsl_sim.o \
./drivers/fsl_slcd.o \
./drivers/fsl_smc.o \
./drivers/fsl_spi.o \
./drivers/fsl_spi_dma.o \
./drivers/fsl_tpm.o \
./drivers/fsl_uart.o \
./drivers/fsl_uart_dma.o \
./drivers/fsl_vref.o 

C_DEPS += \
./drivers/fsl_adc16.d \
./drivers/fsl_clock.d \
./drivers/fsl_cmp.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_cop.d \
./drivers/fsl_dac.d \
./drivers/fsl_dma.d \
./drivers/fsl_dmamux.d \
./drivers/fsl_flexio.d \
./drivers/fsl_flexio_i2c_master.d \
./drivers/fsl_flexio_i2s.d \
./drivers/fsl_flexio_i2s_dma.d \
./drivers/fsl_flexio_spi.d \
./drivers/fsl_flexio_spi_dma.d \
./drivers/fsl_flexio_uart.d \
./drivers/fsl_flexio_uart_dma.d \
./drivers/fsl_ftfx_cache.d \
./drivers/fsl_ftfx_controller.d \
./drivers/fsl_ftfx_flash.d \
./drivers/fsl_ftfx_flexnvm.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2c.d \
./drivers/fsl_i2c_dma.d \
./drivers/fsl_llwu.d \
./drivers/fsl_lptmr.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_lpuart_dma.d \
./drivers/fsl_pit.d \
./drivers/fsl_pmc.d \
./drivers/fsl_rcm.d \
./drivers/fsl_rtc.d \
./drivers/fsl_sim.d \
./drivers/fsl_slcd.d \
./drivers/fsl_smc.d \
./drivers/fsl_spi.d \
./drivers/fsl_spi_dma.d \
./drivers/fsl_tpm.d \
./drivers/fsl_uart.d \
./drivers/fsl_uart_dma.d \
./drivers/fsl_vref.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_K32L2B31VLH0A -DCPU_K32L2B31VLH0A_cm0plus -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DPRINTF_FLOAT_ENABLE=1 -DSDK_DEBUGCONSOLE_UART -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSLCD_PANEL_LCD_S401M16KR_H -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\nxp\K32L2B31A_Project\board" -I"C:\nxp\K32L2B31A_Project\source" -I"C:\nxp\K32L2B31A_Project\freertos\template\ARM_CM0" -I"C:\nxp\K32L2B31A_Project\freertos\freertos_kernel\include" -I"C:\nxp\K32L2B31A_Project\freertos\freertos_kernel\portable\GCC\ARM_CM0" -I"C:\nxp\K32L2B31A_Project\drivers" -I"C:\nxp\K32L2B31A_Project\drivers\freertos" -I"C:\nxp\K32L2B31A_Project\component\serial_manager" -I"C:\nxp\K32L2B31A_Project\component\uart" -I"C:\nxp\K32L2B31A_Project\utilities" -I"C:\nxp\K32L2B31A_Project\accel" -I"C:\nxp\K32L2B31A_Project\slcd" -I"C:\nxp\K32L2B31A_Project\component\gpio" -I"C:\nxp\K32L2B31A_Project\component\timer" -I"C:\nxp\K32L2B31A_Project\component\lists" -I"C:\nxp\K32L2B31A_Project\component\button" -I"C:\nxp\K32L2B31A_Project\component\timer_manager" -I"C:\nxp\K32L2B31A_Project\component\common_task" -I"C:\nxp\K32L2B31A_Project\component\osa" -I"C:\nxp\K32L2B31A_Project\component\led" -I"C:\nxp\K32L2B31A_Project\CMSIS" -I"C:\nxp\K32L2B31A_Project\device" -I"C:\nxp\K32L2B31A_Project\iot_sdk" -I"C:\nxp\K32L2B31A_Project\iot_sdk\iot_sdk_peripherals" -I"C:\nxp\K32L2B31A_Project\iot_sdk\iot_sdk_irq" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


