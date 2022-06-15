################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/src/application.c \
../app/src/c2_frame.c \
../app/src/c2_parser.c \
../app/src/crc8.c \
../app/src/package.c 

OBJS += \
./app/src/application.o \
./app/src/c2_frame.o \
./app/src/c2_parser.o \
./app/src/crc8.o \
./app/src/package.o 

C_DEPS += \
./app/src/application.d \
./app/src/c2_frame.d \
./app/src/c2_parser.d \
./app/src/crc8.d \
./app/src/package.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/%.o app/src/%.su: ../app/src/%.c app/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-app-2f-src

clean-app-2f-src:
	-$(RM) ./app/src/application.d ./app/src/application.o ./app/src/application.su ./app/src/c2_frame.d ./app/src/c2_frame.o ./app/src/c2_frame.su ./app/src/c2_parser.d ./app/src/c2_parser.o ./app/src/c2_parser.su ./app/src/crc8.d ./app/src/crc8.o ./app/src/crc8.su ./app/src/package.d ./app/src/package.o ./app/src/package.su

.PHONY: clean-app-2f-src

