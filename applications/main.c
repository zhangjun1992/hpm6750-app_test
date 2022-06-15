/*
 * Copyright (c) 2021 hpmicro
 *
 * Change Logs:
 * Date         Author          Notes
 * 2021-08-13   Fan YANG        first version
 *
 */

#include <rtthread.h>
#include <rtdevice.h>
#include "rtt_board.h"

typedef  void (*iapfun)(void);
iapfun jump2app;
void thread_entry(void *arg);

#define BOARD_FLASH_APP_START (0x80043000UL)

void iap_load_app(uint32_t appxaddr)
{
    //if(((*(vu32*)appxaddr)&0x2FFE0000)==0x20000000) //检查栈顶地址是否合法.
    //{
        //INTX_DISABLE();
        jump2app=(iapfun)*(uint32_t*)(appxaddr);      //用户代码区第二个字为程序开始地址(复位地址)
        //MSR_MSP(*(vu32*)appxaddr);                  //初始化APP堆栈指针(用户代码区的第一个字用于存放栈顶地址)
        jump2app();                                 //跳转到APP.
    //}
}

void close_interrupt(void)
{
    disable_global_irq(CSR_MSTATUS_MIE_MASK);
    for (int i=1; i<255; i++) {
        intc_m_disable_irq(i);
    }
}

void board_app_jump(void)
{
#if 1
    rt_hw_interrupt_disable();
    l1c_dc_writeback_all();
    l1c_dc_disable();
    l1c_ic_disable();
    fencei();
#endif
    //iap_load_app(0x80043000);
}
MSH_CMD_EXPORT(board_app_jump,board_app_jump);
int main(void)
{

    app_init_led_pins();
    rt_kprintf("this is app2 哈哈哈...\r\n");
    fal_init();
    static uint32_t led_thread_arg = 0;
    rt_thread_t led_thread = rt_thread_create("led_th", thread_entry, &led_thread_arg, 1024, 1, 10);
    rt_thread_startup(led_thread);

    return 0;
}


void thread_entry(void *arg)
{
    while(1){
        app_led_write(0, APP_LED_ON);
        rt_thread_mdelay(500);
        app_led_write(0, APP_LED_OFF);
        rt_thread_mdelay(500);
        app_led_write(1, APP_LED_ON);
        rt_thread_mdelay(500);
        app_led_write(1, APP_LED_OFF);
        rt_thread_mdelay(500);
        app_led_write(2, APP_LED_ON);
        rt_thread_mdelay(500);
        app_led_write(2, APP_LED_OFF);
        rt_thread_mdelay(500);
    }
}

#define RT_APP_PART_ADDR    0x80043000
