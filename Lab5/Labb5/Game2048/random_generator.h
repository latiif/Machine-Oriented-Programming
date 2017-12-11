//
// Created by latiif on 12/7/17.
//

#ifndef GAME2048_RANDOMGENERATOR_H
#define GAME2048_RANDOMGENERATOR_H


unsigned short lfsr;
unsigned bit;


void set_seed(unsigned short);

unsigned rand();
unsigned rand_interval(int, int);

#endif //GAME2048_RANDOMGENERATOR_H
