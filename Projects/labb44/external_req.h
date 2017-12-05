#ifndef EXTERNAL_REQ_H_
#define EXTERNAL_REQ_H_

#define SYSCFG_EXTICR1	0x40013808
#define EXTI_IMR		0x40013C00
#define EXTI_FTSR		0x40013C0C
#define EXTI_RTSR		0x40013C08
#define EXTI_PR			0x40013C14
#define NVIC_ISER0		0xE000E100

#define GPIO_E	0x40021000
 #define 	GPIO_E_MODER	((volatile unsigned int *)	(GPIO_E))

#define 	GPIO_E_ODR_LOW	((volatile unsigned char *)	(GPIO_E+0x14))

/*
 * Defintions for IRQ2
 */
#define EXTI2_IRQ_BPOS  (1<<2)
#define EXTI2_IRQVEC	0x2001C060
#define NVIC_EXTI2_IRQ_BPOS  (1<<8)

/*
 * Defintions for IRQ1
 */
#define EXTI1_IRQ_BPOS  (1<<1)
#define EXTI1_IRQVEC	0x2001C05C
#define NVIC_EXTI1_IRQ_BPOS  (1<<7)


/*
 * Defintions for IRQ0
 */
#define EXTI0_IRQ_BPOS  (1)
#define EXTI0_IRQVEC	0x2001C058
#define NVIC_EXTI0_IRQ_BPOS  (1<<6)

unsigned int c;

void irq_handler(void);
void initExternalReq(void);



#endif