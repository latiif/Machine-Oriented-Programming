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
  11              		.file	"external_req.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.comm	c,4,4
  16              		.align	1
  17              		.global	irq_handler
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	irq_handler:
  24              	.LFB0:
  25              		.file 1 "C:/Users/shriaf/Documents/Labb2/labb44/external_req.c"
   1:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** #include "external_req.h"
   2:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
   3:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
   4:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** void irq_handler ( void )
   5:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** {
  26              		.loc 1 5 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 1, uses_anonymous_args = 0
  30 0000 80B5     		push	{r7, lr}
  31              		.cfi_def_cfa_offset 8
  32              		.cfi_offset 7, -8
  33              		.cfi_offset 14, -4
  34 0002 00AF     		add	r7, sp, #0
  35              		.cfi_def_cfa_register 7
   6:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Om avbrott från EXTI2:
   7:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		kvittera avbrott från EXTI2 */
   8:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	if(   *((unsigned int *) EXTI_PR) & EXTI2_IRQ_BPOS )
  36              		.loc 1 8 0
  37 0004 214B     		ldr	r3, .L6
  38 0006 1B68     		ldr	r3, [r3]
  39 0008 0422     		movs	r2, #4
  40 000a 1340     		ands	r3, r2
  41 000c 10D0     		beq	.L2
   9:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	{
  10:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****        *((unsigned int *) EXTI_PR) |= EXTI2_IRQ_BPOS;
  42              		.loc 1 10 0
  43 000e 1F4B     		ldr	r3, .L6
  44 0010 1E4A     		ldr	r2, .L6
  45 0012 1268     		ldr	r2, [r2]
  46 0014 0421     		movs	r1, #4
  47 0016 0A43     		orrs	r2, r1
  48 0018 1A60     		str	r2, [r3]
  11:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   c=~c;
  49              		.loc 1 11 0
  50 001a 1D4B     		ldr	r3, .L6+4
  51 001c 1B68     		ldr	r3, [r3]
  52 001e DA43     		mvns	r2, r3
  53 0020 1B4B     		ldr	r3, .L6+4
  54 0022 1A60     		str	r2, [r3]
  12:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0x40;
  55              		.loc 1 12 0
  56 0024 1B4B     		ldr	r3, .L6+8
  57 0026 4022     		movs	r2, #64
  58 0028 1A70     		strb	r2, [r3]
  13:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0;
  59              		.loc 1 13 0
  60 002a 1A4B     		ldr	r3, .L6+8
  61 002c 0022     		movs	r2, #0
  62 002e 1A70     		strb	r2, [r3]
  63              	.L2:
  14:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	}
  15:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  16:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  17:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		/* Om avbrott från EXTI1:
  18:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		kvittera avbrott från EXTI1 */
  19:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	if(   *((unsigned int *) EXTI_PR) & EXTI1_IRQ_BPOS )
  64              		.loc 1 19 0
  65 0030 164B     		ldr	r3, .L6
  66 0032 1B68     		ldr	r3, [r3]
  67 0034 0222     		movs	r2, #2
  68 0036 1340     		ands	r3, r2
  69 0038 0ED0     		beq	.L3
  20:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	{
  21:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****        *((unsigned int *) EXTI_PR) |= EXTI1_IRQ_BPOS;
  70              		.loc 1 21 0
  71 003a 144B     		ldr	r3, .L6
  72 003c 134A     		ldr	r2, .L6
  73 003e 1268     		ldr	r2, [r2]
  74 0040 0221     		movs	r1, #2
  75 0042 0A43     		orrs	r2, r1
  76 0044 1A60     		str	r2, [r3]
  22:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   c=0;
  77              		.loc 1 22 0
  78 0046 124B     		ldr	r3, .L6+4
  79 0048 0022     		movs	r2, #0
  80 004a 1A60     		str	r2, [r3]
  23:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0x20;
  81              		.loc 1 23 0
  82 004c 114B     		ldr	r3, .L6+8
  83 004e 2022     		movs	r2, #32
  84 0050 1A70     		strb	r2, [r3]
  24:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0;
  85              		.loc 1 24 0
  86 0052 104B     		ldr	r3, .L6+8
  87 0054 0022     		movs	r2, #0
  88 0056 1A70     		strb	r2, [r3]
  89              	.L3:
  25:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	}
  26:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  27:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  28:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 			/* Om avbrott från EXTI0:
  29:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		kvittera avbrott från EXTI0 */
  30:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	if(   *((unsigned int *) EXTI_PR) & EXTI0_IRQ_BPOS )
  90              		.loc 1 30 0
  91 0058 0C4B     		ldr	r3, .L6
  92 005a 1B68     		ldr	r3, [r3]
  93 005c 0122     		movs	r2, #1
  94 005e 1340     		ands	r3, r2
  95 0060 10D0     		beq	.L5
  31:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	{
  32:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****        *((unsigned int *) EXTI_PR) |= EXTI0_IRQ_BPOS;
  96              		.loc 1 32 0
  97 0062 0A4B     		ldr	r3, .L6
  98 0064 094A     		ldr	r2, .L6
  99 0066 1268     		ldr	r2, [r2]
 100 0068 0121     		movs	r1, #1
 101 006a 0A43     		orrs	r2, r1
 102 006c 1A60     		str	r2, [r3]
  33:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   c++;
 103              		.loc 1 33 0
 104 006e 084B     		ldr	r3, .L6+4
 105 0070 1B68     		ldr	r3, [r3]
 106 0072 5A1C     		adds	r2, r3, #1
 107 0074 064B     		ldr	r3, .L6+4
 108 0076 1A60     		str	r2, [r3]
  34:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0x10;
 109              		.loc 1 34 0
 110 0078 064B     		ldr	r3, .L6+8
 111 007a 1022     		movs	r2, #16
 112 007c 1A70     		strb	r2, [r3]
  35:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	   *GPIO_E_ODR_LOW = 0;
 113              		.loc 1 35 0
 114 007e 054B     		ldr	r3, .L6+8
 115 0080 0022     		movs	r2, #0
 116 0082 1A70     		strb	r2, [r3]
 117              	.L5:
  36:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	}
  37:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** }
 118              		.loc 1 37 0
 119 0084 C046     		nop
 120 0086 BD46     		mov	sp, r7
 121              		@ sp needed
 122 0088 80BD     		pop	{r7, pc}
 123              	.L7:
 124 008a C046     		.align	2
 125              	.L6:
 126 008c 143C0140 		.word	1073822740
 127 0090 00000000 		.word	c
 128 0094 14100240 		.word	1073877012
 129              		.cfi_endproc
 130              	.LFE0:
 132              		.align	1
 133              		.global	initExternalReq
 134              		.syntax unified
 135              		.code	16
 136              		.thumb_func
 137              		.fpu softvfp
 139              	initExternalReq:
 140              	.LFB1:
  38:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
  39:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
  40:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** void initExternalReq(void)
  41:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** {
 141              		.loc 1 41 0
 142              		.cfi_startproc
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 1, uses_anonymous_args = 0
 145 0098 80B5     		push	{r7, lr}
 146              		.cfi_def_cfa_offset 8
 147              		.cfi_offset 7, -8
 148              		.cfi_offset 14, -4
 149 009a 00AF     		add	r7, sp, #0
 150              		.cfi_def_cfa_register 7
  42:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  43:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  44:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	*GPIO_E_MODER = 0x00005500;
 151              		.loc 1 44 0
 152 009c 2E4B     		ldr	r3, .L9
 153 009e AA22     		movs	r2, #170
 154 00a0 D201     		lsls	r2, r2, #7
 155 00a2 1A60     		str	r2, [r3]
  45:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  46:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  47:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	*((unsigned int *) SYSCFG_EXTICR1) &= 0x0000;
 156              		.loc 1 47 0
 157 00a4 2D4B     		ldr	r3, .L9+4
 158 00a6 0022     		movs	r2, #0
 159 00a8 1A60     		str	r2, [r3]
  48:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
  49:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
  50:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 
  51:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Koppla PE2 till avbrottslina EXTI2 */
  52:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0400;
 160              		.loc 1 52 0
 161 00aa 2C4B     		ldr	r3, .L9+4
 162 00ac 2B4A     		ldr	r2, .L9+4
 163 00ae 1268     		ldr	r2, [r2]
 164 00b0 8021     		movs	r1, #128
 165 00b2 C900     		lsls	r1, r1, #3
 166 00b4 0A43     		orrs	r2, r1
 167 00b6 1A60     		str	r2, [r3]
  53:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera EXTI2 för att generera avbrott */
  54:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) EXTI_IMR) |= EXTI2_IRQ_BPOS;
 168              		.loc 1 54 0
 169 00b8 294B     		ldr	r3, .L9+8
 170 00ba 294A     		ldr	r2, .L9+8
 171 00bc 1268     		ldr	r2, [r2]
 172 00be 0421     		movs	r1, #4
 173 00c0 0A43     		orrs	r2, r1
 174 00c2 1A60     		str	r2, [r3]
  55:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera för avbrott på negativ flank */
  56:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	 *((unsigned int *) EXTI_RTSR) |= EXTI2_IRQ_BPOS;		
 175              		.loc 1 56 0
 176 00c4 274B     		ldr	r3, .L9+12
 177 00c6 274A     		ldr	r2, .L9+12
 178 00c8 1268     		ldr	r2, [r2]
 179 00ca 0421     		movs	r1, #4
 180 00cc 0A43     		orrs	r2, r1
 181 00ce 1A60     		str	r2, [r3]
  57:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Sätt upp avbrottsvektor */
  58:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((void (**)(void) ) EXTI2_IRQVEC ) = irq_handler;     
 182              		.loc 1 58 0
 183 00d0 254B     		ldr	r3, .L9+16
 184 00d2 264A     		ldr	r2, .L9+20
 185 00d4 1A60     		str	r2, [r3]
  59:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****    	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI2 kopplats till */
  60:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****     	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI2_IRQ_BPOS; 
 186              		.loc 1 60 0
 187 00d6 264B     		ldr	r3, .L9+24
 188 00d8 254A     		ldr	r2, .L9+24
 189 00da 1268     		ldr	r2, [r2]
 190 00dc 8021     		movs	r1, #128
 191 00de 4900     		lsls	r1, r1, #1
 192 00e0 0A43     		orrs	r2, r1
 193 00e2 1A60     		str	r2, [r3]
  61:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  62:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  63:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
  64:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  65:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Koppla PE1 till avbrottslina EXTI1 */
  66:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0040;
 194              		.loc 1 66 0
 195 00e4 1D4B     		ldr	r3, .L9+4
 196 00e6 1D4A     		ldr	r2, .L9+4
 197 00e8 1268     		ldr	r2, [r2]
 198 00ea 4021     		movs	r1, #64
 199 00ec 0A43     		orrs	r2, r1
 200 00ee 1A60     		str	r2, [r3]
  67:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  68:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera EXTI1 för att generera avbrott */
  69:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) EXTI_IMR) |= EXTI1_IRQ_BPOS;
 201              		.loc 1 69 0
 202 00f0 1B4B     		ldr	r3, .L9+8
 203 00f2 1B4A     		ldr	r2, .L9+8
 204 00f4 1268     		ldr	r2, [r2]
 205 00f6 0221     		movs	r1, #2
 206 00f8 0A43     		orrs	r2, r1
 207 00fa 1A60     		str	r2, [r3]
  70:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  71:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera för avbrott på negativ flank */
  72:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	 *((unsigned int *) EXTI_RTSR) |= EXTI1_IRQ_BPOS;		
 208              		.loc 1 72 0
 209 00fc 194B     		ldr	r3, .L9+12
 210 00fe 194A     		ldr	r2, .L9+12
 211 0100 1268     		ldr	r2, [r2]
 212 0102 0221     		movs	r1, #2
 213 0104 0A43     		orrs	r2, r1
 214 0106 1A60     		str	r2, [r3]
  73:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  74:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  75:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Sätt upp avbrottsvektor */
  76:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((void (**)(void) ) EXTI1_IRQVEC ) = irq_handler;     
 215              		.loc 1 76 0
 216 0108 1A4B     		ldr	r3, .L9+28
 217 010a 184A     		ldr	r2, .L9+20
 218 010c 1A60     		str	r2, [r3]
  77:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  78:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  79:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****    	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI1 kopplats till */
  80:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****     	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI1_IRQ_BPOS; 	
 219              		.loc 1 80 0
 220 010e 184B     		ldr	r3, .L9+24
 221 0110 174A     		ldr	r2, .L9+24
 222 0112 1268     		ldr	r2, [r2]
 223 0114 8021     		movs	r1, #128
 224 0116 0A43     		orrs	r2, r1
 225 0118 1A60     		str	r2, [r3]
  81:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  82:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  83:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 		
  84:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Koppla PE0 till avbrottslina EXTI0 */
  85:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) SYSCFG_EXTICR1) |= 0x0004;
 226              		.loc 1 85 0
 227 011a 104B     		ldr	r3, .L9+4
 228 011c 0F4A     		ldr	r2, .L9+4
 229 011e 1268     		ldr	r2, [r2]
 230 0120 0421     		movs	r1, #4
 231 0122 0A43     		orrs	r2, r1
 232 0124 1A60     		str	r2, [r3]
  86:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  87:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera EXTI0 för att generera avbrott */
  88:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((unsigned int *) EXTI_IMR) |= EXTI0_IRQ_BPOS;
 233              		.loc 1 88 0
 234 0126 0E4B     		ldr	r3, .L9+8
 235 0128 0D4A     		ldr	r2, .L9+8
 236 012a 1268     		ldr	r2, [r2]
 237 012c 0121     		movs	r1, #1
 238 012e 0A43     		orrs	r2, r1
 239 0130 1A60     		str	r2, [r3]
  89:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  90:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Konfigurera för avbrott på negativ flank */
  91:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****  	 *((unsigned int *) EXTI_RTSR) |= EXTI0_IRQ_BPOS;		
 240              		.loc 1 91 0
 241 0132 0C4B     		ldr	r3, .L9+12
 242 0134 0B4A     		ldr	r2, .L9+12
 243 0136 1268     		ldr	r2, [r2]
 244 0138 0121     		movs	r1, #1
 245 013a 0A43     		orrs	r2, r1
 246 013c 1A60     		str	r2, [r3]
  92:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  93:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  94:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	/* Sätt upp avbrottsvektor */
  95:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****   	 *((void (**)(void) ) EXTI0_IRQVEC ) = irq_handler;     
 247              		.loc 1 95 0
 248 013e 0E4B     		ldr	r3, .L9+32
 249 0140 0A4A     		ldr	r2, .L9+20
 250 0142 1A60     		str	r2, [r3]
  96:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  97:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	 
  98:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****    	/* Konfigurera den bit i NVIC som kontrollerar den avbrottslina som EXTI0 kopplats till */
  99:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c ****     	*((unsigned int *) NVIC_ISER0) |= NVIC_EXTI0_IRQ_BPOS; 	
 251              		.loc 1 99 0
 252 0144 0A4B     		ldr	r3, .L9+24
 253 0146 0A4A     		ldr	r2, .L9+24
 254 0148 1268     		ldr	r2, [r2]
 255 014a 4021     		movs	r1, #64
 256 014c 0A43     		orrs	r2, r1
 257 014e 1A60     		str	r2, [r3]
 100:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** 	
 101:C:/Users/shriaf/Documents/Labb2/labb44\external_req.c **** }...
 258              		.loc 1 101 0
 259 0150 C046     		nop
 260 0152 BD46     		mov	sp, r7
 261              		@ sp needed
 262 0154 80BD     		pop	{r7, pc}
 263              	.L10:
 264 0156 C046     		.align	2
 265              	.L9:
 266 0158 00100240 		.word	1073876992
 267 015c 08380140 		.word	1073821704
 268 0160 003C0140 		.word	1073822720
 269 0164 083C0140 		.word	1073822728
 270 0168 60C00120 		.word	536985696
 271 016c 00000000 		.word	irq_handler
 272 0170 00E100E0 		.word	-536813312
 273 0174 5CC00120 		.word	536985692
 274 0178 58C00120 		.word	536985688
 275              		.cfi_endproc
 276              	.LFE1:
 278              	.Letext0:
 279              		.file 2 "C:/Users/shriaf/Documents/Labb2/labb44/external_req.h"
