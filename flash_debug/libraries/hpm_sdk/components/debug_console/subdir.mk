################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/hpm_sdk/components/debug_console/hpm_debug_console.c 

OBJS += \
./libraries/hpm_sdk/components/debug_console/hpm_debug_console.o 

C_DEPS += \
./libraries/hpm_sdk/components/debug_console/hpm_debug_console.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/hpm_sdk/components/debug_console/%.o: ../libraries/hpm_sdk/components/debug_console/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\applications" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\board" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\drivers" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\arch" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\debug_console" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\touch" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\usb" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\drivers\inc" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\HPM6750\boot" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\HPM6750" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\ip" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\packages\fal-latest\inc" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\packages\ota_downloader-latest" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\drivers\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\drivers\spi" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\finsh" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\libc\compilers\common" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\libc\compilers\gcc\newlib" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\utilities\ymodem" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\libcpu\risc-v\hpmicro" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\startup\HPM6750" -include"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

