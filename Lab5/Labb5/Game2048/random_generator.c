//
// Created by latiif on 12/7/17.
//

#include "random_generator.h"
#include "display.h"

unsigned rand()
{

	bit  = ((lfsr >> 0) ^ (lfsr >> 2) ^ (lfsr >> 3) ^ (lfsr >> 5) ) & 1;
	return lfsr =  (lfsr >> 1) | (bit << 15);
}

unsigned rand_interval(int from, int to){
	unsigned res = rand();
	res = res+from;
	res = res%to;

	return res;
}

void set_seed(unsigned short seed)
{
	lfsr=seed;
}
