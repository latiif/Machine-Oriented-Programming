/*
 * 	startup.c
 *
 */
 
 
 
 #define	STK_CTRL	((volatile unsigned int *) (0xE000E010))
 
 #define 	STK_LOAD	((volatile unsigned int *) (0xE000E014))
 
 #define	STK_VAL		((volatile unsigned int *) (0xE000E018))
 
 
 
  #define	GPIO_D		0x40021000
  
 #define 	GPIO_MODER	((volatile unsigned int *)	(GPIO_D))
 #define 	GPIO_OTYPER	((volatile unsigned short *)	(GPIO_D+0x4))
 #define 	GPIO_PUPDR	((volatile unsigned int *)	(GPIO_D+0xC))
 
#define 	GPIO_IDR_LOW	((volatile unsigned char *)	(GPIO_D+0x10))
#define 	GPIO_IDR_HIGH	((volatile unsigned char *)	(GPIO_D+0x11))

 #define 	GPIO_ODR_LOW	((volatile unsigned char *)	(GPIO_D+0x14))
 #define 	GPIO_ODR_HIGH	((volatile unsigned char *)	(GPIO_D+0x15))



 
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


void appInit(void);
void delay250ns(void);
void delayMicro(unsigned int us);
void delayMilli(unsigned int ms);

void main(void)
{
	appInit();
	while (1)
	{
		*GPIO_ODR_LOW = 0xFF;
		delayMilli(500);
		*GPIO_ODR_LOW = 0x0;
		delayMilli(500);
	}
}



void delayMilli(unsigned int ms)
{
	#ifdef SIMULATOR
		ms = ms / 100;
		ms ++;
	#endif
	
	int i ;
	while (ms--)
	{
		for (i=0;i<1000;i++)
		{
			delay250ns();
			delay250ns();
			delay250ns();
			delay250ns();
		}
	}
}

void appInit(void)
{
	
	#ifdef USBDM
		*((unsigned long *) 0x40023830) = 0x18;
		___asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
	#endif
	
	*GPIO_MODER = 0x00005555;
	
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


void delayMicro(unsigned int us)
{
	while (us--)
	{
		delay250ns();
		delay250ns();
		delay250ns();
		delay250ns();
	}
}