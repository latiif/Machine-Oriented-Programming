/*
 * 	startup.c
 *
 */
 
 

 
 #include "display.h"
 #include "input.h"
 #include "Gameboard.h"
 #include "random_generator.h"
 #include "ascii.h"
 
 
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}


void init_app();
void game_won();
void game_lost();

void main(void)
{
	init_app();
	delay_milli(100);
	

	draw_gameboard();
	graphic_draw_screen();
	
	
	char val;
	
	while(1)
	{
		clearBackBuffer();
		
		
		val=keyb();
		delay_milli(40);
			
		switch (val)
		{
			case 6:
			do_tick(D_RIGHT);
			break;
			
			case 4:
			do_tick(D_LEFT);
			break;
			
			case 2:
			do_tick(D_UP);
			break;
			
			case 8:
			do_tick(D_DOWN);
			break;
			
		}
		
		
		switch (do_check_end_condition()) {
            case -1:
				game_lost();
				return;
            case 1:
				game_won();
				return;
            case 0:
                break;
        }
		 
		
		ascii_write_long(getTotalScore());
		if (getHasMoved())
		{
			ascii_write_string("Drawing");
			draw_gameboard();
			
			graphic_draw_screen();
			
			ascii_write_string("Done");
			
		}
	}
	
	
}





void game_won()
{
	ascii_write_string("You won!");
	ascii_write_long(getTotalScore());
}


void game_lost()
{
	
	
	ascii_write_string("You lost!");
//	ascii_write_long(getTotalScore());
	
	
	clearBackBuffer();
	draw_gameoverScreen();
	graphic_draw_screen();
	
	
}

void init_app()
{
	
	graphic_initialize();
	graphic_clear_screen();
	input_initialize();
	clearBackBuffer();
	init_gameboard();
	ascii_init();
	set_seed(getTicks());
	
}

