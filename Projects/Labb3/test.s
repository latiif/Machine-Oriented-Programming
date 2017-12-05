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
  25              		.file 1 "C:/Users/shriaf/Documents/Labb2/Labb3/startup.c"
   1:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** /*
   2:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c ****  * 	startup.c
   3:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c ****  *
   4:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c ****  */
   5:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
   6:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
   7:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
   8:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** #include "display.h"
   9:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** #include "line.h"
  10:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** #include "ball.h"
  11:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** #include "input.h"
  12:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c ****  
  13:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  14:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  15:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void init_app(void);
  16:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp32(void);
  17:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp31(void);
  18:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp33(void);
  19:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  20:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void startup ( void )
  21:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {
  26              		.loc 1 21 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  22:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** __asm volatile(
  31              		.loc 1 22 0
  32              		.syntax divided
  33              	@ 22 "C:/Users/shriaf/Documents/Labb2/Labb3/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  23:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  24:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	" MOV SP,R0\n"
  25:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	" BL main\n"				/* call main */
  26:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	"_exit: B .\n"				/* never return */
  27:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	) ;
  28:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** }
  40              		.loc 1 28 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	main
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	main:
  56              	.LFB1:
  29:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  30:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void main(void)
  31:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {	
  57              		.loc 1 31 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  32:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  33:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** upp33();
  67              		.loc 1 33 0
  68 0004 FFF7FEFF 		bl	upp33
  34:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** }
  69              		.loc 1 34 0
  70 0008 C046     		nop
  71 000a BD46     		mov	sp, r7
  72              		@ sp needed
  73 000c 80BD     		pop	{r7, pc}
  74              		.cfi_endproc
  75              	.LFE1:
  77              		.align	1
  78              		.global	init_app
  79              		.syntax unified
  80              		.code	16
  81              		.thumb_func
  82              		.fpu softvfp
  84              	init_app:
  85              	.LFB2:
  35:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  36:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void init_app(void)
  37:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {
  86              		.loc 1 37 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 1, uses_anonymous_args = 0
  90 000e 80B5     		push	{r7, lr}
  91              		.cfi_def_cfa_offset 8
  92              		.cfi_offset 7, -8
  93              		.cfi_offset 14, -4
  94 0010 00AF     		add	r7, sp, #0
  95              		.cfi_def_cfa_register 7
  38:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  39:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	#ifdef USBDM
  40:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		*((unsigned long *) 0x40023830) = 0x18;
  96              		.loc 1 40 0
  97 0012 064B     		ldr	r3, .L4
  98 0014 1822     		movs	r2, #24
  99 0016 1A60     		str	r2, [r3]
  41:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		__asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
 100              		.loc 1 41 0
 101              		.syntax divided
 102              	@ 41 "C:/Users/shriaf/Documents/Labb2/Labb3/startup.c" 1
 103 0018 6048     		LDR R0,=0x8000209
 104 001a 8047     	 BLX R0 
 105              	
 106              	@ 0 "" 2
  42:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	#endif
  43:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  44:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  45:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	graphic_initialize();
 107              		.loc 1 45 0
 108              		.thumb
 109              		.syntax unified
 110 001c FFF7FEFF 		bl	graphic_initialize
  46:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  47:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	graphic_clear_screen();
 111              		.loc 1 47 0
 112 0020 FFF7FEFF 		bl	graphic_clear_screen
  48:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  49:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** }
 113              		.loc 1 49 0
 114 0024 C046     		nop
 115 0026 BD46     		mov	sp, r7
 116              		@ sp needed
 117 0028 80BD     		pop	{r7, pc}
 118              	.L5:
 119 002a C046     		.align	2
 120              	.L4:
 121 002c 30380240 		.word	1073887280
 122              		.cfi_endproc
 123              	.LFE2:
 125              		.section	.rodata
 126              		.align	2
 127              	.LC4:
 128 0000 40000000 		.word	64
 129 0004 01       		.byte	1
 130 0005 000000   		.space	3
 131 0008 05000000 		.word	5
 132 000c 01000000 		.word	1
 133 0010 00000000 		.word	getLength_line
 134 0014 00000000 		.word	getDirection_line
 135 0018 00000000 		.word	draw_line
 136              		.align	2
 137              	.LC6:
 138 001c 80000000 		.word	128
 139 0020 00       		.byte	0
 140 0021 000000   		.space	3
 141 0024 01000000 		.word	1
 142 0028 05000000 		.word	5
 143 002c 00000000 		.word	getLength_line
 144 0030 00000000 		.word	getDirection_line
 145 0034 00000000 		.word	draw_line
 146              		.text
 147              		.align	1
 148              		.global	upp31
 149              		.syntax unified
 150              		.code	16
 151              		.thumb_func
 152              		.fpu softvfp
 154              	upp31:
 155              	.LFB3:
  50:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  51:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp31(void)
  52:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {
 156              		.loc 1 52 0
 157              		.cfi_startproc
 158              		@ args = 0, pretend = 0, frame = 56
 159              		@ frame_needed = 1, uses_anonymous_args = 0
 160 0030 90B5     		push	{r4, r7, lr}
 161              		.cfi_def_cfa_offset 12
 162              		.cfi_offset 4, -12
 163              		.cfi_offset 7, -8
 164              		.cfi_offset 14, -4
 165 0032 8FB0     		sub	sp, sp, #60
 166              		.cfi_def_cfa_offset 72
 167 0034 00AF     		add	r7, sp, #0
 168              		.cfi_def_cfa_register 7
  53:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	init_app();
 169              		.loc 1 53 0
 170 0036 FFF7FEFF 		bl	init_app
  54:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  55:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  56:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	Line l1,l2;
  57:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  58:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	l1 = (Line){64,VERTICAL,5,1,getLength_line,getDirection_line,draw_line};
 171              		.loc 1 58 0
 172 003a 1C23     		movs	r3, #28
 173 003c FB18     		adds	r3, r7, r3
 174 003e 164A     		ldr	r2, .L7
 175 0040 13CA     		ldmia	r2!, {r0, r1, r4}
 176 0042 13C3     		stmia	r3!, {r0, r1, r4}
 177 0044 13CA     		ldmia	r2!, {r0, r1, r4}
 178 0046 13C3     		stmia	r3!, {r0, r1, r4}
 179 0048 1268     		ldr	r2, [r2]
 180 004a 1A60     		str	r2, [r3]
  59:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	l2 = (Line){128,HORIZONTAL,1,5,getLength_line,getDirection_line,draw_line};
 181              		.loc 1 59 0
 182 004c 3B00     		movs	r3, r7
 183 004e 134A     		ldr	r2, .L7+4
 184 0050 13CA     		ldmia	r2!, {r0, r1, r4}
 185 0052 13C3     		stmia	r3!, {r0, r1, r4}
 186 0054 13CA     		ldmia	r2!, {r0, r1, r4}
 187 0056 13C3     		stmia	r3!, {r0, r1, r4}
 188 0058 1268     		ldr	r2, [r2]
 189 005a 1A60     		str	r2, [r3]
  60:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  61:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  62:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  63:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  64:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		clearBackBuffer();
 190              		.loc 1 64 0
 191 005c FFF7FEFF 		bl	clearBackBuffer
  65:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
  66:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		l1.draw(&l1);
 192              		.loc 1 66 0
 193 0060 1C23     		movs	r3, #28
 194 0062 FB18     		adds	r3, r7, r3
 195 0064 9B69     		ldr	r3, [r3, #24]
 196 0066 1C22     		movs	r2, #28
 197 0068 BA18     		adds	r2, r7, r2
 198 006a 1000     		movs	r0, r2
 199 006c 9847     		blx	r3
 200              	.LVL0:
  67:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		l2.draw(&l2);
 201              		.loc 1 67 0
 202 006e 3B00     		movs	r3, r7
 203 0070 9B69     		ldr	r3, [r3, #24]
 204 0072 3A00     		movs	r2, r7
 205 0074 1000     		movs	r0, r2
 206 0076 9847     		blx	r3
 207              	.LVL1:
  68:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
  69:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		graphic_draw_screen();
 208              		.loc 1 69 0
 209 0078 FFF7FEFF 		bl	graphic_draw_screen
  70:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
  71:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		delay_milli(500);
 210              		.loc 1 71 0
 211 007c FA23     		movs	r3, #250
 212 007e 5B00     		lsls	r3, r3, #1
 213 0080 1800     		movs	r0, r3
 214 0082 FFF7FEFF 		bl	delay_milli
  72:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
  73:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		clearBackBuffer();
 215              		.loc 1 73 0
 216 0086 FFF7FEFF 		bl	clearBackBuffer
  74:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		graphic_draw_screen();
 217              		.loc 1 74 0
 218 008a FFF7FEFF 		bl	graphic_draw_screen
  75:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  76:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** }
 219              		.loc 1 76 0
 220 008e C046     		nop
 221 0090 BD46     		mov	sp, r7
 222 0092 0FB0     		add	sp, sp, #60
 223              		@ sp needed
 224 0094 90BD     		pop	{r4, r7, pc}
 225              	.L8:
 226 0096 C046     		.align	2
 227              	.L7:
 228 0098 00000000 		.word	.LC4
 229 009c 1C000000 		.word	.LC6
 230              		.cfi_endproc
 231              	.LFE3:
 233              		.section	.rodata
 234              		.align	2
 235              	.LC8:
 236 0038 2E000000 		.word	46
 237 003c 20000000 		.word	32
 238 0040 F1FFFFFF 		.word	-15
 239 0044 0F000000 		.word	15
 240 0048 00000000 		.word	setSpeed_Ball
 241 004c 00000000 		.word	draw_Ball
 242 0050 00000000 		.word	update_Ball
 243              		.text
 244              		.align	1
 245              		.global	upp32
 246              		.syntax unified
 247              		.code	16
 248              		.thumb_func
 249              		.fpu softvfp
 251              	upp32:
 252              	.LFB4:
  77:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  78:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp32(void)
  79:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {
 253              		.loc 1 79 0
 254              		.cfi_startproc
 255              		@ args = 0, pretend = 0, frame = 32
 256              		@ frame_needed = 1, uses_anonymous_args = 0
 257 00a0 90B5     		push	{r4, r7, lr}
 258              		.cfi_def_cfa_offset 12
 259              		.cfi_offset 4, -12
 260              		.cfi_offset 7, -8
 261              		.cfi_offset 14, -4
 262 00a2 89B0     		sub	sp, sp, #36
 263              		.cfi_def_cfa_offset 48
 264 00a4 00AF     		add	r7, sp, #0
 265              		.cfi_def_cfa_register 7
  80:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  81:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	init_app();
 266              		.loc 1 81 0
 267 00a6 FFF7FEFF 		bl	init_app
  82:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  83:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	Ball *b;
  84:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	b = &(Ball){46,32,-15,15,setSpeed_Ball,draw_Ball,update_Ball};
 268              		.loc 1 84 0
 269 00aa 3B00     		movs	r3, r7
 270 00ac 0A4A     		ldr	r2, .L11
 271 00ae 13CA     		ldmia	r2!, {r0, r1, r4}
 272 00b0 13C3     		stmia	r3!, {r0, r1, r4}
 273 00b2 13CA     		ldmia	r2!, {r0, r1, r4}
 274 00b4 13C3     		stmia	r3!, {r0, r1, r4}
 275 00b6 1268     		ldr	r2, [r2]
 276 00b8 1A60     		str	r2, [r3]
 277 00ba 3B00     		movs	r3, r7
 278 00bc FB61     		str	r3, [r7, #28]
 279              	.L10:
  85:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  86:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	while(1)
  87:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	{
  88:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		clearBackBuffer();
 280              		.loc 1 88 0 discriminator 1
 281 00be FFF7FEFF 		bl	clearBackBuffer
  89:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		b->update(b);
 282              		.loc 1 89 0 discriminator 1
 283 00c2 FB69     		ldr	r3, [r7, #28]
 284 00c4 9B69     		ldr	r3, [r3, #24]
 285 00c6 FA69     		ldr	r2, [r7, #28]
 286 00c8 1000     		movs	r0, r2
 287 00ca 9847     		blx	r3
 288              	.LVL2:
  90:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		graphic_draw_screen();
 289              		.loc 1 90 0 discriminator 1
 290 00cc FFF7FEFF 		bl	graphic_draw_screen
  91:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		delay_milli(200);
 291              		.loc 1 91 0 discriminator 1
 292 00d0 C820     		movs	r0, #200
 293 00d2 FFF7FEFF 		bl	delay_milli
  88:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		b->update(b);
 294              		.loc 1 88 0 discriminator 1
 295 00d6 F2E7     		b	.L10
 296              	.L12:
 297              		.align	2
 298              	.L11:
 299 00d8 38000000 		.word	.LC8
 300              		.cfi_endproc
 301              	.LFE4:
 303              		.section	.rodata
 304              		.align	2
 305              	.LC10:
 306 0054 01000000 		.word	1
 307 0058 01000000 		.word	1
 308 005c 00000000 		.word	0
 309 0060 00000000 		.word	0
 310 0064 00000000 		.word	setSpeed_Ball
 311 0068 00000000 		.word	draw_Ball
 312 006c 00000000 		.word	update_Ball
 313              		.text
 314              		.align	1
 315              		.global	upp33
 316              		.syntax unified
 317              		.code	16
 318              		.thumb_func
 319              		.fpu softvfp
 321              	upp33:
 322              	.LFB5:
  92:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  93:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	}
  94:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  95:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  96:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 	
  97:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** }
  98:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
  99:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** void upp33(void)
 100:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** {
 323              		.loc 1 100 0
 324              		.cfi_startproc
 325              		@ args = 0, pretend = 0, frame = 40
 326              		@ frame_needed = 1, uses_anonymous_args = 0
 327 00dc 90B5     		push	{r4, r7, lr}
 328              		.cfi_def_cfa_offset 12
 329              		.cfi_offset 4, -12
 330              		.cfi_offset 7, -8
 331              		.cfi_offset 14, -4
 332 00de 8BB0     		sub	sp, sp, #44
 333              		.cfi_def_cfa_offset 56
 334 00e0 00AF     		add	r7, sp, #0
 335              		.cfi_def_cfa_register 7
 101:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		init_app();
 336              		.loc 1 101 0
 337 00e2 FFF7FEFF 		bl	init_app
 102:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		input_initialize();
 338              		.loc 1 102 0
 339 00e6 FFF7FEFF 		bl	input_initialize
 103:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 104:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		Ball *b;
 105:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		b = &(Ball){1,1,0,0,setSpeed_Ball,draw_Ball,update_Ball};
 340              		.loc 1 105 0
 341 00ea 3B1D     		adds	r3, r7, #4
 342 00ec 294A     		ldr	r2, .L22
 343 00ee 13CA     		ldmia	r2!, {r0, r1, r4}
 344 00f0 13C3     		stmia	r3!, {r0, r1, r4}
 345 00f2 13CA     		ldmia	r2!, {r0, r1, r4}
 346 00f4 13C3     		stmia	r3!, {r0, r1, r4}
 347 00f6 1268     		ldr	r2, [r2]
 348 00f8 1A60     		str	r2, [r3]
 349 00fa 3B1D     		adds	r3, r7, #4
 350 00fc 7B62     		str	r3, [r7, #36]
 106:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 107:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 108:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		clearBackBuffer();
 351              		.loc 1 108 0
 352 00fe FFF7FEFF 		bl	clearBackBuffer
 109:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		//pixel(1,64);
 110:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 111:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		graphic_draw_screen();
 353              		.loc 1 111 0
 354 0102 FFF7FEFF 		bl	graphic_draw_screen
 112:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 113:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		delay_milli(1000);
 355              		.loc 1 113 0
 356 0106 FA23     		movs	r3, #250
 357 0108 9B00     		lsls	r3, r3, #2
 358 010a 1800     		movs	r0, r3
 359 010c FFF7FEFF 		bl	delay_milli
 360              	.L21:
 114:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		
 115:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		char val;
 116:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		while(1)
 117:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 		{
 118:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			clearBackBuffer();
 361              		.loc 1 118 0
 362 0110 FFF7FEFF 		bl	clearBackBuffer
 119:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 120:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			b->update(b);
 363              		.loc 1 120 0
 364 0114 7B6A     		ldr	r3, [r7, #36]
 365 0116 9B69     		ldr	r3, [r3, #24]
 366 0118 7A6A     		ldr	r2, [r7, #36]
 367 011a 1000     		movs	r0, r2
 368 011c 9847     		blx	r3
 369              	.LVL3:
 121:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 122:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			val=keyb();
 370              		.loc 1 122 0
 371 011e 2323     		movs	r3, #35
 372 0120 FC18     		adds	r4, r7, r3
 373 0122 FFF7FEFF 		bl	keyb
 374 0126 0300     		movs	r3, r0
 375 0128 2370     		strb	r3, [r4]
 123:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			delay_milli(40);
 376              		.loc 1 123 0
 377 012a 2820     		movs	r0, #40
 378 012c FFF7FEFF 		bl	delay_milli
 124:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 125:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			switch (val)
 379              		.loc 1 125 0
 380 0130 2323     		movs	r3, #35
 381 0132 FB18     		adds	r3, r7, r3
 382 0134 1B78     		ldrb	r3, [r3]
 383 0136 082B     		cmp	r3, #8
 384 0138 29D8     		bhi	.L14
 385 013a 9A00     		lsls	r2, r3, #2
 386 013c 164B     		ldr	r3, .L22+4
 387 013e D318     		adds	r3, r2, r3
 388 0140 1B68     		ldr	r3, [r3]
 389 0142 9F46     		mov	pc, r3
 390              		.section	.rodata
 391              		.align	2
 392              	.L16:
 393 0070 8E010000 		.word	.L14
 394 0074 8E010000 		.word	.L14
 395 0078 62010000 		.word	.L15
 396 007c 8E010000 		.word	.L14
 397 0080 52010000 		.word	.L17
 398 0084 80010000 		.word	.L18
 399 0088 44010000 		.word	.L19
 400 008c 8E010000 		.word	.L14
 401 0090 72010000 		.word	.L20
 402              		.text
 403              	.L19:
 126:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			{
 127:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 				case 6:
 128:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					b->setSpeed(b,2,0);
 404              		.loc 1 128 0
 405 0144 7B6A     		ldr	r3, [r7, #36]
 406 0146 1B69     		ldr	r3, [r3, #16]
 407 0148 786A     		ldr	r0, [r7, #36]
 408 014a 0022     		movs	r2, #0
 409 014c 0221     		movs	r1, #2
 410 014e 9847     		blx	r3
 411              	.LVL4:
 129:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					break;
 412              		.loc 1 129 0
 413 0150 1DE0     		b	.L14
 414              	.L17:
 130:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 				case 4:
 131:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					b->setSpeed(b,-2,0);
 415              		.loc 1 131 0
 416 0152 7B6A     		ldr	r3, [r7, #36]
 417 0154 1B69     		ldr	r3, [r3, #16]
 418 0156 0222     		movs	r2, #2
 419 0158 5142     		rsbs	r1, r2, #0
 420 015a 786A     		ldr	r0, [r7, #36]
 421 015c 0022     		movs	r2, #0
 422 015e 9847     		blx	r3
 423              	.LVL5:
 132:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					break;
 424              		.loc 1 132 0
 425 0160 15E0     		b	.L14
 426              	.L15:
 133:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 				case 2:
 134:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					b->setSpeed(b,0,-2);
 427              		.loc 1 134 0
 428 0162 7B6A     		ldr	r3, [r7, #36]
 429 0164 1B69     		ldr	r3, [r3, #16]
 430 0166 0222     		movs	r2, #2
 431 0168 5242     		rsbs	r2, r2, #0
 432 016a 786A     		ldr	r0, [r7, #36]
 433 016c 0021     		movs	r1, #0
 434 016e 9847     		blx	r3
 435              	.LVL6:
 135:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					break;
 436              		.loc 1 135 0
 437 0170 0DE0     		b	.L14
 438              	.L20:
 136:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 				case 8:
 137:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					b->setSpeed(b,0,2);
 439              		.loc 1 137 0
 440 0172 7B6A     		ldr	r3, [r7, #36]
 441 0174 1B69     		ldr	r3, [r3, #16]
 442 0176 786A     		ldr	r0, [r7, #36]
 443 0178 0222     		movs	r2, #2
 444 017a 0021     		movs	r1, #0
 445 017c 9847     		blx	r3
 446              	.LVL7:
 138:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					break;
 447              		.loc 1 138 0
 448 017e 06E0     		b	.L14
 449              	.L18:
 139:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 				case 5:
 140:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					b->setSpeed(b,0,0);
 450              		.loc 1 140 0
 451 0180 7B6A     		ldr	r3, [r7, #36]
 452 0182 1B69     		ldr	r3, [r3, #16]
 453 0184 786A     		ldr	r0, [r7, #36]
 454 0186 0022     		movs	r2, #0
 455 0188 0021     		movs	r1, #0
 456 018a 9847     		blx	r3
 457              	.LVL8:
 141:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 					break;
 458              		.loc 1 141 0
 459 018c C046     		nop
 460              	.L14:
 142:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			}
 143:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 144:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 145:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			//pixel(1,66);
 146:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 
 147:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			graphic_draw_screen();
 461              		.loc 1 147 0
 462 018e FFF7FEFF 		bl	graphic_draw_screen
 118:C:/Users/shriaf/Documents/Labb2/Labb3\startup.c **** 			
 463              		.loc 1 118 0
 464 0192 BDE7     		b	.L21
 465              	.L23:
 466              		.align	2
 467              	.L22:
 468 0194 54000000 		.word	.LC10
 469 0198 70000000 		.word	.L16
 470              		.cfi_endproc
 471              	.LFE5:
 473              	.Letext0:
 474              		.file 2 "C:/Users/shriaf/Documents/Labb2/Labb3/line.h"
 475              		.file 3 "C:/Users/shriaf/Documents/Labb2/Labb3/ball.h"
