
#include "ascii.h"


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
		
		*portModer = 0x555555555;
	
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


void ascii_write_string(char* s)
{
	clear_disp();
	ascii_goToXY(1,1);
	while(*s){
				ascii_write_char(*s++);
	}
}

void ascii_goToXY(unsigned char row, unsigned char column){
	unsigned char address = row-1;
	if(column == 2){
		address += 0x40;
	}
	ascii_write_cmd(0x80 | address);
}


void ascii_write_long(long val)
{
	ascii_goToXY(1,2);
	
	if (val==0)
	{
		ascii_write_char('0');
		return;
	}
	long power = 10000000;
	
	char res;
	while (!(res =val/power)){power/=10;}
		
	while(power)
	{
		res = val/power;
		ascii_write_char(res+'0');
		val=val%power;
		power/=10;
	}
	
	
	
}