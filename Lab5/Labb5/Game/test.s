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
  11              		.file	"line.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	getLength_line
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	getLength_line:
  23              	.LFB0:
  24              		.file 1 "C:/Users/latiif/Documents/Labb5/Game/line.c"
   1:C:/Users/latiif/Documents/Labb5/Game\line.c **** #include "line.h"
   2:C:/Users/latiif/Documents/Labb5/Game\line.c **** #include "display.h"
   3:C:/Users/latiif/Documents/Labb5/Game\line.c **** 
   4:C:/Users/latiif/Documents/Labb5/Game\line.c **** int getLength_line(Line* this)
   5:C:/Users/latiif/Documents/Labb5/Game\line.c **** {
  25              		.loc 1 5 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 7860     		str	r0, [r7, #4]
   6:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	return this->length;
  38              		.loc 1 6 0
  39 0008 7B68     		ldr	r3, [r7, #4]
  40 000a 1B68     		ldr	r3, [r3]
   7:C:/Users/latiif/Documents/Labb5/Game\line.c **** }
  41              		.loc 1 7 0
  42 000c 1800     		movs	r0, r3
  43 000e BD46     		mov	sp, r7
  44 0010 02B0     		add	sp, sp, #8
  45              		@ sp needed
  46 0012 80BD     		pop	{r7, pc}
  47              		.cfi_endproc
  48              	.LFE0:
  50              		.align	1
  51              		.global	getDirection_line
  52              		.syntax unified
  53              		.code	16
  54              		.thumb_func
  55              		.fpu softvfp
  57              	getDirection_line:
  58              	.LFB1:
   8:C:/Users/latiif/Documents/Labb5/Game\line.c **** 
   9:C:/Users/latiif/Documents/Labb5/Game\line.c **** 
  10:C:/Users/latiif/Documents/Labb5/Game\line.c **** Direction getDirection_line(Line* this)
  11:C:/Users/latiif/Documents/Labb5/Game\line.c **** {
  59              		.loc 1 11 0
  60              		.cfi_startproc
  61              		@ args = 0, pretend = 0, frame = 8
  62              		@ frame_needed = 1, uses_anonymous_args = 0
  63 0014 80B5     		push	{r7, lr}
  64              		.cfi_def_cfa_offset 8
  65              		.cfi_offset 7, -8
  66              		.cfi_offset 14, -4
  67 0016 82B0     		sub	sp, sp, #8
  68              		.cfi_def_cfa_offset 16
  69 0018 00AF     		add	r7, sp, #0
  70              		.cfi_def_cfa_register 7
  71 001a 7860     		str	r0, [r7, #4]
  12:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	return this->direction;
  72              		.loc 1 12 0
  73 001c 7B68     		ldr	r3, [r7, #4]
  74 001e 1B79     		ldrb	r3, [r3, #4]
  13:C:/Users/latiif/Documents/Labb5/Game\line.c **** }
  75              		.loc 1 13 0
  76 0020 1800     		movs	r0, r3
  77 0022 BD46     		mov	sp, r7
  78 0024 02B0     		add	sp, sp, #8
  79              		@ sp needed
  80 0026 80BD     		pop	{r7, pc}
  81              		.cfi_endproc
  82              	.LFE1:
  84              		.align	1
  85              		.global	draw_line
  86              		.syntax unified
  87              		.code	16
  88              		.thumb_func
  89              		.fpu softvfp
  91              	draw_line:
  92              	.LFB2:
  14:C:/Users/latiif/Documents/Labb5/Game\line.c **** 
  15:C:/Users/latiif/Documents/Labb5/Game\line.c **** void draw_line(Line* this)
  16:C:/Users/latiif/Documents/Labb5/Game\line.c **** {
  93              		.loc 1 16 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 32
  96              		@ frame_needed = 1, uses_anonymous_args = 0
  97 0028 80B5     		push	{r7, lr}
  98              		.cfi_def_cfa_offset 8
  99              		.cfi_offset 7, -8
 100              		.cfi_offset 14, -4
 101 002a 88B0     		sub	sp, sp, #32
 102              		.cfi_def_cfa_offset 40
 103 002c 00AF     		add	r7, sp, #0
 104              		.cfi_def_cfa_register 7
 105 002e 7860     		str	r0, [r7, #4]
  17:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	int x0 = this->startX;
 106              		.loc 1 17 0
 107 0030 7B68     		ldr	r3, [r7, #4]
 108 0032 9B68     		ldr	r3, [r3, #8]
 109 0034 7B61     		str	r3, [r7, #20]
  18:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	int y0 = this->startY;
 110              		.loc 1 18 0
 111 0036 7B68     		ldr	r3, [r7, #4]
 112 0038 DB68     		ldr	r3, [r3, #12]
 113 003a 3B61     		str	r3, [r7, #16]
  19:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	
  20:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	int len = this->length;
 114              		.loc 1 20 0
 115 003c 7B68     		ldr	r3, [r7, #4]
 116 003e 1B68     		ldr	r3, [r3]
 117 0040 FB60     		str	r3, [r7, #12]
  21:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	
  22:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	switch (this->direction)
 118              		.loc 1 22 0
 119 0042 7B68     		ldr	r3, [r7, #4]
 120 0044 1B79     		ldrb	r3, [r3, #4]
 121 0046 002B     		cmp	r3, #0
 122 0048 02D0     		beq	.L7
 123 004a 012B     		cmp	r3, #1
 124 004c 11D0     		beq	.L8
  23:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	{
  24:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		case (HORIZONTAL):
  25:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			for (int i=x0;i<len;i++)
  26:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
  27:C:/Users/latiif/Documents/Labb5/Game\line.c **** 				pixel(i,y0);
  28:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			}
  29:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		break;
  30:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		
  31:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		case (VERTICAL):
  32:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			for (int j=y0;j<len;j++)
  33:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
  34:C:/Users/latiif/Documents/Labb5/Game\line.c **** 				pixel(x0,j);
  35:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			}
  36:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		break;
  37:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	}
  38:C:/Users/latiif/Documents/Labb5/Game\line.c **** }
 125              		.loc 1 38 0
 126 004e 21E0     		b	.L13
 127              	.L7:
 128              	.LBB2:
  25:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 129              		.loc 1 25 0
 130 0050 7B69     		ldr	r3, [r7, #20]
 131 0052 FB61     		str	r3, [r7, #28]
 132 0054 08E0     		b	.L9
 133              	.L10:
  27:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			}
 134              		.loc 1 27 0 discriminator 3
 135 0056 3A69     		ldr	r2, [r7, #16]
 136 0058 FB69     		ldr	r3, [r7, #28]
 137 005a 1100     		movs	r1, r2
 138 005c 1800     		movs	r0, r3
 139 005e FFF7FEFF 		bl	pixel
  25:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 140              		.loc 1 25 0 discriminator 3
 141 0062 FB69     		ldr	r3, [r7, #28]
 142 0064 0133     		adds	r3, r3, #1
 143 0066 FB61     		str	r3, [r7, #28]
 144              	.L9:
  25:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 145              		.loc 1 25 0 is_stmt 0 discriminator 1
 146 0068 FA69     		ldr	r2, [r7, #28]
 147 006a FB68     		ldr	r3, [r7, #12]
 148 006c 9A42     		cmp	r2, r3
 149 006e F2DB     		blt	.L10
 150              	.LBE2:
  29:C:/Users/latiif/Documents/Labb5/Game\line.c **** 		
 151              		.loc 1 29 0 is_stmt 1
 152 0070 10E0     		b	.L6
 153              	.L8:
 154              	.LBB3:
  32:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 155              		.loc 1 32 0
 156 0072 3B69     		ldr	r3, [r7, #16]
 157 0074 BB61     		str	r3, [r7, #24]
 158 0076 08E0     		b	.L11
 159              	.L12:
  34:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			}
 160              		.loc 1 34 0 discriminator 3
 161 0078 BA69     		ldr	r2, [r7, #24]
 162 007a 7B69     		ldr	r3, [r7, #20]
 163 007c 1100     		movs	r1, r2
 164 007e 1800     		movs	r0, r3
 165 0080 FFF7FEFF 		bl	pixel
  32:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 166              		.loc 1 32 0 discriminator 3
 167 0084 BB69     		ldr	r3, [r7, #24]
 168 0086 0133     		adds	r3, r3, #1
 169 0088 BB61     		str	r3, [r7, #24]
 170              	.L11:
  32:C:/Users/latiif/Documents/Labb5/Game\line.c **** 			{
 171              		.loc 1 32 0 is_stmt 0 discriminator 1
 172 008a BA69     		ldr	r2, [r7, #24]
 173 008c FB68     		ldr	r3, [r7, #12]
 174 008e 9A42     		cmp	r2, r3
 175 0090 F2DB     		blt	.L12
 176              	.LBE3:
  36:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	}
 177              		.loc 1 36 0 is_stmt 1
 178 0092 C046     		nop
 179              	.L6:
 180              	.L13:
 181              		.loc 1 38 0
 182 0094 C046     		nop
 183 0096 BD46     		mov	sp, r7
 184 0098 08B0     		add	sp, sp, #32
 185              		@ sp needed
 186 009a 80BD     		pop	{r7, pc}
 187              		.cfi_endproc
 188              	.LFE2:
 190              		.align	1
 191              		.global	createLine
 192              		.syntax unified
 193              		.code	16
 194              		.thumb_func
 195              		.fpu softvfp
 197              	createLine:
 198              	.LFB3:
  39:C:/Users/latiif/Documents/Labb5/Game\line.c **** 
  40:C:/Users/latiif/Documents/Labb5/Game\line.c **** Line* createLine(int len,Direction dir,int x0,int y0)
  41:C:/Users/latiif/Documents/Labb5/Game\line.c **** {
 199              		.loc 1 41 0
 200              		.cfi_startproc
 201              		@ args = 0, pretend = 0, frame = 16
 202              		@ frame_needed = 1, uses_anonymous_args = 0
 203 009c 80B5     		push	{r7, lr}
 204              		.cfi_def_cfa_offset 8
 205              		.cfi_offset 7, -8
 206              		.cfi_offset 14, -4
 207 009e 84B0     		sub	sp, sp, #16
 208              		.cfi_def_cfa_offset 24
 209 00a0 00AF     		add	r7, sp, #0
 210              		.cfi_def_cfa_register 7
 211 00a2 F860     		str	r0, [r7, #12]
 212 00a4 7A60     		str	r2, [r7, #4]
 213 00a6 3B60     		str	r3, [r7]
 214 00a8 0B23     		movs	r3, #11
 215 00aa FB18     		adds	r3, r7, r3
 216 00ac 0A1C     		adds	r2, r1, #0
 217 00ae 1A70     		strb	r2, [r3]
  42:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	
  43:C:/Users/latiif/Documents/Labb5/Game\line.c **** 	return 0;
 218              		.loc 1 43 0
 219 00b0 0023     		movs	r3, #0
  44:C:/Users/latiif/Documents/Labb5/Game\line.c **** }
 220              		.loc 1 44 0
 221 00b2 1800     		movs	r0, r3
 222 00b4 BD46     		mov	sp, r7
 223 00b6 04B0     		add	sp, sp, #16
 224              		@ sp needed
 225 00b8 80BD     		pop	{r7, pc}
 226              		.cfi_endproc
 227              	.LFE3:
 229              	.Letext0:
 230              		.file 2 "C:/Users/latiif/Documents/Labb5/Game/line.h"
