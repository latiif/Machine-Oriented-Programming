/*
 * 	startup.c
 *
 */

#include "bargraph.h"
#include "sys_tick.h"


#define DELAY_COUNT 1000*1000*2



void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void startup(void)
{
    __asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
                   " MOV SP,R0\n"
                   " BL main\n"   /* call main */
                   "_exit: B .\n" /* never return */
        );
}

void appInit(void);

void main(void)
{

    appInit();
	
	unsigned char c=0x00;
		writeData(0xF0);

	delay(DELAY_COUNT);
	
	while(1)
	{
		if (getSystick())
			break;
		c+=1;
		c=c%(0xFF);
		//writeData(c);
	}
	
	writeData(c);
}

void appInit(void)
{
	
	#ifdef USBDM
		*((unsigned long *) 0x40023830 ) = 0x18;
			
			__asm volatile (" LDR R0, =0x08000209\n BLX R0 \n");
		
		*((unsigned long *) 0xE000ED08)  = 0x2001C000;
	#endif
	
    initSystick();
    initBargraph();
}
