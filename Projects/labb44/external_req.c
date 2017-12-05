#include "external_req.h"


void irq_handler ( void )
{
	/* Om avbrott från EXTI2:
		kvittera avbrott från EXTI2 */
	if(   *((unsigned int *) EXTI_PR) & EXTI2_IRQ_BPOS )
	{
       *((unsigned int *) EXTI_PR) |= EXTI2_IRQ_BPOS;
	   c=~c;
	   *GPIO_E_ODR_LOW = 0x40;
	   *GPIO_E_ODR_LOW = 0;
 	}
	
	
		/* Om avbrott från EXTI1:
		kvittera avbrott från EXTI1 */
	if(   *((unsigned int *) EXTI_PR) & EXTI1_IRQ_BPOS )
	{
       *((unsigned int *) EXTI_PR) |= EXTI1_IRQ_BPOS;
	   c=0;
	   *GPIO_E_ODR_LOW = 0x20;
	   *GPIO_E_ODR_LOW = 0;
 	}
	
	
			/* Om avbrott från EXTI0:
		kvittera avbrott från EXTI0 */
	if(   *((unsigned int *) EXTI_PR) & EXTI0_IRQ_BPOS )
	{
       *((unsigned int *) EXTI_PR) |= EXTI0_IRQ_BPOS;
	   c++;
	   *GPIO_E_ODR_LOW = 0x10;
	   *GPIO_E_ODR_LOW = 0;
 	}
}


void initExternalReq(void)
{
	
	
	*GPIO_E_MODER = 0x00005500;
	
	
	*((unsigned int *) SYSCFG_EXTICR1) &= 0x0000;



	/* Koppla PE2 till avbrottslina EXTI2 */
  	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0400;
	/* Konfigurera EXTI2 för att generera avbrott */
  	 *((unsigned int *) EXTI_IMR) |= EXTI2_IRQ_BPOS;
	/* Konfigurera för avbrott på negativ flank */
 	 *((unsigned int *) EXTI_RTSR) |= EXTI2_IRQ_BPOS;		
	/* Sätt upp avbrottsvektor */
  	 *((void (**)(void) ) EXTI2_IRQVEC ) = irq_handler;     
   	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI2 kopplats till */
    	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI2_IRQ_BPOS; 
		
		
	
		
	/* Koppla PE1 till avbrottslina EXTI1 */
  	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0040;
	 
	/* Konfigurera EXTI1 för att generera avbrott */
  	 *((unsigned int *) EXTI_IMR) |= EXTI1_IRQ_BPOS;
	 
	/* Konfigurera för avbrott på negativ flank */
 	 *((unsigned int *) EXTI_RTSR) |= EXTI1_IRQ_BPOS;		
	 
	 
	/* Sätt upp avbrottsvektor */
  	 *((void (**)(void) ) EXTI1_IRQVEC ) = irq_handler;     
	 
	 
   	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI1 kopplats till */
    	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI1_IRQ_BPOS; 	
		
		
		
	/* Koppla PE0 till avbrottslina EXTI0 */
  	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0004;
	 
	/* Konfigurera EXTI0 för att generera avbrott */
  	 *((unsigned int *) EXTI_IMR) |= EXTI0_IRQ_BPOS;
	 
	/* Konfigurera för avbrott på negativ flank */
 	 *((unsigned int *) EXTI_RTSR) |= EXTI0_IRQ_BPOS;		
	 
	 
	/* Sätt upp avbrottsvektor */
  	 *((void (**)(void) ) EXTI0_IRQVEC ) = irq_handler;     
	 
	 
   	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI0 kopplats till */
    	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI0_IRQ_BPOS; 	
	
}