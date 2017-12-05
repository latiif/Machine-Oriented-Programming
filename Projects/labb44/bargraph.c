#include "bargraph.h"

void initBargraph(void)
{
	*GPIO_MODER = 0x00005555;
}


void writeData(unsigned char d)
{
	*GPIO_ODR_LOW = d;
}