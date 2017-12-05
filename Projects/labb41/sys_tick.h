#ifndef SYS_TICK_H_
#define SYS_TICK_H_

 
 
 #define	STK_CTRL	((volatile unsigned int *) (0xE000E010))
 
 #define 	STK_LOAD	((volatile unsigned int *) (0xE000E014))
 
 #define	STK_VAL		((volatile unsigned int *) (0xE000E018))
 
 
static volatile int systick_flag;
static volatile int delay_count;

int getSystick();

void initSystick(void);

void delay(unsigned int count);
void systick_irq_handler(void);
void delay_1mikro(void);
void delay250ns(void);


#endif