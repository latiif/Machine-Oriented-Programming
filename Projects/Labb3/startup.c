/*
 * 	startup.c
 *
 */



#include "display.h"
#include "line.h"
#include "ball.h"
#include "input.h"
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void init_app(void);
void upp32(void);
void upp31(void);
void upp33(void);

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void)
{	
	
upp33();
}

void init_app(void)
{
	
	#ifdef USBDM
		*((unsigned long *) 0x40023830) = 0x18;
		__asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
	#endif
	
	
	graphic_initialize();
	
	graphic_clear_screen();
	
}

void upp31(void)
{
	init_app();
	
	
	Line l1,l2;

	l1 = (Line){64,VERTICAL,5,1,getLength_line,getDirection_line,draw_line};
	l2 = (Line){128,HORIZONTAL,1,5,getLength_line,getDirection_line,draw_line};
	
	
	
	
		clearBackBuffer();
		
		l1.draw(&l1);
		l2.draw(&l2);
		
		graphic_draw_screen();
		
		delay_milli(500);
		
		clearBackBuffer();
		graphic_draw_screen();
	
}

void upp32(void)
{

	init_app();
	
	Ball *b;
	b = &(Ball){46,32,-15,15,setSpeed_Ball,draw_Ball,update_Ball};
	
	while(1)
	{
		clearBackBuffer();
		b->update(b);
		graphic_draw_screen();
		delay_milli(200);

	}
	
	
	
}

void upp33(void)
{
		init_app();
		input_initialize();
		
		Ball *b;
		b = &(Ball){1,1,0,0,setSpeed_Ball,draw_Ball,update_Ball};
		
		
		clearBackBuffer();
		//pixel(1,64);
		
		graphic_draw_screen();
		
		delay_milli(1000);
		
		char val;
		while(1)
		{
			clearBackBuffer();
			
			b->update(b);
			
			val=keyb();
			delay_milli(40);
			
			switch (val)
			{
				case 6:
					b->setSpeed(b,2,0);
					break;
				case 4:
					b->setSpeed(b,-2,0);
					break;
				case 2:
					b->setSpeed(b,0,-2);
					break;
				case 8:
					b->setSpeed(b,0,2);
					break;
				case 5:
					b->setSpeed(b,0,0);
					break;
			}
			
			
			//pixel(1,66);

			graphic_draw_screen();
		}

}