
#include "display.h"
#define SIMULATOR 1

unsigned char backBuffer[1024];


unsigned short TICKS__=0;


unsigned short getTicks()
{
	return TICKS__;
}

static void graphic_ctr_bit_set(unsigned char x)
{
	unsigned char c;
	c = *portOdrLow;
	c &= ~B_SELECT;
	c |= (~B_SELECT & x);
	*portOdrLow = c;
}

static void graphic_ctr_bit_clear(unsigned char x)
{
	unsigned char c;
	c = *portOdrLow;
	c &= ~B_SELECT;
	c &= ~x;
	*portOdrLow = c;
}


static void select_controller(unsigned char controller)
{
	switch(controller)
	{
		case 0:
			graphic_ctr_bit_clear(B_CS1|B_CS2);
			break;
		case B_CS1:
			graphic_ctr_bit_set(B_CS1);
			graphic_ctr_bit_clear(B_CS2);
			break;
		case B_CS2:
			graphic_ctr_bit_clear(B_CS1);
			graphic_ctr_bit_set(B_CS2);
			break;
		case B_CS1|B_CS2:
			graphic_ctr_bit_set(B_CS1|B_CS2);
			break;
	}
}

void graphic_initialize(void)
{
	graphic_ctr_bit_set(B_E);
	delay_micro(10);
	
	graphic_ctr_bit_clear(B_CS1|B_CS2|B_RST|B_E);
	delay_milli(30);
	graphic_ctr_bit_set(B_RST);
	delay_milli(100);
	
	graphic_write_command(LCD_OFF,	B_CS1|B_CS2);
	graphic_write_command(LCD_ON,	B_CS1|B_CS2);
	graphic_write_command(LCD_DISP_START,	B_CS1|B_CS2);
	graphic_write_command(LCD_SET_ADD,		B_CS1|B_CS2);
	graphic_write_command(LCD_SET_PAGE,		B_CS1|B_CS2);
	select_controller(0);
}

static void graphic_wait_ready(void)
{
	unsigned char c;
	graphic_ctr_bit_clear(B_E);
	*portModer = 0x00005555;
	graphic_ctr_bit_clear(B_RS);
	graphic_ctr_bit_set(B_RW);
	delay_250ns();
	delay_250ns();
	
	while (1)
	{
		graphic_ctr_bit_set(B_E);
		delay_250ns();
		delay_250ns();
		c = *portIdrHigh & LCD_BUSY;
		graphic_ctr_bit_clear(B_E);
		delay_250ns();
		delay_250ns();
		if (c == 0)
		{
			break;
		}
	}
	
	*portModer = 0x55555555;
}


static unsigned char graphic_read(unsigned char controller)
{
	unsigned char c;
	graphic_ctr_bit_clear(B_E);
	*portModer = 0x00005555;
	graphic_ctr_bit_set(B_RS|B_RW);
	select_controller(controller);
	
	delay_250ns();
	delay_250ns();
	
	graphic_ctr_bit_set(B_E);
	
	delay_250ns();
	delay_250ns();
	
	c = *portIdrHigh;
	graphic_ctr_bit_clear(B_E);
	
	*portModer = 0x55555555;
	
	
	if (controller & B_CS1)
	{
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	
	if (controller & B_CS2)
	{
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	
	return c;
}
static unsigned char graphic_read_data(unsigned char controller)
{
	graphic_read(controller);
	return graphic_read(controller);
}


static void graphic_write(unsigned char value, unsigned char controller)
{
	*portOdrHigh = value;
	select_controller(controller);
	
	delay_250ns(); delay_250ns();
	
	graphic_ctr_bit_set(B_E);
	delay_250ns(); delay_250ns();
	
	graphic_ctr_bit_clear(B_E);
	
	if (controller & B_CS1)
	{
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	
	if (controller & B_CS2)
	{
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	
}


static void graphic_write_command(unsigned char command, unsigned char controller)
{
	graphic_ctr_bit_clear(B_E);
	select_controller(controller);
	graphic_ctr_bit_clear(B_RS|B_RW);
	graphic_write(command,controller);
}
static void graphic_write_data(unsigned char data, unsigned char controller)
{
	graphic_ctr_bit_clear(B_E);
	select_controller(controller);
	graphic_ctr_bit_set(B_RS);
	graphic_ctr_bit_clear(B_RW);
	graphic_write(data,controller);
	
}

void graphic_clear_screen(void)
{
	#ifdef SIMULATOR
		return;
	#endif
	unsigned char i,j;
	
	for (j=0;j<8;j++)
	{
		graphic_write_command(LCD_SET_PAGE	|	j,B_CS1|B_CS2);
		graphic_write_command(LCD_SET_ADD	|	0,B_CS1|B_CS2);
		for (i = 0;i<=63;i++)
		{
			graphic_write_data(0,B_CS1|B_CS2);
		}
	}
}


void delay_250ns(void){
	/* SystemCoreClock = 168000000 */
	*STK_CTRL = 0;
	*STK_LOAD = ( (168/4) -1);
	*STK_VAL = 0;
	*STK_CTRL = 5;
	while( (*STK_CTRL & 0x10000)== 0 ){TICKS__++;}
	*STK_CTRL = 0;
}

void delay_micro(unsigned int us){
	while(us--) {
		delay_250ns();
		delay_250ns();
		delay_250ns();
		delay_250ns();
	}
}

void delay_milli(unsigned int ms){
	#ifdef SIMULATOR
		while(ms--)
			delay_micro(1);
	#else
	//ms *= 1000;
		while(ms--)
			delay_micro(1000);
	#endif
}


void clearBackBuffer(void)
{
	int i;
	for (i = 0; i < 1024; i++)
		backBuffer[i] = 0;
}

void pixel(int x, int y) 
{
	unsigned char mask;
	int index = 0;
	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) return;
	mask = 1 << ((y-1)%8);
	if(x > 63) 
	{
		x -= 64;
		index = 512;
	}
	index += x + ((y-1)/8)*64;
	backBuffer[index] |= mask;
}

void graphic_draw_screen(void)
{
	unsigned char i, j, controller, c;
	unsigned int k = 0;
	for(c = 0; c < 2; c++) 
	{
		controller = (c == 0) ? B_CS1 : B_CS2;
		for(j = 0; j < 8; j++) 
		{
			graphic_write_command(LCD_SET_PAGE | j, controller);
			graphic_write_command(LCD_SET_ADD | 0, controller);
			for(i = 0; i <= 63; i++, k++) 
			{
				graphic_write_data(backBuffer[k], controller);
			}
		}
	}
}