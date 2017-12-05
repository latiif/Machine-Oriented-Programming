#define STK_CTRL ((volatile unsigned int *) (0xE000E010))
#define STK_LOAD ((volatile unsigned int *) (0xE000E014))
#define STK_VAL ((volatile unsigned int *) (0xE000E018))

#define PORT_BASE 0x40021000
// Definera word-adresser för initieringar
#define portModer ((volatile unsigned int*) (PORT_BASE))
#define portOtyper ((volatile unsigned short*) (PORT_BASE+0x4))
#define portPupdr ((volatile unsigned int*) (PORT_BASE+0xC))
// Definera byte-adresser för data- och styrregister
#define portIdrLow ((volatile unsigned short*) (PORT_BASE+0x10))
#define portIdrHigh ((volatile unsigned char*) (PORT_BASE+0x11))
#define portOdrLow ((volatile unsigned char*) (PORT_BASE+0x14))
#define portOdrHigh ((volatile unsigned char*) (PORT_BASE+0x15))
//Bitarna i styrregistret
#define B_E 0x40
#define B_SELECT 4
#define B_RW 2
#define B_RS 1

#define USBDM 1

//Displaymodulen ska anslutas till Port E så att:
// bit 15-8 = dataregister
// bit  7-0 = styrregister

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void ){
	__asm volatile(
		" LDR R0,=0x2001C000\n"		/* set stack */
		" MOV SP,R0\n"
		" BL main\n"				/* call main */
		"_exit: B .\n"				/* never return */
	) ;
}

void ascii_write_controller(unsigned char c);
unsigned char ascii_read_controller(void);
void ascii_write_cmd(unsigned char command);
void ascii_write_data(unsigned char data);
unsigned char ascii_read_status(void);
unsigned char ascii_read_data(void);

void delay_250ns(void){
	/* SystemCoreClock = 168000000 */
	*STK_CTRL = 0;
	*STK_LOAD = ( (168/4) -1);
	*STK_VAL = 0;
	*STK_CTRL = 5;
	while( (*STK_CTRL & 0x10000)== 0 ){}
	*STK_CTRL = 0;
}

void delay_micro(unsigned int us){
	while(us--) {
		delay_250ns();
		delay_250ns();
		delay_250ns();
		delay_250ns();
	}
}

void delay_milli(unsigned int ms){
	#ifdef SIMULATOR
		while(ms--)
			delay_micro(1);
	#else
		while(ms--)
			delay_micro(1000);
	#endif
}

void ascii_init(void){
	//initiera displayen:
		while((ascii_read_status() & 0x80) == 0x80){} 
		delay_micro(20); 
		ascii_write_cmd(0b0000111000); 
		delay_micro(100);
		
	//display control:
		while((ascii_read_status() & 0x80) == 0x80){} 
		delay_micro(20); 
		ascii_write_cmd(0b000001110); 
		delay_micro(100); 
		
	// entry mode set
		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
		delay_micro(20); 
		ascii_write_cmd(0b000001110); 
		delay_micro(100); 
}

void ascii_ctrl_bit_set(unsigned char x){
//adressera ASCii-displayen och ettställ de bitar som är 1 i x
	unsigned char c;
	c = *portOdrLow;
	c |= (B_SELECT | x);
	*portOdrLow = c;
}

void ascii_ctrl_bit_clear(unsigned char x){
//adressera ASCii-displayen och nollställ de bitar som är 1 i x
	unsigned char c;
	c = *portOdrLow;
	c = (B_SELECT | c & ~x);
	*portOdrLow = c;
}

void ascii_write_cmd(unsigned char command){
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}

void ascii_write_data(unsigned char data){
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

void clear_disp()
{
	while ((ascii_read_status() & 0x80)==0x80){}
	
	delay_micro(80);
	ascii_write_cmd(1);
	delay_milli(200);
}

unsigned char ascii_read_status(void){
	//sätt Port E bit15-8 som ingångar
	*portModer &= 0x0000FFFF;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char rv = ascii_read_controller();
	//sätt Port E bit15-8 som utgångar
	*portModer &= 0x0000FFFF;
	*portModer |= 0x55550000;
	return rv;
}

unsigned char ascii_read_data(void){
	//sätt Port E bit15-8 som ingångar
	*portModer &= 0x0000FFFF;
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char rv = ascii_read_controller();
	//sätt Port E bit15-8 som utgångar
	*portModer &= 0x0000FFFF;
	*portModer |= 0x55550000;
	return rv;
}

void ascii_write_controller(unsigned char c){
	ascii_ctrl_bit_set(B_E);
	*portOdrHigh = c;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E);
}

unsigned char ascii_read_controller(void){
	unsigned char c;
	ascii_ctrl_bit_set(B_E);
	delay_250ns();
	delay_250ns();
	c = *portIdrHigh;
	ascii_ctrl_bit_clear(B_E);
	return c;
}

void ascii_write_char(unsigned char c){
		while((ascii_read_status() & 0x80) == 0x80){} 
		delay_micro(8); 
		ascii_write_data(c);
		delay_micro(50); 
}

void ascii_goToXY(unsigned char row, unsigned char column){
	unsigned char address = row-1;
	if(column == 2){
		address += 0x40;
	}
	ascii_write_cmd(0x80 | address);
}

void init_app(void){
	
	#ifdef USBDM
		*((unsigned long *) 0x40023830) = 0x18;
		__asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
	#endif
	
	
	*portModer = 0x555555555;
	ascii_init();
}

void main(void){
	char *s;
	char test1[] = "Alfanumerisk ";
	char test2[] = "Display - test";
	
	
	init_app();
	

	while (1)
		{
			clear_disp();
			ascii_goToXY(1,1);
			s = test1;
			while(*s){
				ascii_write_char(*s++);
			}
			ascii_goToXY(1,2);
			s = test2;
			while(*s){
				ascii_write_char(*s++);
			}
			
			delay_milli(500);
		}
	return 0;
}