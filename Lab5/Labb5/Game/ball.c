#include "ball.h"
#include "ball.xbm"
#include "display.h"

void setSpeed_Ball(Ball* this, int nspX,int nspY)
{
	this->spX = nspX;
	this->spY = nspY;
}
void draw_Ball(Ball* this)
{
		int x = this->posX;
		int y = this->posY;
		
		int width = ball_width;
		int height = ball_height;
		
		unsigned char* data = ball_bits;
		
		
		
		int i,j,k,width_in_bytes;
		
		if (width%8==0)
			width_in_bytes= width/8;
		else
			width_in_bytes = width+1;
			
			
		for (i = 0;i<height;i++)
		{
			for (j=0;j<width_in_bytes;j++)
			{
				unsigned char byte = data[i*width_in_bytes + j];
				for (k=0;k<8;k++)
				{
					if (byte&(1<<k))
						pixel(8*j+k+x+1,i+y+1);
				}
			}
		}
}

void update_Ball(Ball* this)
{
		
		this->posX += this->spX;
		this->posY += this->spY;
  
		if (this->posX + ball_width > DISP_WIDTH)
		{
			this->posX = DISP_WIDTH-ball_width;
			this->spX *= -1;
		}

  
		if (this->posY + ball_height > DISP_HEIGHT)
		{
			this->posY = DISP_HEIGHT - ball_height;
			this->spY *= -1;
		}
  
		if (this->posX<1)
		{
			this->posX=1;
			this->spX *= -1;
		}
		
  
		if (this->posY < 1)
		{
			this->posY = 1;
			this->spY *= -1;
		}
  
		this->draw(this);
}