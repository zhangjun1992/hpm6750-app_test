################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/risc-v/hpmicro/cpuport.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/risc-v/hpmicro/context_gcc.S \
../rt-thread/libcpu/risc-v/hpmicro/trap_entry_gcc.S 

OBJS += \
./rt-thread/libcpu/risc-v/hpmicro/context_gcc.o \
./rt-thread/libcpu/risc-v/hpmicro/cpuport.o \
./rt-thread/libcpu/risc-v/hpmicro/trap_entry_gcc.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/risc-v/hpmicro/context_gcc.d \
./rt-thread/libcpu/risc-v/hpmicro/trap_entry_gcc.d 

C_DEPS += \
./rt-thread/libcpu/risc-v/hpmicro/cpuport.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/risc-v/hpmicro/%.o: ../rt-thread/libcpu/risc-v/hpmicro/%.S
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\applications" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\board" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\arch" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\drivers\inc" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\ip" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\HPM6750" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\drivers" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\dfs\filesystems\devfs" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\dfs\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\drivers\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\finsh" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\libcpu\risc-v\hpmicro" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\libcpu\risc-v\common" -ffunction-sections -fdata-sections -fno-common -ggdb -march=rv32imac -mabi=ilp32 -mcmodel=medany -DHAVE_CCONFIG_H -DDOWNLOAD_MODE=DOWNLOAD_MODE_FLASHXIP -DRTOS_RTTHREAD -DRT_USING_NEWLIB -I. -Iapplications -Iboard -Irt-thread\include -Irt-thread\components\dfs\include -Irt-thread\components\dfs\filesystems\devfs -Irt-thread\components\drivers\include -Irt-thread\components\finsh -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/risc-v/hpmicro/%.o: ../rt-thread/libcpu/risc-v/hpmicro/%.c
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-strict-align -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DDEBUG -DUSE_NONVECTOR_MODE=1 -DFLASH_XIP=1 -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\applications" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\board" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\drivers" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\arch" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\debug_console" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\touch" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\components\usb" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\drivers\inc" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\HPM6750\boot" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\HPM6750" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\libraries\hpm_sdk\soc\ip" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\packages\fal-latest\inc" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\packages\ota_downloader-latest" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\drivers\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\drivers\spi" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\finsh" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\libc\compilers\common" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\libc\compilers\gcc\newlib" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\components\utilities\ymodem" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\include" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rt-thread\libcpu\risc-v\hpmicro" -I"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\startup\HPM6750" -include"D:\install\RT-ThreadStudio\workspace\blink_led_0.5_app\rtconfig_preinc.h" -std=gnu11 -ffunction-sections -fdata-sections -fno-common -march=rv32imac -mabi=ilp32 -mcmodel=medlow -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

