#include "sys_tick.h"

void initSystick()
{
    *((void (**)(void))0x2001C03C) = systick_irq_handler;
}

void delay_1mikro(void)
{
    /* SystemCoreClock = 168000000 */
    *STK_CTRL = 0;
    *STK_LOAD = (168 - 1);
    *STK_VAL = 0;
    *STK_CTRL = 7;
}


void systick_irq_handler(void)
{
    *STK_CTRL = 0;
    delay_count--;
    if(delay_count > 0)
		delay_1mikro();
    else
	systick_flag = 1;
}

void delay(unsigned int count)
{
    if(count == 0)
	return;
    delay_count = count;
    systick_flag = 0;
	delay_1mikro();
}

int getSystick()
{
	return systick_flag;
}

void delay250ns(void)
{
	*STK_CTRL = 0;
	*STK_LOAD = (( 168/4) -1);
	
	*STK_VAL = 0;
	*STK_CTRL=5;
	
	while ((*STK_CTRL & 0x10000)==0)
	{}
	
	*STK_CTRL=0;
}



