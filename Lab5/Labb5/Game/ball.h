#ifndef BALL_H_
#define BALL_H_



typedef struct tBall{
	int posX,posY;
	
	int spX,spY;
	
	void					(*setSpeed)		(struct tBall* this,int nSpX,int nSpY);
	void					(*draw)			(struct tBall* this);
	void 					(*update)		(struct tBall* this);
}Ball;



void setSpeed_Ball(Ball* this, int,int);
void update_Ball(Ball* this);
void draw_Ball(Ball* this);

#endif