   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/shriaf/Documents/Labb2/Upp23/startup.c"
   1:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define STK_CTRL ((volatile unsigned int *) (0xE000E010))
   2:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define STK_LOAD ((volatile unsigned int *) (0xE000E014))
   3:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define STK_VAL ((volatile unsigned int *) (0xE000E018))
   4:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
   5:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define PORT_BASE 0x40021000
   6:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** // Definera word-adresser för initieringar
   7:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portModer ((volatile unsigned int*) (PORT_BASE))
   8:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portOtyper ((volatile unsigned short*) (PORT_BASE+0x4))
   9:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portPupdr ((volatile unsigned int*) (PORT_BASE+0xC))
  10:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** // Definera byte-adresser för data- och styrregister
  11:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portIdrLow ((volatile unsigned short*) (PORT_BASE+0x10))
  12:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portIdrHigh ((volatile unsigned char*) (PORT_BASE+0x11))
  13:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portOdrLow ((volatile unsigned char*) (PORT_BASE+0x14))
  14:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define portOdrHigh ((volatile unsigned char*) (PORT_BASE+0x15))
  15:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** //Bitarna i styrregistret
  16:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define B_E 0x40
  17:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define B_SELECT 4
  18:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define B_RW 2
  19:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define B_RS 1
  20:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  21:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** #define USBDM 1
  22:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  23:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** //Displaymodulen ska anslutas till Port E så att:
  24:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** // bit 15-8 = dataregister
  25:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** // bit  7-0 = styrregister
  26:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  27:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  28:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  29:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void startup ( void ){
  26              		.loc 1 29 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  30:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	__asm volatile(
  31              		.loc 1 30 0
  32              		.syntax divided
  33              	@ 30 "C:/Users/shriaf/Documents/Labb2/Upp23/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  31:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		" LDR R0,=0x2001C000\n"		/* set stack */
  32:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		" MOV SP,R0\n"
  33:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		" BL main\n"				/* call main */
  34:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		"_exit: B .\n"				/* never return */
  35:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	) ;
  36:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
  40              		.loc 1 36 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	delay_250ns
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	delay_250ns:
  56              	.LFB1:
  37:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  38:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_controller(unsigned char c);
  39:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_controller(void);
  40:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_cmd(unsigned char command);
  41:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_data(unsigned char data);
  42:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_status(void);
  43:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_data(void);
  44:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  45:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void delay_250ns(void){
  57              		.loc 1 45 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  46:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	/* SystemCoreClock = 168000000 */
  47:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*STK_CTRL = 0;
  67              		.loc 1 47 0
  68 0004 0C4B     		ldr	r3, .L4
  69 0006 0022     		movs	r2, #0
  70 0008 1A60     		str	r2, [r3]
  48:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*STK_LOAD = ( (168/4) -1);
  71              		.loc 1 48 0
  72 000a 0C4B     		ldr	r3, .L4+4
  73 000c 2922     		movs	r2, #41
  74 000e 1A60     		str	r2, [r3]
  49:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*STK_VAL = 0;
  75              		.loc 1 49 0
  76 0010 0B4B     		ldr	r3, .L4+8
  77 0012 0022     		movs	r2, #0
  78 0014 1A60     		str	r2, [r3]
  50:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*STK_CTRL = 5;
  79              		.loc 1 50 0
  80 0016 084B     		ldr	r3, .L4
  81 0018 0522     		movs	r2, #5
  82 001a 1A60     		str	r2, [r3]
  51:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	while( (*STK_CTRL & 0x10000)== 0 ){}
  83              		.loc 1 51 0
  84 001c C046     		nop
  85              	.L3:
  86              		.loc 1 51 0 is_stmt 0 discriminator 1
  87 001e 064B     		ldr	r3, .L4
  88 0020 1A68     		ldr	r2, [r3]
  89 0022 8023     		movs	r3, #128
  90 0024 5B02     		lsls	r3, r3, #9
  91 0026 1340     		ands	r3, r2
  92 0028 F9D0     		beq	.L3
  52:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*STK_CTRL = 0;
  93              		.loc 1 52 0 is_stmt 1
  94 002a 034B     		ldr	r3, .L4
  95 002c 0022     		movs	r2, #0
  96 002e 1A60     		str	r2, [r3]
  53:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
  97              		.loc 1 53 0
  98 0030 C046     		nop
  99 0032 BD46     		mov	sp, r7
 100              		@ sp needed
 101 0034 80BD     		pop	{r7, pc}
 102              	.L5:
 103 0036 C046     		.align	2
 104              	.L4:
 105 0038 10E000E0 		.word	-536813552
 106 003c 14E000E0 		.word	-536813548
 107 0040 18E000E0 		.word	-536813544
 108              		.cfi_endproc
 109              	.LFE1:
 111              		.align	1
 112              		.global	delay_micro
 113              		.syntax unified
 114              		.code	16
 115              		.thumb_func
 116              		.fpu softvfp
 118              	delay_micro:
 119              	.LFB2:
  54:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  55:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void delay_micro(unsigned int us){
 120              		.loc 1 55 0
 121              		.cfi_startproc
 122              		@ args = 0, pretend = 0, frame = 8
 123              		@ frame_needed = 1, uses_anonymous_args = 0
 124 0044 80B5     		push	{r7, lr}
 125              		.cfi_def_cfa_offset 8
 126              		.cfi_offset 7, -8
 127              		.cfi_offset 14, -4
 128 0046 82B0     		sub	sp, sp, #8
 129              		.cfi_def_cfa_offset 16
 130 0048 00AF     		add	r7, sp, #0
 131              		.cfi_def_cfa_register 7
 132 004a 7860     		str	r0, [r7, #4]
  56:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	while(us--) {
 133              		.loc 1 56 0
 134 004c 07E0     		b	.L7
 135              	.L8:
  57:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_250ns();
 136              		.loc 1 57 0
 137 004e FFF7FEFF 		bl	delay_250ns
  58:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_250ns();
 138              		.loc 1 58 0
 139 0052 FFF7FEFF 		bl	delay_250ns
  59:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_250ns();
 140              		.loc 1 59 0
 141 0056 FFF7FEFF 		bl	delay_250ns
  60:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_250ns();
 142              		.loc 1 60 0
 143 005a FFF7FEFF 		bl	delay_250ns
 144              	.L7:
  56:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_250ns();
 145              		.loc 1 56 0
 146 005e 7B68     		ldr	r3, [r7, #4]
 147 0060 5A1E     		subs	r2, r3, #1
 148 0062 7A60     		str	r2, [r7, #4]
 149 0064 002B     		cmp	r3, #0
 150 0066 F2D1     		bne	.L8
  61:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	}
  62:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 151              		.loc 1 62 0
 152 0068 C046     		nop
 153 006a BD46     		mov	sp, r7
 154 006c 02B0     		add	sp, sp, #8
 155              		@ sp needed
 156 006e 80BD     		pop	{r7, pc}
 157              		.cfi_endproc
 158              	.LFE2:
 160              		.align	1
 161              		.global	delay_milli
 162              		.syntax unified
 163              		.code	16
 164              		.thumb_func
 165              		.fpu softvfp
 167              	delay_milli:
 168              	.LFB3:
  63:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  64:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void delay_milli(unsigned int ms){
 169              		.loc 1 64 0
 170              		.cfi_startproc
 171              		@ args = 0, pretend = 0, frame = 8
 172              		@ frame_needed = 1, uses_anonymous_args = 0
 173 0070 80B5     		push	{r7, lr}
 174              		.cfi_def_cfa_offset 8
 175              		.cfi_offset 7, -8
 176              		.cfi_offset 14, -4
 177 0072 82B0     		sub	sp, sp, #8
 178              		.cfi_def_cfa_offset 16
 179 0074 00AF     		add	r7, sp, #0
 180              		.cfi_def_cfa_register 7
 181 0076 7860     		str	r0, [r7, #4]
  65:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	#ifdef SIMULATOR
  66:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while(ms--)
 182              		.loc 1 66 0
 183 0078 02E0     		b	.L10
 184              	.L11:
  67:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			delay_micro(1);
 185              		.loc 1 67 0
 186 007a 0120     		movs	r0, #1
 187 007c FFF7FEFF 		bl	delay_micro
 188              	.L10:
  66:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			delay_micro(1);
 189              		.loc 1 66 0
 190 0080 7B68     		ldr	r3, [r7, #4]
 191 0082 5A1E     		subs	r2, r3, #1
 192 0084 7A60     		str	r2, [r7, #4]
 193 0086 002B     		cmp	r3, #0
 194 0088 F7D1     		bne	.L11
  68:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	#else
  69:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while(ms--)
  70:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			delay_micro(1000);
  71:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	#endif
  72:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 195              		.loc 1 72 0
 196 008a C046     		nop
 197 008c BD46     		mov	sp, r7
 198 008e 02B0     		add	sp, sp, #8
 199              		@ sp needed
 200 0090 80BD     		pop	{r7, pc}
 201              		.cfi_endproc
 202              	.LFE3:
 204              		.align	1
 205              		.global	ascii_init
 206              		.syntax unified
 207              		.code	16
 208              		.thumb_func
 209              		.fpu softvfp
 211              	ascii_init:
 212              	.LFB4:
  73:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  74:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_init(void){
 213              		.loc 1 74 0
 214              		.cfi_startproc
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 1, uses_anonymous_args = 0
 217 0092 80B5     		push	{r7, lr}
 218              		.cfi_def_cfa_offset 8
 219              		.cfi_offset 7, -8
 220              		.cfi_offset 14, -4
 221 0094 00AF     		add	r7, sp, #0
 222              		.cfi_def_cfa_register 7
  75:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//initiera displayen:
  76:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
 223              		.loc 1 76 0
 224 0096 C046     		nop
 225              	.L13:
 226              		.loc 1 76 0 is_stmt 0 discriminator 1
 227 0098 FFF7FEFF 		bl	ascii_read_status
 228 009c 0300     		movs	r3, r0
 229 009e 1A00     		movs	r2, r3
 230 00a0 8023     		movs	r3, #128
 231 00a2 1340     		ands	r3, r2
 232 00a4 802B     		cmp	r3, #128
 233 00a6 F7D0     		beq	.L13
  77:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(20); 
 234              		.loc 1 77 0 is_stmt 1
 235 00a8 1420     		movs	r0, #20
 236 00aa FFF7FEFF 		bl	delay_micro
  78:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		ascii_write_cmd(0b0000111000); 
 237              		.loc 1 78 0
 238 00ae 3820     		movs	r0, #56
 239 00b0 FFF7FEFF 		bl	ascii_write_cmd
  79:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(100);
 240              		.loc 1 79 0
 241 00b4 6420     		movs	r0, #100
 242 00b6 FFF7FEFF 		bl	delay_micro
  80:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		
  81:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//display control:
  82:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
 243              		.loc 1 82 0
 244 00ba C046     		nop
 245              	.L14:
 246              		.loc 1 82 0 is_stmt 0 discriminator 1
 247 00bc FFF7FEFF 		bl	ascii_read_status
 248 00c0 0300     		movs	r3, r0
 249 00c2 1A00     		movs	r2, r3
 250 00c4 8023     		movs	r3, #128
 251 00c6 1340     		ands	r3, r2
 252 00c8 802B     		cmp	r3, #128
 253 00ca F7D0     		beq	.L14
  83:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(20); 
 254              		.loc 1 83 0 is_stmt 1
 255 00cc 1420     		movs	r0, #20
 256 00ce FFF7FEFF 		bl	delay_micro
  84:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		ascii_write_cmd(0b000001110); 
 257              		.loc 1 84 0
 258 00d2 0E20     		movs	r0, #14
 259 00d4 FFF7FEFF 		bl	ascii_write_cmd
  85:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(100); 
 260              		.loc 1 85 0
 261 00d8 6420     		movs	r0, #100
 262 00da FFF7FEFF 		bl	delay_micro
  86:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		
  87:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	// entry mode set
  88:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
 263              		.loc 1 88 0
 264 00de C046     		nop
 265              	.L15:
 266              		.loc 1 88 0 is_stmt 0 discriminator 1
 267 00e0 FFF7FEFF 		bl	ascii_read_status
 268 00e4 0300     		movs	r3, r0
 269 00e6 1A00     		movs	r2, r3
 270 00e8 8023     		movs	r3, #128
 271 00ea 1340     		ands	r3, r2
 272 00ec 802B     		cmp	r3, #128
 273 00ee F7D0     		beq	.L15
  89:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(20); 
 274              		.loc 1 89 0 is_stmt 1
 275 00f0 1420     		movs	r0, #20
 276 00f2 FFF7FEFF 		bl	delay_micro
  90:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		ascii_write_cmd(0b000001110); 
 277              		.loc 1 90 0
 278 00f6 0E20     		movs	r0, #14
 279 00f8 FFF7FEFF 		bl	ascii_write_cmd
  91:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(100); 
 280              		.loc 1 91 0
 281 00fc 6420     		movs	r0, #100
 282 00fe FFF7FEFF 		bl	delay_micro
  92:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 283              		.loc 1 92 0
 284 0102 C046     		nop
 285 0104 BD46     		mov	sp, r7
 286              		@ sp needed
 287 0106 80BD     		pop	{r7, pc}
 288              		.cfi_endproc
 289              	.LFE4:
 291              		.align	1
 292              		.global	ascii_ctrl_bit_set
 293              		.syntax unified
 294              		.code	16
 295              		.thumb_func
 296              		.fpu softvfp
 298              	ascii_ctrl_bit_set:
 299              	.LFB5:
  93:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
  94:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 300              		.loc 1 94 0
 301              		.cfi_startproc
 302              		@ args = 0, pretend = 0, frame = 16
 303              		@ frame_needed = 1, uses_anonymous_args = 0
 304 0108 80B5     		push	{r7, lr}
 305              		.cfi_def_cfa_offset 8
 306              		.cfi_offset 7, -8
 307              		.cfi_offset 14, -4
 308 010a 84B0     		sub	sp, sp, #16
 309              		.cfi_def_cfa_offset 24
 310 010c 00AF     		add	r7, sp, #0
 311              		.cfi_def_cfa_register 7
 312 010e 0200     		movs	r2, r0
 313 0110 FB1D     		adds	r3, r7, #7
 314 0112 1A70     		strb	r2, [r3]
  95:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** //adressera ASCii-displayen och ettställ de bitar som är 1 i x
  96:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char c;
  97:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	c = *portOdrLow;
 315              		.loc 1 97 0
 316 0114 0C4A     		ldr	r2, .L17
 317 0116 0F23     		movs	r3, #15
 318 0118 FB18     		adds	r3, r7, r3
 319 011a 1278     		ldrb	r2, [r2]
 320 011c 1A70     		strb	r2, [r3]
  98:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	c |= (B_SELECT | x);
 321              		.loc 1 98 0
 322 011e FA1D     		adds	r2, r7, #7
 323 0120 0F23     		movs	r3, #15
 324 0122 FB18     		adds	r3, r7, r3
 325 0124 1278     		ldrb	r2, [r2]
 326 0126 1B78     		ldrb	r3, [r3]
 327 0128 1343     		orrs	r3, r2
 328 012a DAB2     		uxtb	r2, r3
 329 012c 0F23     		movs	r3, #15
 330 012e FB18     		adds	r3, r7, r3
 331 0130 0421     		movs	r1, #4
 332 0132 0A43     		orrs	r2, r1
 333 0134 1A70     		strb	r2, [r3]
  99:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portOdrLow = c;
 334              		.loc 1 99 0
 335 0136 044A     		ldr	r2, .L17
 336 0138 0F23     		movs	r3, #15
 337 013a FB18     		adds	r3, r7, r3
 338 013c 1B78     		ldrb	r3, [r3]
 339 013e 1370     		strb	r3, [r2]
 100:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 340              		.loc 1 100 0
 341 0140 C046     		nop
 342 0142 BD46     		mov	sp, r7
 343 0144 04B0     		add	sp, sp, #16
 344              		@ sp needed
 345 0146 80BD     		pop	{r7, pc}
 346              	.L18:
 347              		.align	2
 348              	.L17:
 349 0148 14100240 		.word	1073877012
 350              		.cfi_endproc
 351              	.LFE5:
 353              		.align	1
 354              		.global	ascii_ctrl_bit_clear
 355              		.syntax unified
 356              		.code	16
 357              		.thumb_func
 358              		.fpu softvfp
 360              	ascii_ctrl_bit_clear:
 361              	.LFB6:
 101:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 102:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 362              		.loc 1 102 0
 363              		.cfi_startproc
 364              		@ args = 0, pretend = 0, frame = 16
 365              		@ frame_needed = 1, uses_anonymous_args = 0
 366 014c 80B5     		push	{r7, lr}
 367              		.cfi_def_cfa_offset 8
 368              		.cfi_offset 7, -8
 369              		.cfi_offset 14, -4
 370 014e 84B0     		sub	sp, sp, #16
 371              		.cfi_def_cfa_offset 24
 372 0150 00AF     		add	r7, sp, #0
 373              		.cfi_def_cfa_register 7
 374 0152 0200     		movs	r2, r0
 375 0154 FB1D     		adds	r3, r7, #7
 376 0156 1A70     		strb	r2, [r3]
 103:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** //adressera ASCii-displayen och nollställ de bitar som är 1 i x
 104:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char c;
 105:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	c = *portOdrLow;
 377              		.loc 1 105 0
 378 0158 0F4A     		ldr	r2, .L20
 379 015a 0F23     		movs	r3, #15
 380 015c FB18     		adds	r3, r7, r3
 381 015e 1278     		ldrb	r2, [r2]
 382 0160 1A70     		strb	r2, [r3]
 106:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	c = (B_SELECT | c & ~x);
 383              		.loc 1 106 0
 384 0162 FB1D     		adds	r3, r7, #7
 385 0164 1B78     		ldrb	r3, [r3]
 386 0166 5BB2     		sxtb	r3, r3
 387 0168 DB43     		mvns	r3, r3
 388 016a 5BB2     		sxtb	r3, r3
 389 016c 0F22     		movs	r2, #15
 390 016e BA18     		adds	r2, r7, r2
 391 0170 1278     		ldrb	r2, [r2]
 392 0172 52B2     		sxtb	r2, r2
 393 0174 1340     		ands	r3, r2
 394 0176 5BB2     		sxtb	r3, r3
 395 0178 0422     		movs	r2, #4
 396 017a 1343     		orrs	r3, r2
 397 017c 5AB2     		sxtb	r2, r3
 398 017e 0F23     		movs	r3, #15
 399 0180 FB18     		adds	r3, r7, r3
 400 0182 1A70     		strb	r2, [r3]
 107:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portOdrLow = c;
 401              		.loc 1 107 0
 402 0184 044A     		ldr	r2, .L20
 403 0186 0F23     		movs	r3, #15
 404 0188 FB18     		adds	r3, r7, r3
 405 018a 1B78     		ldrb	r3, [r3]
 406 018c 1370     		strb	r3, [r2]
 108:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 407              		.loc 1 108 0
 408 018e C046     		nop
 409 0190 BD46     		mov	sp, r7
 410 0192 04B0     		add	sp, sp, #16
 411              		@ sp needed
 412 0194 80BD     		pop	{r7, pc}
 413              	.L21:
 414 0196 C046     		.align	2
 415              	.L20:
 416 0198 14100240 		.word	1073877012
 417              		.cfi_endproc
 418              	.LFE6:
 420              		.align	1
 421              		.global	ascii_write_cmd
 422              		.syntax unified
 423              		.code	16
 424              		.thumb_func
 425              		.fpu softvfp
 427              	ascii_write_cmd:
 428              	.LFB7:
 109:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 110:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_cmd(unsigned char command){
 429              		.loc 1 110 0
 430              		.cfi_startproc
 431              		@ args = 0, pretend = 0, frame = 8
 432              		@ frame_needed = 1, uses_anonymous_args = 0
 433 019c 80B5     		push	{r7, lr}
 434              		.cfi_def_cfa_offset 8
 435              		.cfi_offset 7, -8
 436              		.cfi_offset 14, -4
 437 019e 82B0     		sub	sp, sp, #8
 438              		.cfi_def_cfa_offset 16
 439 01a0 00AF     		add	r7, sp, #0
 440              		.cfi_def_cfa_register 7
 441 01a2 0200     		movs	r2, r0
 442 01a4 FB1D     		adds	r3, r7, #7
 443 01a6 1A70     		strb	r2, [r3]
 111:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_RS);
 444              		.loc 1 111 0
 445 01a8 0120     		movs	r0, #1
 446 01aa FFF7FEFF 		bl	ascii_ctrl_bit_clear
 112:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_RW);
 447              		.loc 1 112 0
 448 01ae 0220     		movs	r0, #2
 449 01b0 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 113:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_write_controller(command);
 450              		.loc 1 113 0
 451 01b4 FB1D     		adds	r3, r7, #7
 452 01b6 1B78     		ldrb	r3, [r3]
 453 01b8 1800     		movs	r0, r3
 454 01ba FFF7FEFF 		bl	ascii_write_controller
 114:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 455              		.loc 1 114 0
 456 01be C046     		nop
 457 01c0 BD46     		mov	sp, r7
 458 01c2 02B0     		add	sp, sp, #8
 459              		@ sp needed
 460 01c4 80BD     		pop	{r7, pc}
 461              		.cfi_endproc
 462              	.LFE7:
 464              		.align	1
 465              		.global	ascii_write_data
 466              		.syntax unified
 467              		.code	16
 468              		.thumb_func
 469              		.fpu softvfp
 471              	ascii_write_data:
 472              	.LFB8:
 115:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 116:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_data(unsigned char data){
 473              		.loc 1 116 0
 474              		.cfi_startproc
 475              		@ args = 0, pretend = 0, frame = 8
 476              		@ frame_needed = 1, uses_anonymous_args = 0
 477 01c6 80B5     		push	{r7, lr}
 478              		.cfi_def_cfa_offset 8
 479              		.cfi_offset 7, -8
 480              		.cfi_offset 14, -4
 481 01c8 82B0     		sub	sp, sp, #8
 482              		.cfi_def_cfa_offset 16
 483 01ca 00AF     		add	r7, sp, #0
 484              		.cfi_def_cfa_register 7
 485 01cc 0200     		movs	r2, r0
 486 01ce FB1D     		adds	r3, r7, #7
 487 01d0 1A70     		strb	r2, [r3]
 117:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_RS);
 488              		.loc 1 117 0
 489 01d2 0120     		movs	r0, #1
 490 01d4 FFF7FEFF 		bl	ascii_ctrl_bit_set
 118:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_RW);
 491              		.loc 1 118 0
 492 01d8 0220     		movs	r0, #2
 493 01da FFF7FEFF 		bl	ascii_ctrl_bit_clear
 119:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_write_controller(data);
 494              		.loc 1 119 0
 495 01de FB1D     		adds	r3, r7, #7
 496 01e0 1B78     		ldrb	r3, [r3]
 497 01e2 1800     		movs	r0, r3
 498 01e4 FFF7FEFF 		bl	ascii_write_controller
 120:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 499              		.loc 1 120 0
 500 01e8 C046     		nop
 501 01ea BD46     		mov	sp, r7
 502 01ec 02B0     		add	sp, sp, #8
 503              		@ sp needed
 504 01ee 80BD     		pop	{r7, pc}
 505              		.cfi_endproc
 506              	.LFE8:
 508              		.align	1
 509              		.global	clear_disp
 510              		.syntax unified
 511              		.code	16
 512              		.thumb_func
 513              		.fpu softvfp
 515              	clear_disp:
 516              	.LFB9:
 121:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 122:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void clear_disp()
 123:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** {
 517              		.loc 1 123 0
 518              		.cfi_startproc
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 1, uses_anonymous_args = 0
 521 01f0 80B5     		push	{r7, lr}
 522              		.cfi_def_cfa_offset 8
 523              		.cfi_offset 7, -8
 524              		.cfi_offset 14, -4
 525 01f2 00AF     		add	r7, sp, #0
 526              		.cfi_def_cfa_register 7
 124:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	while ((ascii_read_status() & 0x80)==0x80){}
 527              		.loc 1 124 0
 528 01f4 C046     		nop
 529              	.L25:
 530              		.loc 1 124 0 is_stmt 0 discriminator 1
 531 01f6 FFF7FEFF 		bl	ascii_read_status
 532 01fa 0300     		movs	r3, r0
 533 01fc 1A00     		movs	r2, r3
 534 01fe 8023     		movs	r3, #128
 535 0200 1340     		ands	r3, r2
 536 0202 802B     		cmp	r3, #128
 537 0204 F7D0     		beq	.L25
 125:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 126:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	delay_micro(80);
 538              		.loc 1 126 0 is_stmt 1
 539 0206 5020     		movs	r0, #80
 540 0208 FFF7FEFF 		bl	delay_micro
 127:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_write_cmd(1);
 541              		.loc 1 127 0
 542 020c 0120     		movs	r0, #1
 543 020e FFF7FEFF 		bl	ascii_write_cmd
 128:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	delay_milli(200);
 544              		.loc 1 128 0
 545 0212 C820     		movs	r0, #200
 546 0214 FFF7FEFF 		bl	delay_milli
 129:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 547              		.loc 1 129 0
 548 0218 C046     		nop
 549 021a BD46     		mov	sp, r7
 550              		@ sp needed
 551 021c 80BD     		pop	{r7, pc}
 552              		.cfi_endproc
 553              	.LFE9:
 555              		.align	1
 556              		.global	ascii_read_status
 557              		.syntax unified
 558              		.code	16
 559              		.thumb_func
 560              		.fpu softvfp
 562              	ascii_read_status:
 563              	.LFB10:
 130:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 131:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_status(void){
 564              		.loc 1 131 0
 565              		.cfi_startproc
 566              		@ args = 0, pretend = 0, frame = 8
 567              		@ frame_needed = 1, uses_anonymous_args = 0
 568 021e 90B5     		push	{r4, r7, lr}
 569              		.cfi_def_cfa_offset 12
 570              		.cfi_offset 4, -12
 571              		.cfi_offset 7, -8
 572              		.cfi_offset 14, -4
 573 0220 83B0     		sub	sp, sp, #12
 574              		.cfi_def_cfa_offset 24
 575 0222 00AF     		add	r7, sp, #0
 576              		.cfi_def_cfa_register 7
 132:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//sätt Port E bit15-8 som ingångar
 133:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer &= 0x0000FFFF;
 577              		.loc 1 133 0
 578 0224 114B     		ldr	r3, .L28
 579 0226 114A     		ldr	r2, .L28
 580 0228 1268     		ldr	r2, [r2]
 581 022a 1204     		lsls	r2, r2, #16
 582 022c 120C     		lsrs	r2, r2, #16
 583 022e 1A60     		str	r2, [r3]
 134:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_RS);
 584              		.loc 1 134 0
 585 0230 0120     		movs	r0, #1
 586 0232 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 135:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_RW);
 587              		.loc 1 135 0
 588 0236 0220     		movs	r0, #2
 589 0238 FFF7FEFF 		bl	ascii_ctrl_bit_set
 136:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char rv = ascii_read_controller();
 590              		.loc 1 136 0
 591 023c FC1D     		adds	r4, r7, #7
 592 023e FFF7FEFF 		bl	ascii_read_controller
 593 0242 0300     		movs	r3, r0
 594 0244 2370     		strb	r3, [r4]
 137:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//sätt Port E bit15-8 som utgångar
 138:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer &= 0x0000FFFF;
 595              		.loc 1 138 0
 596 0246 094B     		ldr	r3, .L28
 597 0248 084A     		ldr	r2, .L28
 598 024a 1268     		ldr	r2, [r2]
 599 024c 1204     		lsls	r2, r2, #16
 600 024e 120C     		lsrs	r2, r2, #16
 601 0250 1A60     		str	r2, [r3]
 139:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer |= 0x55550000;
 602              		.loc 1 139 0
 603 0252 064B     		ldr	r3, .L28
 604 0254 054A     		ldr	r2, .L28
 605 0256 1268     		ldr	r2, [r2]
 606 0258 0549     		ldr	r1, .L28+4
 607 025a 0A43     		orrs	r2, r1
 608 025c 1A60     		str	r2, [r3]
 140:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	return rv;
 609              		.loc 1 140 0
 610 025e FB1D     		adds	r3, r7, #7
 611 0260 1B78     		ldrb	r3, [r3]
 141:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 612              		.loc 1 141 0
 613 0262 1800     		movs	r0, r3
 614 0264 BD46     		mov	sp, r7
 615 0266 03B0     		add	sp, sp, #12
 616              		@ sp needed
 617 0268 90BD     		pop	{r4, r7, pc}
 618              	.L29:
 619 026a C046     		.align	2
 620              	.L28:
 621 026c 00100240 		.word	1073876992
 622 0270 00005555 		.word	1431633920
 623              		.cfi_endproc
 624              	.LFE10:
 626              		.align	1
 627              		.global	ascii_read_data
 628              		.syntax unified
 629              		.code	16
 630              		.thumb_func
 631              		.fpu softvfp
 633              	ascii_read_data:
 634              	.LFB11:
 142:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 143:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_data(void){
 635              		.loc 1 143 0
 636              		.cfi_startproc
 637              		@ args = 0, pretend = 0, frame = 8
 638              		@ frame_needed = 1, uses_anonymous_args = 0
 639 0274 90B5     		push	{r4, r7, lr}
 640              		.cfi_def_cfa_offset 12
 641              		.cfi_offset 4, -12
 642              		.cfi_offset 7, -8
 643              		.cfi_offset 14, -4
 644 0276 83B0     		sub	sp, sp, #12
 645              		.cfi_def_cfa_offset 24
 646 0278 00AF     		add	r7, sp, #0
 647              		.cfi_def_cfa_register 7
 144:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//sätt Port E bit15-8 som ingångar
 145:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer &= 0x0000FFFF;
 648              		.loc 1 145 0
 649 027a 114B     		ldr	r3, .L32
 650 027c 104A     		ldr	r2, .L32
 651 027e 1268     		ldr	r2, [r2]
 652 0280 1204     		lsls	r2, r2, #16
 653 0282 120C     		lsrs	r2, r2, #16
 654 0284 1A60     		str	r2, [r3]
 146:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_RS);
 655              		.loc 1 146 0
 656 0286 0120     		movs	r0, #1
 657 0288 FFF7FEFF 		bl	ascii_ctrl_bit_set
 147:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_RW);
 658              		.loc 1 147 0
 659 028c 0220     		movs	r0, #2
 660 028e FFF7FEFF 		bl	ascii_ctrl_bit_set
 148:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char rv = ascii_read_controller();
 661              		.loc 1 148 0
 662 0292 FC1D     		adds	r4, r7, #7
 663 0294 FFF7FEFF 		bl	ascii_read_controller
 664 0298 0300     		movs	r3, r0
 665 029a 2370     		strb	r3, [r4]
 149:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	//sätt Port E bit15-8 som utgångar
 150:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer &= 0x0000FFFF;
 666              		.loc 1 150 0
 667 029c 084B     		ldr	r3, .L32
 668 029e 084A     		ldr	r2, .L32
 669 02a0 1268     		ldr	r2, [r2]
 670 02a2 1204     		lsls	r2, r2, #16
 671 02a4 120C     		lsrs	r2, r2, #16
 672 02a6 1A60     		str	r2, [r3]
 151:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer |= 0x55550000;
 673              		.loc 1 151 0
 674 02a8 054B     		ldr	r3, .L32
 675 02aa 054A     		ldr	r2, .L32
 676 02ac 1268     		ldr	r2, [r2]
 677 02ae 0549     		ldr	r1, .L32+4
 678 02b0 0A43     		orrs	r2, r1
 679 02b2 1A60     		str	r2, [r3]
 152:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	return rv;
 680              		.loc 1 152 0
 681 02b4 FB1D     		adds	r3, r7, #7
 682 02b6 1B78     		ldrb	r3, [r3]
 153:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 683              		.loc 1 153 0
 684 02b8 1800     		movs	r0, r3
 685 02ba BD46     		mov	sp, r7
 686 02bc 03B0     		add	sp, sp, #12
 687              		@ sp needed
 688 02be 90BD     		pop	{r4, r7, pc}
 689              	.L33:
 690              		.align	2
 691              	.L32:
 692 02c0 00100240 		.word	1073876992
 693 02c4 00005555 		.word	1431633920
 694              		.cfi_endproc
 695              	.LFE11:
 697              		.align	1
 698              		.global	ascii_write_controller
 699              		.syntax unified
 700              		.code	16
 701              		.thumb_func
 702              		.fpu softvfp
 704              	ascii_write_controller:
 705              	.LFB12:
 154:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 155:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_controller(unsigned char c){
 706              		.loc 1 155 0
 707              		.cfi_startproc
 708              		@ args = 0, pretend = 0, frame = 8
 709              		@ frame_needed = 1, uses_anonymous_args = 0
 710 02c8 80B5     		push	{r7, lr}
 711              		.cfi_def_cfa_offset 8
 712              		.cfi_offset 7, -8
 713              		.cfi_offset 14, -4
 714 02ca 82B0     		sub	sp, sp, #8
 715              		.cfi_def_cfa_offset 16
 716 02cc 00AF     		add	r7, sp, #0
 717              		.cfi_def_cfa_register 7
 718 02ce 0200     		movs	r2, r0
 719 02d0 FB1D     		adds	r3, r7, #7
 720 02d2 1A70     		strb	r2, [r3]
 156:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_E);
 721              		.loc 1 156 0
 722 02d4 4020     		movs	r0, #64
 723 02d6 FFF7FEFF 		bl	ascii_ctrl_bit_set
 157:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portOdrHigh = c;
 724              		.loc 1 157 0
 725 02da 064A     		ldr	r2, .L35
 726 02dc FB1D     		adds	r3, r7, #7
 727 02de 1B78     		ldrb	r3, [r3]
 728 02e0 1370     		strb	r3, [r2]
 158:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	delay_250ns();
 729              		.loc 1 158 0
 730 02e2 FFF7FEFF 		bl	delay_250ns
 159:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_E);
 731              		.loc 1 159 0
 732 02e6 4020     		movs	r0, #64
 733 02e8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 160:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 734              		.loc 1 160 0
 735 02ec C046     		nop
 736 02ee BD46     		mov	sp, r7
 737 02f0 02B0     		add	sp, sp, #8
 738              		@ sp needed
 739 02f2 80BD     		pop	{r7, pc}
 740              	.L36:
 741              		.align	2
 742              	.L35:
 743 02f4 15100240 		.word	1073877013
 744              		.cfi_endproc
 745              	.LFE12:
 747              		.align	1
 748              		.global	ascii_read_controller
 749              		.syntax unified
 750              		.code	16
 751              		.thumb_func
 752              		.fpu softvfp
 754              	ascii_read_controller:
 755              	.LFB13:
 161:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 162:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** unsigned char ascii_read_controller(void){
 756              		.loc 1 162 0
 757              		.cfi_startproc
 758              		@ args = 0, pretend = 0, frame = 8
 759              		@ frame_needed = 1, uses_anonymous_args = 0
 760 02f8 80B5     		push	{r7, lr}
 761              		.cfi_def_cfa_offset 8
 762              		.cfi_offset 7, -8
 763              		.cfi_offset 14, -4
 764 02fa 82B0     		sub	sp, sp, #8
 765              		.cfi_def_cfa_offset 16
 766 02fc 00AF     		add	r7, sp, #0
 767              		.cfi_def_cfa_register 7
 163:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char c;
 164:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_set(B_E);
 768              		.loc 1 164 0
 769 02fe 4020     		movs	r0, #64
 770 0300 FFF7FEFF 		bl	ascii_ctrl_bit_set
 165:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	delay_250ns();
 771              		.loc 1 165 0
 772 0304 FFF7FEFF 		bl	delay_250ns
 166:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	delay_250ns();
 773              		.loc 1 166 0
 774 0308 FFF7FEFF 		bl	delay_250ns
 167:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	c = *portIdrHigh;
 775              		.loc 1 167 0
 776 030c 064A     		ldr	r2, .L39
 777 030e FB1D     		adds	r3, r7, #7
 778 0310 1278     		ldrb	r2, [r2]
 779 0312 1A70     		strb	r2, [r3]
 168:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_ctrl_bit_clear(B_E);
 780              		.loc 1 168 0
 781 0314 4020     		movs	r0, #64
 782 0316 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 169:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	return c;
 783              		.loc 1 169 0
 784 031a FB1D     		adds	r3, r7, #7
 785 031c 1B78     		ldrb	r3, [r3]
 170:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 786              		.loc 1 170 0
 787 031e 1800     		movs	r0, r3
 788 0320 BD46     		mov	sp, r7
 789 0322 02B0     		add	sp, sp, #8
 790              		@ sp needed
 791 0324 80BD     		pop	{r7, pc}
 792              	.L40:
 793 0326 C046     		.align	2
 794              	.L39:
 795 0328 11100240 		.word	1073877009
 796              		.cfi_endproc
 797              	.LFE13:
 799              		.align	1
 800              		.global	ascii_write_char
 801              		.syntax unified
 802              		.code	16
 803              		.thumb_func
 804              		.fpu softvfp
 806              	ascii_write_char:
 807              	.LFB14:
 171:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 172:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_write_char(unsigned char c){
 808              		.loc 1 172 0
 809              		.cfi_startproc
 810              		@ args = 0, pretend = 0, frame = 8
 811              		@ frame_needed = 1, uses_anonymous_args = 0
 812 032c 80B5     		push	{r7, lr}
 813              		.cfi_def_cfa_offset 8
 814              		.cfi_offset 7, -8
 815              		.cfi_offset 14, -4
 816 032e 82B0     		sub	sp, sp, #8
 817              		.cfi_def_cfa_offset 16
 818 0330 00AF     		add	r7, sp, #0
 819              		.cfi_def_cfa_register 7
 820 0332 0200     		movs	r2, r0
 821 0334 FB1D     		adds	r3, r7, #7
 822 0336 1A70     		strb	r2, [r3]
 173:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
 823              		.loc 1 173 0
 824 0338 C046     		nop
 825              	.L42:
 826              		.loc 1 173 0 is_stmt 0 discriminator 1
 827 033a FFF7FEFF 		bl	ascii_read_status
 828 033e 0300     		movs	r3, r0
 829 0340 1A00     		movs	r2, r3
 830 0342 8023     		movs	r3, #128
 831 0344 1340     		ands	r3, r2
 832 0346 802B     		cmp	r3, #128
 833 0348 F7D0     		beq	.L42
 174:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(8); 
 834              		.loc 1 174 0 is_stmt 1
 835 034a 0820     		movs	r0, #8
 836 034c FFF7FEFF 		bl	delay_micro
 175:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		ascii_write_data(c);
 837              		.loc 1 175 0
 838 0350 FB1D     		adds	r3, r7, #7
 839 0352 1B78     		ldrb	r3, [r3]
 840 0354 1800     		movs	r0, r3
 841 0356 FFF7FEFF 		bl	ascii_write_data
 176:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		delay_micro(50); 
 842              		.loc 1 176 0
 843 035a 3220     		movs	r0, #50
 844 035c FFF7FEFF 		bl	delay_micro
 177:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 845              		.loc 1 177 0
 846 0360 C046     		nop
 847 0362 BD46     		mov	sp, r7
 848 0364 02B0     		add	sp, sp, #8
 849              		@ sp needed
 850 0366 80BD     		pop	{r7, pc}
 851              		.cfi_endproc
 852              	.LFE14:
 854              		.align	1
 855              		.global	ascii_goToXY
 856              		.syntax unified
 857              		.code	16
 858              		.thumb_func
 859              		.fpu softvfp
 861              	ascii_goToXY:
 862              	.LFB15:
 178:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 179:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void ascii_goToXY(unsigned char row, unsigned char column){
 863              		.loc 1 179 0
 864              		.cfi_startproc
 865              		@ args = 0, pretend = 0, frame = 16
 866              		@ frame_needed = 1, uses_anonymous_args = 0
 867 0368 80B5     		push	{r7, lr}
 868              		.cfi_def_cfa_offset 8
 869              		.cfi_offset 7, -8
 870              		.cfi_offset 14, -4
 871 036a 84B0     		sub	sp, sp, #16
 872              		.cfi_def_cfa_offset 24
 873 036c 00AF     		add	r7, sp, #0
 874              		.cfi_def_cfa_register 7
 875 036e 0200     		movs	r2, r0
 876 0370 FB1D     		adds	r3, r7, #7
 877 0372 1A70     		strb	r2, [r3]
 878 0374 BB1D     		adds	r3, r7, #6
 879 0376 0A1C     		adds	r2, r1, #0
 880 0378 1A70     		strb	r2, [r3]
 180:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	unsigned char address = row-1;
 881              		.loc 1 180 0
 882 037a 0F23     		movs	r3, #15
 883 037c FB18     		adds	r3, r7, r3
 884 037e FA1D     		adds	r2, r7, #7
 885 0380 1278     		ldrb	r2, [r2]
 886 0382 013A     		subs	r2, r2, #1
 887 0384 1A70     		strb	r2, [r3]
 181:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	if(column == 2){
 888              		.loc 1 181 0
 889 0386 BB1D     		adds	r3, r7, #6
 890 0388 1B78     		ldrb	r3, [r3]
 891 038a 022B     		cmp	r3, #2
 892 038c 06D1     		bne	.L44
 182:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		address += 0x40;
 893              		.loc 1 182 0
 894 038e 0F23     		movs	r3, #15
 895 0390 FB18     		adds	r3, r7, r3
 896 0392 0F22     		movs	r2, #15
 897 0394 BA18     		adds	r2, r7, r2
 898 0396 1278     		ldrb	r2, [r2]
 899 0398 4032     		adds	r2, r2, #64
 900 039a 1A70     		strb	r2, [r3]
 901              	.L44:
 183:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	}
 184:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_write_cmd(0x80 | address);
 902              		.loc 1 184 0
 903 039c 0F23     		movs	r3, #15
 904 039e FB18     		adds	r3, r7, r3
 905 03a0 1B78     		ldrb	r3, [r3]
 906 03a2 8022     		movs	r2, #128
 907 03a4 5242     		rsbs	r2, r2, #0
 908 03a6 1343     		orrs	r3, r2
 909 03a8 DBB2     		uxtb	r3, r3
 910 03aa 1800     		movs	r0, r3
 911 03ac FFF7FEFF 		bl	ascii_write_cmd
 185:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 912              		.loc 1 185 0
 913 03b0 C046     		nop
 914 03b2 BD46     		mov	sp, r7
 915 03b4 04B0     		add	sp, sp, #16
 916              		@ sp needed
 917 03b6 80BD     		pop	{r7, pc}
 918              		.cfi_endproc
 919              	.LFE15:
 921              		.align	1
 922              		.global	init_app
 923              		.syntax unified
 924              		.code	16
 925              		.thumb_func
 926              		.fpu softvfp
 928              	init_app:
 929              	.LFB16:
 186:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 187:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void init_app(void){
 930              		.loc 1 187 0
 931              		.cfi_startproc
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 1, uses_anonymous_args = 0
 934 03b8 80B5     		push	{r7, lr}
 935              		.cfi_def_cfa_offset 8
 936              		.cfi_offset 7, -8
 937              		.cfi_offset 14, -4
 938 03ba 00AF     		add	r7, sp, #0
 939              		.cfi_def_cfa_register 7
 188:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 189:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	#ifdef USBDM
 190:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		*((unsigned long *) 0x40023830) = 0x18;
 940              		.loc 1 190 0
 941 03bc 064B     		ldr	r3, .L46
 942 03be 1822     		movs	r2, #24
 943 03c0 1A60     		str	r2, [r3]
 191:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		__asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
 944              		.loc 1 191 0
 945              		.syntax divided
 946              	@ 191 "C:/Users/shriaf/Documents/Labb2/Upp23/startup.c" 1
 947 03c2 2B48     		LDR R0,=0x8000209
 948 03c4 8047     	 BLX R0 
 949              	
 950              	@ 0 "" 2
 192:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	#endif
 193:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 194:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 195:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	*portModer = 0x555555555;
 951              		.loc 1 195 0
 952              		.thumb
 953              		.syntax unified
 954 03c6 054B     		ldr	r3, .L46+4
 955 03c8 054A     		ldr	r2, .L46+8
 956 03ca 1A60     		str	r2, [r3]
 196:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	ascii_init();
 957              		.loc 1 196 0
 958 03cc FFF7FEFF 		bl	ascii_init
 197:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** }
 959              		.loc 1 197 0
 960 03d0 C046     		nop
 961 03d2 BD46     		mov	sp, r7
 962              		@ sp needed
 963 03d4 80BD     		pop	{r7, pc}
 964              	.L47:
 965 03d6 C046     		.align	2
 966              	.L46:
 967 03d8 30380240 		.word	1073887280
 968 03dc 00100240 		.word	1073876992
 969 03e0 55555555 		.word	1431655765
 970              		.cfi_endproc
 971              	.LFE16:
 973              		.section	.rodata
 974              		.align	2
 975              	.LC0:
 976 0000 416C6661 		.ascii	"Alfanumerisk \000"
 976      6E756D65 
 976      7269736B 
 976      2000
 977 000e 0000     		.align	2
 978              	.LC2:
 979 0010 44697370 		.ascii	"Display - test\000"
 979      6C617920 
 979      2D207465 
 979      737400
 980              		.text
 981              		.align	1
 982              		.global	main
 983              		.syntax unified
 984              		.code	16
 985              		.thumb_func
 986              		.fpu softvfp
 988              	main:
 989              	.LFB17:
 198:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 199:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** void main(void){
 990              		.loc 1 199 0
 991              		.cfi_startproc
 992              		@ args = 0, pretend = 0, frame = 40
 993              		@ frame_needed = 1, uses_anonymous_args = 0
 994 03e4 90B5     		push	{r4, r7, lr}
 995              		.cfi_def_cfa_offset 12
 996              		.cfi_offset 4, -12
 997              		.cfi_offset 7, -8
 998              		.cfi_offset 14, -4
 999 03e6 8BB0     		sub	sp, sp, #44
 1000              		.cfi_def_cfa_offset 56
 1001 03e8 00AF     		add	r7, sp, #0
 1002              		.cfi_def_cfa_register 7
 200:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	char *s;
 201:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	char test1[] = "Alfanumerisk ";
 1003              		.loc 1 201 0
 1004 03ea 1423     		movs	r3, #20
 1005 03ec FB18     		adds	r3, r7, r3
 1006 03ee 1E4A     		ldr	r2, .L54
 1007 03f0 13CA     		ldmia	r2!, {r0, r1, r4}
 1008 03f2 13C3     		stmia	r3!, {r0, r1, r4}
 1009 03f4 1288     		ldrh	r2, [r2]
 1010 03f6 1A80     		strh	r2, [r3]
 202:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	char test2[] = "Display - test";
 1011              		.loc 1 202 0
 1012 03f8 3B1D     		adds	r3, r7, #4
 1013 03fa 1C4A     		ldr	r2, .L54+4
 1014 03fc 13CA     		ldmia	r2!, {r0, r1, r4}
 1015 03fe 13C3     		stmia	r3!, {r0, r1, r4}
 1016 0400 1188     		ldrh	r1, [r2]
 1017 0402 1980     		strh	r1, [r3]
 1018 0404 9278     		ldrb	r2, [r2, #2]
 1019 0406 9A70     		strb	r2, [r3, #2]
 203:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 204:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 205:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	init_app();
 1020              		.loc 1 205 0
 1021 0408 FFF7FEFF 		bl	init_app
 1022              	.L53:
 206:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	
 207:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 
 208:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 	while (1)
 209:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 		{
 210:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			clear_disp();
 1023              		.loc 1 210 0
 1024 040c FFF7FEFF 		bl	clear_disp
 211:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			ascii_goToXY(1,1);
 1025              		.loc 1 211 0
 1026 0410 0121     		movs	r1, #1
 1027 0412 0120     		movs	r0, #1
 1028 0414 FFF7FEFF 		bl	ascii_goToXY
 212:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			s = test1;
 1029              		.loc 1 212 0
 1030 0418 1423     		movs	r3, #20
 1031 041a FB18     		adds	r3, r7, r3
 1032 041c 7B62     		str	r3, [r7, #36]
 213:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			while(*s){
 1033              		.loc 1 213 0
 1034 041e 06E0     		b	.L49
 1035              	.L50:
 214:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 				ascii_write_char(*s++);
 1036              		.loc 1 214 0
 1037 0420 7B6A     		ldr	r3, [r7, #36]
 1038 0422 5A1C     		adds	r2, r3, #1
 1039 0424 7A62     		str	r2, [r7, #36]
 1040 0426 1B78     		ldrb	r3, [r3]
 1041 0428 1800     		movs	r0, r3
 1042 042a FFF7FEFF 		bl	ascii_write_char
 1043              	.L49:
 213:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			while(*s){
 1044              		.loc 1 213 0
 1045 042e 7B6A     		ldr	r3, [r7, #36]
 1046 0430 1B78     		ldrb	r3, [r3]
 1047 0432 002B     		cmp	r3, #0
 1048 0434 F4D1     		bne	.L50
 215:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			}
 216:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			ascii_goToXY(1,2);
 1049              		.loc 1 216 0
 1050 0436 0221     		movs	r1, #2
 1051 0438 0120     		movs	r0, #1
 1052 043a FFF7FEFF 		bl	ascii_goToXY
 217:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			s = test2;
 1053              		.loc 1 217 0
 1054 043e 3B1D     		adds	r3, r7, #4
 1055 0440 7B62     		str	r3, [r7, #36]
 218:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			while(*s){
 1056              		.loc 1 218 0
 1057 0442 06E0     		b	.L51
 1058              	.L52:
 219:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 				ascii_write_char(*s++);
 1059              		.loc 1 219 0
 1060 0444 7B6A     		ldr	r3, [r7, #36]
 1061 0446 5A1C     		adds	r2, r3, #1
 1062 0448 7A62     		str	r2, [r7, #36]
 1063 044a 1B78     		ldrb	r3, [r3]
 1064 044c 1800     		movs	r0, r3
 1065 044e FFF7FEFF 		bl	ascii_write_char
 1066              	.L51:
 218:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			while(*s){
 1067              		.loc 1 218 0
 1068 0452 7B6A     		ldr	r3, [r7, #36]
 1069 0454 1B78     		ldrb	r3, [r3]
 1070 0456 002B     		cmp	r3, #0
 1071 0458 F4D1     		bne	.L52
 220:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			}
 221:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			
 222:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			delay_milli(500);
 1072              		.loc 1 222 0
 1073 045a FA23     		movs	r3, #250
 1074 045c 5B00     		lsls	r3, r3, #1
 1075 045e 1800     		movs	r0, r3
 1076 0460 FFF7FEFF 		bl	delay_milli
 210:C:/Users/shriaf/Documents/Labb2/Upp23\startup.c **** 			ascii_goToXY(1,1);
 1077              		.loc 1 210 0
 1078 0464 D2E7     		b	.L53
 1079              	.L55:
 1080 0466 C046     		.align	2
 1081              	.L54:
 1082 0468 00000000 		.word	.LC0
 1083 046c 10000000 		.word	.LC2
 1084              		.cfi_endproc
 1085              	.LFE17:
 1087              	.Letext0:
