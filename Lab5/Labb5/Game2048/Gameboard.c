//
// Created by latiif on 12/7/17.
//

#include "Gameboard.h"
#include "display.h"
#include "random_generator.h"


const long values[] = {
		0, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048
};


void do_gravity(int d)
{
#define GRAVITATE_DIRECTION(_v1, _v2, _xs, _xc, _xi, _ys, _yc, _yi, _x, _y) \
    do {                                                                    \
        int break_cond = 0;                                                 \
        while (!break_cond) {                                               \
            break_cond = 1;                                                 \
            for (int (_v1) = _xs; _v1 _xc; (_v1) += _xi) {                      \
                for (int _v2 = _ys; _v2 _yc; _v2 += _yi) {                  \
                    if (!game.grid[x][y] && game.grid[x + _x][y + _y]) {    \
                        game.grid[x][y] = game.grid[x + _x][y + _y];        \
                        game.grid[x + _x][y + _y] = break_cond = 0;         \
                        game.have_moved = 1;                                \
                    }                                                       \
                }                                                           \
            }                                                               \
        }                                                                   \
    } while (0);

	switch (d) {
		case D_LEFT:
			GRAVITATE_DIRECTION(x, y, 0, < 3, 1, 0, < 4, 1, 1, 0);
			break;
		case D_RIGHT:
			GRAVITATE_DIRECTION(x, y, 3, > 0, -1, 0, < 4, 1, -1, 0);
			break;
		case D_DOWN:
			GRAVITATE_DIRECTION(y, x, 3, > 0, -1, 0, < 4, 1, 0, -1);
			break;
		case D_UP:
			GRAVITATE_DIRECTION(y, x, 0, < 3, 1, 0, < 4, 1, 0, 1);
			break;
	}

#undef GRAVITATE_DIRECTION
}

void do_merge(int d)
{
/* These macros look pretty scary, but mainly demonstrate some space saving */
#define MERGE_DIRECTION(_v1, _v2, _xs, _xc, _xi, _ys, _yc, _yi, _x, _y)     \
    do {                                                                    \
        for (int _v1 = _xs; _v1 _xc; _v1 += _xi) {                          \
            for (int _v2 = _ys; _v2 _yc; _v2 += _yi) {                      \
                if (game.grid[x][y] && (game.grid[x][y] ==                  \
                                    game.grid[x + _x][y + _y])) {           \
                    game.grid[x][y] += (game.have_moved = 1);               \
                    game.grid[x + _x][y + _y] = (0 * game.blocks_in_play--);\
                    game.score_last_move += values[game.grid[x][y]];        \
                    game.total_score += values[game.grid[x][y]];            \
                }                                                           \
            }                                                               \
        }                                                                   \
    } while (0)

	game.score_last_move = 0;

	switch (d) {
		case D_LEFT:
			MERGE_DIRECTION(x, y, 0, < 3, 1, 0, < 4, 1, 1, 0);
			break;
		case D_RIGHT:
			MERGE_DIRECTION(x, y, 3, > 0, -1, 0, < 4, 1, -1, 0);
			break;
		case D_DOWN:
			MERGE_DIRECTION(y, x, 3, > 0, -1, 0, < 4, 1, 0, -1);
			break;
		case D_UP:
			MERGE_DIRECTION(y, x, 0, < 3, 1, 0, < 4, 1, 0, 1);
			break;
	}

#undef MERGE_DIRECTION
}


int do_check_end_condition(void)
{
	int ret = -1;
	for (int x = 0; x < 4; ++x) {
		for (int y = 0; y < 4; ++y) {
			if (values[game.grid[x][y]] == 2048)
				return 1;
			if (!game.grid[x][y] ||
			    ((x + 1 < 4) && (game.grid[x][y] == game.grid[x + 1][y])) ||
			    ((y + 1 < 4) && (game.grid[x][y] == game.grid[x][y + 1])))
				ret = 0;
		}
	}
	return ret;
}


int do_tick(int d)
{
	game.have_moved = 0;
	do_gravity(d);
	do_merge(d);
	do_gravity(d);
	do_newblock();
	return game.have_moved;
}

void init_gameboard(void)
{
	for (int i=0;i<4;i++)
		for (int j=0;j<4;j++)
			game.grid[i][j]=0;
			
	do_newblock();

}

void draw_gameboard()
{
	for (int i=0;i<4;i++){
		for (int j=0;j<4;j++)
		{
			draw_tile(i,j,game.grid[i][j]);
		}
	}
}

void draw_tile(int posx,int posy,int val)
{
	int x =16*posx;
	int y =16*posy;
	x+=32;
	int width = 16;
	int height = 16;
	
	unsigned char* data = getTileData(val);
	
	
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



unsigned char * getTileData(int value)
{
	#include "tile_0.xbm"
	#include "tile_2.xbm"
	#include "tile_4.xbm"
	#include "tile_8.xbm"
	#include "tile_16.xbm"
	#include "tile_32.xbm"
	#include "tile_64.xbm"
	#include "tile_128.xbm"
	#include "tile_256.xbm"
	#include "tile_512.xbm"
	#include "tile_1024.xbm"
	#include "tile_2048.xbm"
	
	switch (value)
	{
		case 0:
		return tile_0_bits;
		
		case 1:
		return tile_2_bits;
		
		case 2:
		return tile_4_bits;
		
		case 3:
		return tile_8_bits;
		
		case 4:
		return tile_16_bits;
		
		case 5:
		return tile_32_bits;
		
		case 6:
		return tile_64_bits;
		
		case 7:
		return tile_128_bits;
		
		case 8:
		return tile_256_bits;
		
		case 9:
		return tile_512_bits;
		
		case 10:
		return tile_1024_bits;
		
		case 11:
		return tile_2048_bits;
	}
	
}

void do_newblock(void) {
    if (game.blocks_in_play >= 16) return;
 
    int bn = rand() % (16 - game.blocks_in_play);
    int pn = 0;
 
    for (int x = 0; x < 4; ++x) {
        for (int y = 0; y < 4; ++y) {
            if (game.grid[x][y])
                continue;
 
            if (pn == bn){
                game.grid[x][y] = rand() % 10 ? 1 : 2;
                game.blocks_in_play += 1;
                return;
            }
            else {
                ++pn;
            }
        }
    }
}


void draw_gameoverScreen()
{
	#include "game_over.xbm";
	
	int x =0;
	int y =0;
	x+=32;
	
	int width = game_over_width;
	int height = game_over_height;
	
	unsigned char* data =game_over_bits;
	
	
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

int getHasMoved()
{
	int res=game.have_moved;
	
	game.have_moved=0;
	
	return res;
	
}

long getTotalScore()
{
	return game.total_score;
}