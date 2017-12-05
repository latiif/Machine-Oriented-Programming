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
  11              		.file	"sys_tick.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.bss
  16              		.align	2
  17              	systick_flag:
  18 0000 00000000 		.space	4
  20              		.align	2
  21              	delay_count:
  22 0004 00000000 		.space	4
  24              		.text
  25              		.align	1
  26              		.global	initSystick
  27              		.syntax unified
  28              		.code	16
  29              		.thumb_func
  30              		.fpu softvfp
  32              	initSystick:
  33              	.LFB0:
  34              		.file 1 "C:/Users/shriaf/Documents/Labb2/labb41/sys_tick.c"
   1:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** #include "sys_tick.h"
   2:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
   3:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** void initSystick()
   4:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
  35              		.loc 1 4 0
  36              		.cfi_startproc
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 1, uses_anonymous_args = 0
  39 0000 80B5     		push	{r7, lr}
  40              		.cfi_def_cfa_offset 8
  41              		.cfi_offset 7, -8
  42              		.cfi_offset 14, -4
  43 0002 00AF     		add	r7, sp, #0
  44              		.cfi_def_cfa_register 7
   5:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *((void (**)(void))0x2001C03C) = systick_irq_handler;
  45              		.loc 1 5 0
  46 0004 024B     		ldr	r3, .L2
  47 0006 034A     		ldr	r2, .L2+4
  48 0008 1A60     		str	r2, [r3]
   6:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
  49              		.loc 1 6 0
  50 000a C046     		nop
  51 000c BD46     		mov	sp, r7
  52              		@ sp needed
  53 000e 80BD     		pop	{r7, pc}
  54              	.L3:
  55              		.align	2
  56              	.L2:
  57 0010 3CC00120 		.word	536985660
  58 0014 00000000 		.word	systick_irq_handler
  59              		.cfi_endproc
  60              	.LFE0:
  62              		.align	1
  63              		.global	delay_1mikro
  64              		.syntax unified
  65              		.code	16
  66              		.thumb_func
  67              		.fpu softvfp
  69              	delay_1mikro:
  70              	.LFB1:
   7:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
   8:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** void delay_1mikro(void)
   9:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
  71              		.loc 1 9 0
  72              		.cfi_startproc
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 1, uses_anonymous_args = 0
  75 0018 80B5     		push	{r7, lr}
  76              		.cfi_def_cfa_offset 8
  77              		.cfi_offset 7, -8
  78              		.cfi_offset 14, -4
  79 001a 00AF     		add	r7, sp, #0
  80              		.cfi_def_cfa_register 7
  10:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     /* SystemCoreClock = 168000000 */
  11:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *STK_CTRL = 0;
  81              		.loc 1 11 0
  82 001c 074B     		ldr	r3, .L5
  83 001e 0022     		movs	r2, #0
  84 0020 1A60     		str	r2, [r3]
  12:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *STK_LOAD = (168 - 1);
  85              		.loc 1 12 0
  86 0022 074B     		ldr	r3, .L5+4
  87 0024 A722     		movs	r2, #167
  88 0026 1A60     		str	r2, [r3]
  13:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *STK_VAL = 0;
  89              		.loc 1 13 0
  90 0028 064B     		ldr	r3, .L5+8
  91 002a 0022     		movs	r2, #0
  92 002c 1A60     		str	r2, [r3]
  14:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *STK_CTRL = 7;
  93              		.loc 1 14 0
  94 002e 034B     		ldr	r3, .L5
  95 0030 0722     		movs	r2, #7
  96 0032 1A60     		str	r2, [r3]
  15:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
  97              		.loc 1 15 0
  98 0034 C046     		nop
  99 0036 BD46     		mov	sp, r7
 100              		@ sp needed
 101 0038 80BD     		pop	{r7, pc}
 102              	.L6:
 103 003a C046     		.align	2
 104              	.L5:
 105 003c 10E000E0 		.word	-536813552
 106 0040 14E000E0 		.word	-536813548
 107 0044 18E000E0 		.word	-536813544
 108              		.cfi_endproc
 109              	.LFE1:
 111              		.align	1
 112              		.global	systick_irq_handler
 113              		.syntax unified
 114              		.code	16
 115              		.thumb_func
 116              		.fpu softvfp
 118              	systick_irq_handler:
 119              	.LFB2:
  16:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
  17:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
  18:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** void systick_irq_handler(void)
  19:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
 120              		.loc 1 19 0
 121              		.cfi_startproc
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 1, uses_anonymous_args = 0
 124 0048 80B5     		push	{r7, lr}
 125              		.cfi_def_cfa_offset 8
 126              		.cfi_offset 7, -8
 127              		.cfi_offset 14, -4
 128 004a 00AF     		add	r7, sp, #0
 129              		.cfi_def_cfa_register 7
  20:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     *STK_CTRL = 0;
 130              		.loc 1 20 0
 131 004c 0A4B     		ldr	r3, .L11
 132 004e 0022     		movs	r2, #0
 133 0050 1A60     		str	r2, [r3]
  21:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     delay_count--;
 134              		.loc 1 21 0
 135 0052 0A4B     		ldr	r3, .L11+4
 136 0054 1B68     		ldr	r3, [r3]
 137 0056 5A1E     		subs	r2, r3, #1
 138 0058 084B     		ldr	r3, .L11+4
 139 005a 1A60     		str	r2, [r3]
  22:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     if(delay_count > 0)
 140              		.loc 1 22 0
 141 005c 074B     		ldr	r3, .L11+4
 142 005e 1B68     		ldr	r3, [r3]
 143 0060 002B     		cmp	r3, #0
 144 0062 02DD     		ble	.L8
  23:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 		delay_1mikro();
 145              		.loc 1 23 0
 146 0064 FFF7FEFF 		bl	delay_1mikro
  24:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     else
  25:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	systick_flag = 1;
  26:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
 147              		.loc 1 26 0
 148 0068 02E0     		b	.L10
 149              	.L8:
  25:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
 150              		.loc 1 25 0
 151 006a 054B     		ldr	r3, .L11+8
 152 006c 0122     		movs	r2, #1
 153 006e 1A60     		str	r2, [r3]
 154              	.L10:
 155              		.loc 1 26 0
 156 0070 C046     		nop
 157 0072 BD46     		mov	sp, r7
 158              		@ sp needed
 159 0074 80BD     		pop	{r7, pc}
 160              	.L12:
 161 0076 C046     		.align	2
 162              	.L11:
 163 0078 10E000E0 		.word	-536813552
 164 007c 04000000 		.word	delay_count
 165 0080 00000000 		.word	systick_flag
 166              		.cfi_endproc
 167              	.LFE2:
 169              		.align	1
 170              		.global	delay
 171              		.syntax unified
 172              		.code	16
 173              		.thumb_func
 174              		.fpu softvfp
 176              	delay:
 177              	.LFB3:
  27:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
  28:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** void delay(unsigned int count)
  29:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
 178              		.loc 1 29 0
 179              		.cfi_startproc
 180              		@ args = 0, pretend = 0, frame = 8
 181              		@ frame_needed = 1, uses_anonymous_args = 0
 182 0084 80B5     		push	{r7, lr}
 183              		.cfi_def_cfa_offset 8
 184              		.cfi_offset 7, -8
 185              		.cfi_offset 14, -4
 186 0086 82B0     		sub	sp, sp, #8
 187              		.cfi_def_cfa_offset 16
 188 0088 00AF     		add	r7, sp, #0
 189              		.cfi_def_cfa_register 7
 190 008a 7860     		str	r0, [r7, #4]
  30:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     if(count == 0)
 191              		.loc 1 30 0
 192 008c 7B68     		ldr	r3, [r7, #4]
 193 008e 002B     		cmp	r3, #0
 194 0090 08D0     		beq	.L16
  31:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	return;
  32:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     delay_count = count;
 195              		.loc 1 32 0
 196 0092 7A68     		ldr	r2, [r7, #4]
 197 0094 054B     		ldr	r3, .L17
 198 0096 1A60     		str	r2, [r3]
  33:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c ****     systick_flag = 0;
 199              		.loc 1 33 0
 200 0098 054B     		ldr	r3, .L17+4
 201 009a 0022     		movs	r2, #0
 202 009c 1A60     		str	r2, [r3]
  34:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	delay_1mikro();
 203              		.loc 1 34 0
 204 009e FFF7FEFF 		bl	delay_1mikro
 205 00a2 00E0     		b	.L13
 206              	.L16:
  31:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	return;
 207              		.loc 1 31 0
 208 00a4 C046     		nop
 209              	.L13:
  35:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
 210              		.loc 1 35 0
 211 00a6 BD46     		mov	sp, r7
 212 00a8 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 00aa 80BD     		pop	{r7, pc}
 215              	.L18:
 216              		.align	2
 217              	.L17:
 218 00ac 04000000 		.word	delay_count
 219 00b0 00000000 		.word	systick_flag
 220              		.cfi_endproc
 221              	.LFE3:
 223              		.align	1
 224              		.global	getSystick
 225              		.syntax unified
 226              		.code	16
 227              		.thumb_func
 228              		.fpu softvfp
 230              	getSystick:
 231              	.LFB4:
  36:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
  37:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** int getSystick()
  38:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
 232              		.loc 1 38 0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 1, uses_anonymous_args = 0
 236 00b4 80B5     		push	{r7, lr}
 237              		.cfi_def_cfa_offset 8
 238              		.cfi_offset 7, -8
 239              		.cfi_offset 14, -4
 240 00b6 00AF     		add	r7, sp, #0
 241              		.cfi_def_cfa_register 7
  39:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	return systick_flag;
 242              		.loc 1 39 0
 243 00b8 024B     		ldr	r3, .L21
 244 00ba 1B68     		ldr	r3, [r3]
  40:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
 245              		.loc 1 40 0
 246 00bc 1800     		movs	r0, r3
 247 00be BD46     		mov	sp, r7
 248              		@ sp needed
 249 00c0 80BD     		pop	{r7, pc}
 250              	.L22:
 251 00c2 C046     		.align	2
 252              	.L21:
 253 00c4 00000000 		.word	systick_flag
 254              		.cfi_endproc
 255              	.LFE4:
 257              		.align	1
 258              		.global	delay250ns
 259              		.syntax unified
 260              		.code	16
 261              		.thumb_func
 262              		.fpu softvfp
 264              	delay250ns:
 265              	.LFB5:
  41:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 
  42:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** void delay250ns(void)
  43:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** {
 266              		.loc 1 43 0
 267              		.cfi_startproc
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 1, uses_anonymous_args = 0
 270 00c8 80B5     		push	{r7, lr}
 271              		.cfi_def_cfa_offset 8
 272              		.cfi_offset 7, -8
 273              		.cfi_offset 14, -4
 274 00ca 00AF     		add	r7, sp, #0
 275              		.cfi_def_cfa_register 7
  44:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	*STK_CTRL = 0;
 276              		.loc 1 44 0
 277 00cc 0C4B     		ldr	r3, .L25
 278 00ce 0022     		movs	r2, #0
 279 00d0 1A60     		str	r2, [r3]
  45:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	*STK_LOAD = (( 168/4) -1);
 280              		.loc 1 45 0
 281 00d2 0C4B     		ldr	r3, .L25+4
 282 00d4 2922     		movs	r2, #41
 283 00d6 1A60     		str	r2, [r3]
  46:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	
  47:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	*STK_VAL = 0;
 284              		.loc 1 47 0
 285 00d8 0B4B     		ldr	r3, .L25+8
 286 00da 0022     		movs	r2, #0
 287 00dc 1A60     		str	r2, [r3]
  48:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	*STK_CTRL=5;
 288              		.loc 1 48 0
 289 00de 084B     		ldr	r3, .L25
 290 00e0 0522     		movs	r2, #5
 291 00e2 1A60     		str	r2, [r3]
  49:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	
  50:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	while ((*STK_CTRL & 0x10000)==0)
 292              		.loc 1 50 0
 293 00e4 C046     		nop
 294              	.L24:
 295              		.loc 1 50 0 is_stmt 0 discriminator 1
 296 00e6 064B     		ldr	r3, .L25
 297 00e8 1A68     		ldr	r2, [r3]
 298 00ea 8023     		movs	r3, #128
 299 00ec 5B02     		lsls	r3, r3, #9
 300 00ee 1340     		ands	r3, r2
 301 00f0 F9D0     		beq	.L24
  51:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	{}
  52:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	
  53:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** 	*STK_CTRL=0;
 302              		.loc 1 53 0 is_stmt 1
 303 00f2 034B     		ldr	r3, .L25
 304 00f4 0022     		movs	r2, #0
 305 00f6 1A60     		str	r2, [r3]
  54:C:/Users/shriaf/Documents/Labb2/labb41\sys_tick.c **** }
 306              		.loc 1 54 0
 307 00f8 C046     		nop
 308 00fa BD46     		mov	sp, r7
 309              		@ sp needed
 310 00fc 80BD     		pop	{r7, pc}
 311              	.L26:
 312 00fe C046     		.align	2
 313              	.L25:
 314 0100 10E000E0 		.word	-536813552
 315 0104 14E000E0 		.word	-536813548
 316 0108 18E000E0 		.word	-536813544
 317              		.cfi_endproc
 318              	.LFE5:
 320              	.Letext0:
 321              		.file 2 "C:/Users/shriaf/Documents/Labb2/labb41/sys_tick.h"
