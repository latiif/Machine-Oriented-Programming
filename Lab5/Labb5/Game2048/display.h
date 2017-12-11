#ifndef DISPLAY_H_
#define DISPLAY_H_

#define DISP_WIDTH 128
#define DISP_HEIGHT 64

#define STK_CTRL ((volatile unsigned int *) (0xE000E010))
#define STK_LOAD ((volatile unsigned int *) (0xE000E014))
#define STK_VAL ((volatile unsigned int *) (0xE000E018))



#define PORT_DISPLAY_BASE	0x40021000 //MD407 portE
#define portModer	((volatile unsigned int *) (PORT_DISPLAY_BASE))
#define portOtyper	((volatile unsigned short*) (PORT_DISPLAY_BASE+0x4))
#define portOspeedr	((volatile unsigned int*) (PORT_DISPLAY_BASE+0x8))
#define portPupdr	((volatile unsigned int*) (PORT_DISPLAY_BASE+0xC))
#define portIdr		((volatile unsigned short*) (PORT_DISPLAY_BASE+0x10))
#define portIdrHigh	((volatile unsigned char*) (PORT_DISPLAY_BASE+0x11))
#define portOdrLow	((volatile unsigned char*) (PORT_DISPLAY_BASE+0x14))
#define portOdrHigh	((volatile unsigned char*) (PORT_DISPLAY_BASE+0x14+1))



#define B_E	0x40	//enable
#define B_RST 0x20	//RESET
#define B_CS2	0x10 //controller select2
#define B_CS1	8
#define B_SELECT	4
#define B_RW	2
#define	B_RS	1


#define LCD_ON	0x3F
#define LCD_OFF	0x3E
#define LCD_SET_ADD	0x40
#define LCD_SET_PAGE	0xB8
#define LCD_DISP_START	0xC0
#define LCD_BUSY	0x80

unsigned short getTicks();

void delay_250ns(void);
void delay_micro(unsigned int us);
void delay_milli(unsigned int ms);
static void graphic_ctr_bit_set(unsigned char x);
static void graphic_ctr_bit_clear(unsigned char x);
static void select_controller(unsigned char controller);
void graphic_initialize(void);
static void graphic_wait_ready(void);
static unsigned char graphic_read(unsigned char controller);
static unsigned char graphic_read_data(unsigned char controller);
static void graphic_write(unsigned char value, unsigned char controller);
static void graphic_write_command(unsigned char command, unsigned char controller);
static void graphic_write_data(unsigned char data, unsigned char controller);
void graphic_clear_screen(void);
void clearBackBuffer(void);
void pixel(int x, int y) ;
void graphic_draw_screen(void);
#endif