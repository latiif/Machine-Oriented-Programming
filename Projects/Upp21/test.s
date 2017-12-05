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
  25              		.file 1 "C:/Users/shriaf/Documents/Labb2/Upp21/startup.c"
   1:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** /*
   2:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  * 	startup.c
   3:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  *
   4:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  */
   5:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  
   6:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  
   7:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define	GPIO_D		0x40020C00
   8:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define 	GPIO_MODER	((volatile unsigned int *)	(GPIO_D))
   9:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define 	GPIO_OTYPER	((volatile unsigned short *)	(GPIO_D+0x4))
  10:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define 	GPIO_PUPDR	((volatile unsigned int *)	(GPIO_D+0xC))
  11:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  
  12:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** #define 	GPIO_IDR_LOW	((volatile unsigned char *)	(GPIO_D+0x10))
  13:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** #define 	GPIO_IDR_HIGH	((volatile unsigned char *)	(GPIO_D+0x11))
  14:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  15:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define 	GPIO_ODR_LOW	((volatile unsigned char *)	(GPIO_D+0x14))
  16:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c ****  #define 	GPIO_ODR_HIGH	((volatile unsigned char *)	(GPIO_D+0x15))
  17:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  18:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  19:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  20:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void app_init(void);
  21:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void kbdActivate(unsigned int row);
  22:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** int kbdGetCol(void);
  23:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** unsigned char keyb(void);
  24:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  25:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void out7seg(unsigned char c);
  26:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  27:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  28:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void startup ( void )
  29:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
  26              		.loc 1 29 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  30:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** __asm volatile(
  31              		.loc 1 30 0
  32              		.syntax divided
  33              	@ 30 "C:/Users/shriaf/Documents/Labb2/Upp21/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  31:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  32:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	" MOV SP,R0\n"
  33:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	" BL main\n"				/* call main */
  34:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	"_exit: B .\n"				/* never return */
  35:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	) ;
  36:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
  40              		.loc 1 36 0
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
  37:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  38:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  39:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void main(void)
  40:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
  57              		.loc 1 40 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 8
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 82B0     		sub	sp, sp, #8
  66              		.cfi_def_cfa_offset 16
  67 0004 00AF     		add	r7, sp, #0
  68              		.cfi_def_cfa_register 7
  41:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	app_init();
  69              		.loc 1 41 0
  70 0006 FFF7FEFF 		bl	app_init
  42:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	unsigned char k=0;
  71              		.loc 1 42 0
  72 000a FB1D     		adds	r3, r7, #7
  73 000c 0022     		movs	r2, #0
  74 000e 1A70     		strb	r2, [r3]
  75              	.L3:
  43:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	while(1){
  44:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		out7seg(keyb());
  76              		.loc 1 44 0 discriminator 1
  77 0010 FFF7FEFF 		bl	keyb
  78 0014 0300     		movs	r3, r0
  79 0016 1800     		movs	r0, r3
  80 0018 FFF7FEFF 		bl	out7seg
  81 001c F8E7     		b	.L3
  82              		.cfi_endproc
  83              	.LFE1:
  85              		.align	1
  86              		.global	kbdActivate
  87              		.syntax unified
  88              		.code	16
  89              		.thumb_func
  90              		.fpu softvfp
  92              	kbdActivate:
  93              	.LFB2:
  45:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
  46:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
  47:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  48:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  49:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void kbdActivate(unsigned int row)
  50:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
  94              		.loc 1 50 0
  95              		.cfi_startproc
  96              		@ args = 0, pretend = 0, frame = 8
  97              		@ frame_needed = 1, uses_anonymous_args = 0
  98 001e 80B5     		push	{r7, lr}
  99              		.cfi_def_cfa_offset 8
 100              		.cfi_offset 7, -8
 101              		.cfi_offset 14, -4
 102 0020 82B0     		sub	sp, sp, #8
 103              		.cfi_def_cfa_offset 16
 104 0022 00AF     		add	r7, sp, #0
 105              		.cfi_def_cfa_register 7
 106 0024 7860     		str	r0, [r7, #4]
  51:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	switch (row)
 107              		.loc 1 51 0
 108 0026 7B68     		ldr	r3, [r7, #4]
 109 0028 042B     		cmp	r3, #4
 110 002a 19D8     		bhi	.L12
 111 002c 7B68     		ldr	r3, [r7, #4]
 112 002e 9A00     		lsls	r2, r3, #2
 113 0030 0D4B     		ldr	r3, .L13
 114 0032 D318     		adds	r3, r2, r3
 115 0034 1B68     		ldr	r3, [r3]
 116 0036 9F46     		mov	pc, r3
 117              		.section	.rodata
 118              		.align	2
 119              	.L7:
 120 0000 58000000 		.word	.L6
 121 0004 38000000 		.word	.L8
 122 0008 40000000 		.word	.L9
 123 000c 48000000 		.word	.L10
 124 0010 50000000 		.word	.L11
 125              		.text
 126              	.L8:
  52:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
  53:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		case 1:	*GPIO_ODR_HIGH = 0x10;	break;
 127              		.loc 1 53 0
 128 0038 0C4B     		ldr	r3, .L13+4
 129 003a 1022     		movs	r2, #16
 130 003c 1A70     		strb	r2, [r3]
 131 003e 0FE0     		b	.L5
 132              	.L9:
  54:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		case 2: *GPIO_ODR_HIGH = 0x20;	break;
 133              		.loc 1 54 0
 134 0040 0A4B     		ldr	r3, .L13+4
 135 0042 2022     		movs	r2, #32
 136 0044 1A70     		strb	r2, [r3]
 137 0046 0BE0     		b	.L5
 138              	.L10:
  55:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		case 3:	*GPIO_ODR_HIGH = 0x40;	break;
 139              		.loc 1 55 0
 140 0048 084B     		ldr	r3, .L13+4
 141 004a 4022     		movs	r2, #64
 142 004c 1A70     		strb	r2, [r3]
 143 004e 07E0     		b	.L5
 144              	.L11:
  56:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		case 4:	*GPIO_ODR_HIGH = 0x80;	break;
 145              		.loc 1 56 0
 146 0050 064B     		ldr	r3, .L13+4
 147 0052 8022     		movs	r2, #128
 148 0054 1A70     		strb	r2, [r3]
 149 0056 03E0     		b	.L5
 150              	.L6:
  57:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		case 0: *GPIO_ODR_HIGH = 0x00;	break;
 151              		.loc 1 57 0
 152 0058 044B     		ldr	r3, .L13+4
 153 005a 0022     		movs	r2, #0
 154 005c 1A70     		strb	r2, [r3]
 155 005e C046     		nop
 156              	.L5:
 157              	.L12:
  58:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
  59:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
 158              		.loc 1 59 0
 159 0060 C046     		nop
 160 0062 BD46     		mov	sp, r7
 161 0064 02B0     		add	sp, sp, #8
 162              		@ sp needed
 163 0066 80BD     		pop	{r7, pc}
 164              	.L14:
 165              		.align	2
 166              	.L13:
 167 0068 00000000 		.word	.L7
 168 006c 150C0240 		.word	1073875989
 169              		.cfi_endproc
 170              	.LFE2:
 172              		.align	1
 173              		.global	app_init
 174              		.syntax unified
 175              		.code	16
 176              		.thumb_func
 177              		.fpu softvfp
 179              	app_init:
 180              	.LFB3:
  60:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  61:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void app_init(void)
  62:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
 181              		.loc 1 62 0
 182              		.cfi_startproc
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 1, uses_anonymous_args = 0
 185 0070 80B5     		push	{r7, lr}
 186              		.cfi_def_cfa_offset 8
 187              		.cfi_offset 7, -8
 188              		.cfi_offset 14, -4
 189 0072 00AF     		add	r7, sp, #0
 190              		.cfi_def_cfa_register 7
  63:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	*((unsigned long *)  0x40023830)= 0x18;
 191              		.loc 1 63 0
 192 0074 094B     		ldr	r3, .L16
 193 0076 1822     		movs	r2, #24
 194 0078 1A60     		str	r2, [r3]
  64:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	*GPIO_MODER = 0x55005555;
 195              		.loc 1 64 0
 196 007a 094B     		ldr	r3, .L16+4
 197 007c 094A     		ldr	r2, .L16+8
 198 007e 1A60     		str	r2, [r3]
  65:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	*GPIO_PUPDR |=0x00AA;
 199              		.loc 1 65 0
 200 0080 094B     		ldr	r3, .L16+12
 201 0082 094A     		ldr	r2, .L16+12
 202 0084 1268     		ldr	r2, [r2]
 203 0086 AA21     		movs	r1, #170
 204 0088 0A43     		orrs	r2, r1
 205 008a 1A60     		str	r2, [r3]
  66:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	*GPIO_OTYPER |=0x0;
 206              		.loc 1 66 0
 207 008c 074B     		ldr	r3, .L16+16
 208 008e 074A     		ldr	r2, .L16+16
 209 0090 1288     		ldrh	r2, [r2]
 210 0092 92B2     		uxth	r2, r2
 211 0094 1A80     		strh	r2, [r3]
  67:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
 212              		.loc 1 67 0
 213 0096 C046     		nop
 214 0098 BD46     		mov	sp, r7
 215              		@ sp needed
 216 009a 80BD     		pop	{r7, pc}
 217              	.L17:
 218              		.align	2
 219              	.L16:
 220 009c 30380240 		.word	1073887280
 221 00a0 000C0240 		.word	1073875968
 222 00a4 55550055 		.word	1426085205
 223 00a8 0C0C0240 		.word	1073875980
 224 00ac 040C0240 		.word	1073875972
 225              		.cfi_endproc
 226              	.LFE3:
 228              		.align	1
 229              		.global	kbdGetCol
 230              		.syntax unified
 231              		.code	16
 232              		.thumb_func
 233              		.fpu softvfp
 235              	kbdGetCol:
 236              	.LFB4:
  68:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  69:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** int kbdGetCol(void)
  70:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
 237              		.loc 1 70 0
 238              		.cfi_startproc
 239              		@ args = 0, pretend = 0, frame = 8
 240              		@ frame_needed = 1, uses_anonymous_args = 0
 241 00b0 80B5     		push	{r7, lr}
 242              		.cfi_def_cfa_offset 8
 243              		.cfi_offset 7, -8
 244              		.cfi_offset 14, -4
 245 00b2 82B0     		sub	sp, sp, #8
 246              		.cfi_def_cfa_offset 16
 247 00b4 00AF     		add	r7, sp, #0
 248              		.cfi_def_cfa_register 7
  71:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	unsigned char c;
  72:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	c= *GPIO_IDR_HIGH;
 249              		.loc 1 72 0
 250 00b6 124A     		ldr	r2, .L24
 251 00b8 FB1D     		adds	r3, r7, #7
 252 00ba 1278     		ldrb	r2, [r2]
 253 00bc 1A70     		strb	r2, [r3]
  73:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
  74:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	if (c	&	0x8)	return 4;
 254              		.loc 1 74 0
 255 00be FB1D     		adds	r3, r7, #7
 256 00c0 1B78     		ldrb	r3, [r3]
 257 00c2 0822     		movs	r2, #8
 258 00c4 1340     		ands	r3, r2
 259 00c6 01D0     		beq	.L19
 260              		.loc 1 74 0 is_stmt 0 discriminator 1
 261 00c8 0423     		movs	r3, #4
 262 00ca 15E0     		b	.L20
 263              	.L19:
  75:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	if (c	&	0x4)	return 3;
 264              		.loc 1 75 0 is_stmt 1
 265 00cc FB1D     		adds	r3, r7, #7
 266 00ce 1B78     		ldrb	r3, [r3]
 267 00d0 0422     		movs	r2, #4
 268 00d2 1340     		ands	r3, r2
 269 00d4 01D0     		beq	.L21
 270              		.loc 1 75 0 is_stmt 0 discriminator 1
 271 00d6 0323     		movs	r3, #3
 272 00d8 0EE0     		b	.L20
 273              	.L21:
  76:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	if (c	&	0x2)	return 2;
 274              		.loc 1 76 0 is_stmt 1
 275 00da FB1D     		adds	r3, r7, #7
 276 00dc 1B78     		ldrb	r3, [r3]
 277 00de 0222     		movs	r2, #2
 278 00e0 1340     		ands	r3, r2
 279 00e2 01D0     		beq	.L22
 280              		.loc 1 76 0 is_stmt 0 discriminator 1
 281 00e4 0223     		movs	r3, #2
 282 00e6 07E0     		b	.L20
 283              	.L22:
  77:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	if (c	&	0x1)	return 1;
 284              		.loc 1 77 0 is_stmt 1
 285 00e8 FB1D     		adds	r3, r7, #7
 286 00ea 1B78     		ldrb	r3, [r3]
 287 00ec 0122     		movs	r2, #1
 288 00ee 1340     		ands	r3, r2
 289 00f0 01D0     		beq	.L23
 290              		.loc 1 77 0 is_stmt 0 discriminator 1
 291 00f2 0123     		movs	r3, #1
 292 00f4 00E0     		b	.L20
 293              	.L23:
  78:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
  79:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	return 0;
 294              		.loc 1 79 0 is_stmt 1
 295 00f6 0023     		movs	r3, #0
 296              	.L20:
  80:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
 297              		.loc 1 80 0
 298 00f8 1800     		movs	r0, r3
 299 00fa BD46     		mov	sp, r7
 300 00fc 02B0     		add	sp, sp, #8
 301              		@ sp needed
 302 00fe 80BD     		pop	{r7, pc}
 303              	.L25:
 304              		.align	2
 305              	.L24:
 306 0100 110C0240 		.word	1073875985
 307              		.cfi_endproc
 308              	.LFE4:
 310              		.section	.rodata
 311              		.align	2
 312              	.LC0:
 313 0014 01       		.byte	1
 314 0015 02       		.byte	2
 315 0016 03       		.byte	3
 316 0017 0A       		.byte	10
 317 0018 04       		.byte	4
 318 0019 05       		.byte	5
 319 001a 06       		.byte	6
 320 001b 0B       		.byte	11
 321 001c 07       		.byte	7
 322 001d 08       		.byte	8
 323 001e 09       		.byte	9
 324 001f 0C       		.byte	12
 325 0020 0E       		.byte	14
 326 0021 00       		.byte	0
 327 0022 0F       		.byte	15
 328 0023 0D       		.byte	13
 329              		.text
 330              		.align	1
 331              		.global	keyb
 332              		.syntax unified
 333              		.code	16
 334              		.thumb_func
 335              		.fpu softvfp
 337              	keyb:
 338              	.LFB5:
  81:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
  82:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** unsigned char keyb(void)
  83:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
 339              		.loc 1 83 0
 340              		.cfi_startproc
 341              		@ args = 0, pretend = 0, frame = 24
 342              		@ frame_needed = 1, uses_anonymous_args = 0
 343 0104 90B5     		push	{r4, r7, lr}
 344              		.cfi_def_cfa_offset 12
 345              		.cfi_offset 4, -12
 346              		.cfi_offset 7, -8
 347              		.cfi_offset 14, -4
 348 0106 87B0     		sub	sp, sp, #28
 349              		.cfi_def_cfa_offset 40
 350 0108 00AF     		add	r7, sp, #0
 351              		.cfi_def_cfa_register 7
  84:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 352              		.loc 1 84 0
 353 010a 3B00     		movs	r3, r7
 354 010c 164A     		ldr	r2, .L32
 355 010e 13CA     		ldmia	r2!, {r0, r1, r4}
 356 0110 13C3     		stmia	r3!, {r0, r1, r4}
 357 0112 1268     		ldr	r2, [r2]
 358 0114 1A60     		str	r2, [r3]
  85:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
  86:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	int row, col;
  87:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
  88:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	for (row =1; row<=4;row++)
 359              		.loc 1 88 0
 360 0116 0123     		movs	r3, #1
 361 0118 7B61     		str	r3, [r7, #20]
 362 011a 19E0     		b	.L27
 363              	.L30:
  89:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
  90:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		kbdActivate(row);
 364              		.loc 1 90 0
 365 011c 7B69     		ldr	r3, [r7, #20]
 366 011e 1800     		movs	r0, r3
 367 0120 FFF7FEFF 		bl	kbdActivate
  91:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		if ((col=kbdGetCol()))
 368              		.loc 1 91 0
 369 0124 FFF7FEFF 		bl	kbdGetCol
 370 0128 0300     		movs	r3, r0
 371 012a 3B61     		str	r3, [r7, #16]
 372 012c 3B69     		ldr	r3, [r7, #16]
 373 012e 002B     		cmp	r3, #0
 374 0130 0BD0     		beq	.L28
  92:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		{
  93:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 			kbdActivate(0);
 375              		.loc 1 93 0
 376 0132 0020     		movs	r0, #0
 377 0134 FFF7FEFF 		bl	kbdActivate
  94:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 			return key[4*(row-1)+(col-1)];
 378              		.loc 1 94 0
 379 0138 7B69     		ldr	r3, [r7, #20]
 380 013a 013B     		subs	r3, r3, #1
 381 013c 9A00     		lsls	r2, r3, #2
 382 013e 3B69     		ldr	r3, [r7, #16]
 383 0140 013B     		subs	r3, r3, #1
 384 0142 D318     		adds	r3, r2, r3
 385 0144 3A00     		movs	r2, r7
 386 0146 D35C     		ldrb	r3, [r2, r3]
 387 0148 09E0     		b	.L31
 388              	.L28:
  88:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
 389              		.loc 1 88 0 discriminator 2
 390 014a 7B69     		ldr	r3, [r7, #20]
 391 014c 0133     		adds	r3, r3, #1
 392 014e 7B61     		str	r3, [r7, #20]
 393              	.L27:
  88:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
 394              		.loc 1 88 0 is_stmt 0 discriminator 1
 395 0150 7B69     		ldr	r3, [r7, #20]
 396 0152 042B     		cmp	r3, #4
 397 0154 E2DD     		ble	.L30
  95:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		}
  96:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
  97:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
  98:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	kbdActivate(0);
 398              		.loc 1 98 0 is_stmt 1
 399 0156 0020     		movs	r0, #0
 400 0158 FFF7FEFF 		bl	kbdActivate
  99:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	return 0xFF;
 401              		.loc 1 99 0
 402 015c FF23     		movs	r3, #255
 403              	.L31:
 100:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
 404              		.loc 1 100 0 discriminator 1
 405 015e 1800     		movs	r0, r3
 406 0160 BD46     		mov	sp, r7
 407 0162 07B0     		add	sp, sp, #28
 408              		@ sp needed
 409 0164 90BD     		pop	{r4, r7, pc}
 410              	.L33:
 411 0166 C046     		.align	2
 412              	.L32:
 413 0168 14000000 		.word	.LC0
 414              		.cfi_endproc
 415              	.LFE5:
 417              		.section	.rodata
 418              		.align	2
 419              	.LC1:
 420 0024 3F00     		.short	63
 421 0026 0600     		.short	6
 422 0028 5B00     		.short	91
 423 002a 4F00     		.short	79
 424 002c 6600     		.short	102
 425 002e 6D00     		.short	109
 426 0030 7D00     		.short	125
 427 0032 0700     		.short	7
 428 0034 7F00     		.short	127
 429 0036 6F00     		.short	111
 430 0038 7700     		.short	119
 431 003a 7C00     		.short	124
 432 003c 3900     		.short	57
 433 003e 5E00     		.short	94
 434 0040 7900     		.short	121
 435 0042 7100     		.short	113
 436              		.text
 437              		.align	1
 438              		.global	out7seg
 439              		.syntax unified
 440              		.code	16
 441              		.thumb_func
 442              		.fpu softvfp
 444              	out7seg:
 445              	.LFB6:
 101:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 
 102:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** void out7seg(unsigned char c)
 103:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** {
 446              		.loc 1 103 0
 447              		.cfi_startproc
 448              		@ args = 0, pretend = 0, frame = 40
 449              		@ frame_needed = 1, uses_anonymous_args = 0
 450 016c 90B5     		push	{r4, r7, lr}
 451              		.cfi_def_cfa_offset 12
 452              		.cfi_offset 4, -12
 453              		.cfi_offset 7, -8
 454              		.cfi_offset 14, -4
 455 016e 8BB0     		sub	sp, sp, #44
 456              		.cfi_def_cfa_offset 56
 457 0170 00AF     		add	r7, sp, #0
 458              		.cfi_def_cfa_register 7
 459 0172 0200     		movs	r2, r0
 460 0174 FB1D     		adds	r3, r7, #7
 461 0176 1A70     		strb	r2, [r3]
 104:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	unsigned short result[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0
 462              		.loc 1 104 0
 463 0178 0823     		movs	r3, #8
 464 017a FB18     		adds	r3, r7, r3
 465 017c 0D4A     		ldr	r2, .L38
 466 017e 13CA     		ldmia	r2!, {r0, r1, r4}
 467 0180 13C3     		stmia	r3!, {r0, r1, r4}
 468 0182 13CA     		ldmia	r2!, {r0, r1, r4}
 469 0184 13C3     		stmia	r3!, {r0, r1, r4}
 470 0186 03CA     		ldmia	r2!, {r0, r1}
 471 0188 03C3     		stmia	r3!, {r0, r1}
 105:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	
 106:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	if (c>0xF)
 472              		.loc 1 106 0
 473 018a FB1D     		adds	r3, r7, #7
 474 018c 1B78     		ldrb	r3, [r3]
 475 018e 0F2B     		cmp	r3, #15
 476 0190 03D9     		bls	.L35
 107:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
 108:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		*GPIO_ODR_LOW= 0x00;
 477              		.loc 1 108 0
 478 0192 094B     		ldr	r3, .L38+4
 479 0194 0022     		movs	r2, #0
 480 0196 1A70     		strb	r2, [r3]
 109:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
 110:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	else
 111:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	{
 112:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 		*GPIO_ODR_LOW = result[c];
 113:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
 114:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** }
 481              		.loc 1 114 0
 482 0198 08E0     		b	.L37
 483              	.L35:
 112:C:/Users/shriaf/Documents/Labb2/Upp21\startup.c **** 	}
 484              		.loc 1 112 0
 485 019a 0749     		ldr	r1, .L38+4
 486 019c FB1D     		adds	r3, r7, #7
 487 019e 1A78     		ldrb	r2, [r3]
 488 01a0 0823     		movs	r3, #8
 489 01a2 FB18     		adds	r3, r7, r3
 490 01a4 5200     		lsls	r2, r2, #1
 491 01a6 D35A     		ldrh	r3, [r2, r3]
 492 01a8 DBB2     		uxtb	r3, r3
 493 01aa 0B70     		strb	r3, [r1]
 494              	.L37:
 495              		.loc 1 114 0
 496 01ac C046     		nop
 497 01ae BD46     		mov	sp, r7
 498 01b0 0BB0     		add	sp, sp, #44
 499              		@ sp needed
 500 01b2 90BD     		pop	{r4, r7, pc}
 501              	.L39:
 502              		.align	2
 503              	.L38:
 504 01b4 24000000 		.word	.LC1
 505 01b8 140C0240 		.word	1073875988
 506              		.cfi_endproc
 507              	.LFE6:
 509              	.Letext0:
