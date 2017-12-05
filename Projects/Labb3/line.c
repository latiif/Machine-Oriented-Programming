#include "line.h"
#include "display.h"

int getLength_line(Line* this)
{
	return this->length;
}


Direction getDirection_line(Line* this)
{
	return this->direction;
}

void draw_line(Line* this)
{
	int x0 = this->startX;
	int y0 = this->startY;
	
	int len = this->length;
	
	switch (this->direction)
	{
		case (HORIZONTAL):
			for (int i=x0;i<len;i++)
			{
				pixel(i,y0);
			}
		break;
		
		case (VERTICAL):
			for (int j=y0;j<len;j++)
			{
				pixel(x0,j);
			}
		break;
	}
}

Line* createLine(int len,Direction dir,int x0,int y0)
{
	
	return 0;
}

