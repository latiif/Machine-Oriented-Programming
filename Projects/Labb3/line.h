//
// Created by latiif on 11/16/17.
//

#ifndef LINE_H_
#define LINE_H_

typedef enum {HORIZONTAL,VERTICAL} Direction;


typedef struct tLine{
    int length;
	Direction direction;
	
	int startX,startY;
	
	int						(*getLength)	(struct tLine* this);
	Direction				(*getDirection)	(struct tLine* this);
	void					(*draw)			(struct tLine* this);
}Line;


int getLength_line(Line* this);
Direction getDirection_line(Line* this);
void draw_line(Line* this);

Line* createLine(int len,Direction dir,int x0,int y0);

#endif //LINE_H_
