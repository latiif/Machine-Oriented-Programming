/*
 * 	startup.c
 *
 */
 

#include "bargraph.h"
#include "external_req.h"

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}






void app_init ( void )
{
	
	#ifdef USBDM
		*((unsigned long *) 0x40023830 ) = 0x18;
			
		*((unsigned long *) 0x40023844) |= 0x4000;		
		*((unsigned long *) 0xE000ED08)  = 0x2001C000;
	#endif
	
	
	initBargraph();
	initExternalReq();
}

void main(void)
{
		app_init();
		writeData(0x0F);
		while(1)
		{
			writeData(c);
		}
}

