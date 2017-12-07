

#ifndef GAMEBOARD_H
#define GAMEBOARD_H

#define D_INVALID -1
#define D_UP       1
#define D_DOWN     2
#define D_RIGHT    3
#define D_LEFT     4



struct gamestate_struct__ {
	int grid[4][4];
	int have_moved;
	long total_score;
	long score_last_move;
	int blocks_in_play;
} game;

void do_merge(int d);

void do_gravity(int d);

int do_check_end_condition(void);

int do_tick(int d);


void init_gameboard(void);

#endif
