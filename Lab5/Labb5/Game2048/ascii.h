#ifndef ASCII_H_

#define ASCII_H_

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

#define SIMULATOR 1


void ascii_write_char(unsigned char c);

void ascii_write_string(char* s);
void ascii_write_long(long);

void ascii_write_controller(unsigned char c);
unsigned char ascii_read_controller(void);
void ascii_write_cmd(unsigned char command);
void ascii_write_data(unsigned char data);
unsigned char ascii_read_status(void);
unsigned char ascii_read_data(void);

void ascii_goToXY(unsigned char row, unsigned char column);

#endif