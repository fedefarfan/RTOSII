################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/app_state_machine.c \
../Core/Src/application.c \
../Core/Src/c2_frame.c \
../Core/Src/c2_parser.c \
../Core/Src/crc8.c \
../Core/Src/frame_separation.c \
../Core/Src/freertos.c \
../Core/Src/main.c \
../Core/Src/package.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/app_state_machine.o \
./Core/Src/application.o \
./Core/Src/c2_frame.o \
./Core/Src/c2_parser.o \
./Core/Src/crc8.o \
./Core/Src/frame_separation.o \
./Core/Src/freertos.o \
./Core/Src/main.o \
./Core/Src/package.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/app_state_machine.d \
./Core/Src/application.d \
./Core/Src/c2_frame.d \
./Core/Src/c2_parser.d \
./Core/Src/crc8.d \
./Core/Src/frame_separation.d \
./Core/Src/freertos.d \
./Core/Src/main.d \
./Core/Src/package.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/app_state_machine.d ./Core/Src/app_state_machine.o ./Core/Src/app_state_machine.su ./Core/Src/application.d ./Core/Src/application.o ./Core/Src/application.su ./Core/Src/c2_frame.d ./Core/Src/c2_frame.o ./Core/Src/c2_frame.su ./Core/Src/c2_parser.d ./Core/Src/c2_parser.o ./Core/Src/c2_parser.su ./Core/Src/crc8.d ./Core/Src/crc8.o ./Core/Src/crc8.su ./Core/Src/frame_separation.d ./Core/Src/frame_separation.o ./Core/Src/frame_separation.su ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/package.d ./Core/Src/package.o ./Core/Src/package.su ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-Src

