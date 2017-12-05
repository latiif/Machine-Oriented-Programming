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
  25              		.file 1 "C:/Users/shriaf/Documents/Labb2/Upp22/startup.c"
   1:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** /*
   2:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  * 	startup.c
   3:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  *
   4:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  */
   5:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
   6:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
   7:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
   8:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define	STK_CTRL	((volatile unsigned int *) (0xE000E010))
   9:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  10:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	STK_LOAD	((volatile unsigned int *) (0xE000E014))
  11:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  12:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define	STK_VAL		((volatile unsigned int *) (0xE000E018))
  13:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  14:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  15:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  16:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****   #define	GPIO_D		0x40021000
  17:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****   
  18:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	GPIO_MODER	((volatile unsigned int *)	(GPIO_D))
  19:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	GPIO_OTYPER	((volatile unsigned short *)	(GPIO_D+0x4))
  20:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	GPIO_PUPDR	((volatile unsigned int *)	(GPIO_D+0xC))
  21:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  22:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** #define 	GPIO_IDR_LOW	((volatile unsigned char *)	(GPIO_D+0x10))
  23:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** #define 	GPIO_IDR_HIGH	((volatile unsigned char *)	(GPIO_D+0x11))
  24:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  25:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	GPIO_ODR_LOW	((volatile unsigned char *)	(GPIO_D+0x14))
  26:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  #define 	GPIO_ODR_HIGH	((volatile unsigned char *)	(GPIO_D+0x15))
  27:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  28:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  29:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  30:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c ****  
  31:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  32:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  33:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void startup ( void )
  34:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
  26              		.loc 1 34 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  35:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** __asm volatile(
  31              		.loc 1 35 0
  32              		.syntax divided
  33              	@ 35 "C:/Users/shriaf/Documents/Labb2/Upp22/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  36:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  37:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	" MOV SP,R0\n"
  38:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	" BL main\n"				/* call main */
  39:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	"_exit: B .\n"				/* never return */
  40:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	) ;
  41:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }
  40              		.loc 1 41 0
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
  42:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  43:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  44:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void appInit(void);
  45:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delay250ns(void);
  46:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delayMicro(unsigned int us);
  47:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delayMilli(unsigned int ms);
  48:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  49:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void main(void)
  50:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
  57              		.loc 1 50 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  51:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	appInit();
  67              		.loc 1 51 0
  68 0004 FFF7FEFF 		bl	appInit
  69              	.L3:
  52:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	while (1)
  53:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{
  54:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		*GPIO_ODR_LOW = 0xFF;
  70              		.loc 1 54 0 discriminator 1
  71 0008 084B     		ldr	r3, .L4
  72 000a FF22     		movs	r2, #255
  73 000c 1A70     		strb	r2, [r3]
  55:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delayMilli(500);
  74              		.loc 1 55 0 discriminator 1
  75 000e FA23     		movs	r3, #250
  76 0010 5B00     		lsls	r3, r3, #1
  77 0012 1800     		movs	r0, r3
  78 0014 FFF7FEFF 		bl	delayMilli
  56:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		*GPIO_ODR_LOW = 0x0;
  79              		.loc 1 56 0 discriminator 1
  80 0018 044B     		ldr	r3, .L4
  81 001a 0022     		movs	r2, #0
  82 001c 1A70     		strb	r2, [r3]
  57:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delayMilli(500);
  83              		.loc 1 57 0 discriminator 1
  84 001e FA23     		movs	r3, #250
  85 0020 5B00     		lsls	r3, r3, #1
  86 0022 1800     		movs	r0, r3
  87 0024 FFF7FEFF 		bl	delayMilli
  54:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delayMilli(500);
  88              		.loc 1 54 0 discriminator 1
  89 0028 EEE7     		b	.L3
  90              	.L5:
  91 002a C046     		.align	2
  92              	.L4:
  93 002c 14100240 		.word	1073877012
  94              		.cfi_endproc
  95              	.LFE1:
  97              		.align	1
  98              		.global	delayMilli
  99              		.syntax unified
 100              		.code	16
 101              		.thumb_func
 102              		.fpu softvfp
 104              	delayMilli:
 105              	.LFB2:
  58:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	}
  59:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }
  60:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  61:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  62:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  63:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delayMilli(unsigned int ms)
  64:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
 106              		.loc 1 64 0
 107              		.cfi_startproc
 108              		@ args = 0, pretend = 0, frame = 16
 109              		@ frame_needed = 1, uses_anonymous_args = 0
 110 0030 80B5     		push	{r7, lr}
 111              		.cfi_def_cfa_offset 8
 112              		.cfi_offset 7, -8
 113              		.cfi_offset 14, -4
 114 0032 84B0     		sub	sp, sp, #16
 115              		.cfi_def_cfa_offset 24
 116 0034 00AF     		add	r7, sp, #0
 117              		.cfi_def_cfa_register 7
 118 0036 7860     		str	r0, [r7, #4]
  65:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	#ifdef SIMULATOR
  66:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		ms = ms / 100;
  67:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		ms ++;
  68:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	#endif
  69:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
  70:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	int i ;
  71:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	while (ms--)
 119              		.loc 1 71 0
 120 0038 11E0     		b	.L7
 121              	.L10:
  72:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{
  73:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		for (i=0;i<1000;i++)
 122              		.loc 1 73 0
 123 003a 0023     		movs	r3, #0
 124 003c FB60     		str	r3, [r7, #12]
 125 003e 0AE0     		b	.L8
 126              	.L9:
  74:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		{
  75:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 			delay250ns();
 127              		.loc 1 75 0 discriminator 3
 128 0040 FFF7FEFF 		bl	delay250ns
  76:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 			delay250ns();
 129              		.loc 1 76 0 discriminator 3
 130 0044 FFF7FEFF 		bl	delay250ns
  77:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 			delay250ns();
 131              		.loc 1 77 0 discriminator 3
 132 0048 FFF7FEFF 		bl	delay250ns
  78:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 			delay250ns();
 133              		.loc 1 78 0 discriminator 3
 134 004c FFF7FEFF 		bl	delay250ns
  73:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		{
 135              		.loc 1 73 0 discriminator 3
 136 0050 FB68     		ldr	r3, [r7, #12]
 137 0052 0133     		adds	r3, r3, #1
 138 0054 FB60     		str	r3, [r7, #12]
 139              	.L8:
  73:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		{
 140              		.loc 1 73 0 is_stmt 0 discriminator 1
 141 0056 FB68     		ldr	r3, [r7, #12]
 142 0058 054A     		ldr	r2, .L11
 143 005a 9342     		cmp	r3, r2
 144 005c F0DD     		ble	.L9
 145              	.L7:
  71:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{
 146              		.loc 1 71 0 is_stmt 1
 147 005e 7B68     		ldr	r3, [r7, #4]
 148 0060 5A1E     		subs	r2, r3, #1
 149 0062 7A60     		str	r2, [r7, #4]
 150 0064 002B     		cmp	r3, #0
 151 0066 E8D1     		bne	.L10
  79:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		}
  80:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	}
  81:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }
 152              		.loc 1 81 0
 153 0068 C046     		nop
 154 006a BD46     		mov	sp, r7
 155 006c 04B0     		add	sp, sp, #16
 156              		@ sp needed
 157 006e 80BD     		pop	{r7, pc}
 158              	.L12:
 159              		.align	2
 160              	.L11:
 161 0070 E7030000 		.word	999
 162              		.cfi_endproc
 163              	.LFE2:
 165              		.align	1
 166              		.global	appInit
 167              		.syntax unified
 168              		.code	16
 169              		.thumb_func
 170              		.fpu softvfp
 172              	appInit:
 173              	.LFB3:
  82:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  83:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void appInit(void)
  84:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
 174              		.loc 1 84 0
 175              		.cfi_startproc
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 1, uses_anonymous_args = 0
 178 0074 80B5     		push	{r7, lr}
 179              		.cfi_def_cfa_offset 8
 180              		.cfi_offset 7, -8
 181              		.cfi_offset 14, -4
 182 0076 00AF     		add	r7, sp, #0
 183              		.cfi_def_cfa_register 7
  85:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
  86:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	#ifdef USBDM
  87:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		*((unsigned long *) 0x40023830) = 0x18;
  88:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		___asm volatile ("LDR R0,=0x8000209\n BLX R0 \n");
  89:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	#endif
  90:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
  91:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*GPIO_MODER = 0x00005555;
 184              		.loc 1 91 0
 185 0078 024B     		ldr	r3, .L14
 186 007a 034A     		ldr	r2, .L14+4
 187 007c 1A60     		str	r2, [r3]
  92:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
  93:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }
 188              		.loc 1 93 0
 189 007e C046     		nop
 190 0080 BD46     		mov	sp, r7
 191              		@ sp needed
 192 0082 80BD     		pop	{r7, pc}
 193              	.L15:
 194              		.align	2
 195              	.L14:
 196 0084 00100240 		.word	1073876992
 197 0088 55550000 		.word	21845
 198              		.cfi_endproc
 199              	.LFE3:
 201              		.align	1
 202              		.global	delay250ns
 203              		.syntax unified
 204              		.code	16
 205              		.thumb_func
 206              		.fpu softvfp
 208              	delay250ns:
 209              	.LFB4:
  94:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
  95:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delay250ns(void)
  96:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
 210              		.loc 1 96 0
 211              		.cfi_startproc
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 1, uses_anonymous_args = 0
 214 008c 80B5     		push	{r7, lr}
 215              		.cfi_def_cfa_offset 8
 216              		.cfi_offset 7, -8
 217              		.cfi_offset 14, -4
 218 008e 00AF     		add	r7, sp, #0
 219              		.cfi_def_cfa_register 7
  97:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*STK_CTRL = 0;
 220              		.loc 1 97 0
 221 0090 0C4B     		ldr	r3, .L18
 222 0092 0022     		movs	r2, #0
 223 0094 1A60     		str	r2, [r3]
  98:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*STK_LOAD = (( 168/4) -1);
 224              		.loc 1 98 0
 225 0096 0C4B     		ldr	r3, .L18+4
 226 0098 2922     		movs	r2, #41
 227 009a 1A60     		str	r2, [r3]
  99:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
 100:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*STK_VAL = 0;
 228              		.loc 1 100 0
 229 009c 0B4B     		ldr	r3, .L18+8
 230 009e 0022     		movs	r2, #0
 231 00a0 1A60     		str	r2, [r3]
 101:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*STK_CTRL=5;
 232              		.loc 1 101 0
 233 00a2 084B     		ldr	r3, .L18
 234 00a4 0522     		movs	r2, #5
 235 00a6 1A60     		str	r2, [r3]
 102:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
 103:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	while ((*STK_CTRL & 0x10000)==0)
 236              		.loc 1 103 0
 237 00a8 C046     		nop
 238              	.L17:
 239              		.loc 1 103 0 is_stmt 0 discriminator 1
 240 00aa 064B     		ldr	r3, .L18
 241 00ac 1A68     		ldr	r2, [r3]
 242 00ae 8023     		movs	r3, #128
 243 00b0 5B02     		lsls	r3, r3, #9
 244 00b2 1340     		ands	r3, r2
 245 00b4 F9D0     		beq	.L17
 104:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{}
 105:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	
 106:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	*STK_CTRL=0;
 246              		.loc 1 106 0 is_stmt 1
 247 00b6 034B     		ldr	r3, .L18
 248 00b8 0022     		movs	r2, #0
 249 00ba 1A60     		str	r2, [r3]
 107:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }
 250              		.loc 1 107 0
 251 00bc C046     		nop
 252 00be BD46     		mov	sp, r7
 253              		@ sp needed
 254 00c0 80BD     		pop	{r7, pc}
 255              	.L19:
 256 00c2 C046     		.align	2
 257              	.L18:
 258 00c4 10E000E0 		.word	-536813552
 259 00c8 14E000E0 		.word	-536813548
 260 00cc 18E000E0 		.word	-536813544
 261              		.cfi_endproc
 262              	.LFE4:
 264              		.align	1
 265              		.global	delayMicro
 266              		.syntax unified
 267              		.code	16
 268              		.thumb_func
 269              		.fpu softvfp
 271              	delayMicro:
 272              	.LFB5:
 108:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
 109:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 
 110:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** void delayMicro(unsigned int us)
 111:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** {
 273              		.loc 1 111 0
 274              		.cfi_startproc
 275              		@ args = 0, pretend = 0, frame = 8
 276              		@ frame_needed = 1, uses_anonymous_args = 0
 277 00d0 80B5     		push	{r7, lr}
 278              		.cfi_def_cfa_offset 8
 279              		.cfi_offset 7, -8
 280              		.cfi_offset 14, -4
 281 00d2 82B0     		sub	sp, sp, #8
 282              		.cfi_def_cfa_offset 16
 283 00d4 00AF     		add	r7, sp, #0
 284              		.cfi_def_cfa_register 7
 285 00d6 7860     		str	r0, [r7, #4]
 112:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	while (us--)
 286              		.loc 1 112 0
 287 00d8 07E0     		b	.L21
 288              	.L22:
 113:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{
 114:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delay250ns();
 289              		.loc 1 114 0
 290 00da FFF7FEFF 		bl	delay250ns
 115:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delay250ns();
 291              		.loc 1 115 0
 292 00de FFF7FEFF 		bl	delay250ns
 116:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delay250ns();
 293              		.loc 1 116 0
 294 00e2 FFF7FEFF 		bl	delay250ns
 117:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 		delay250ns();
 295              		.loc 1 117 0
 296 00e6 FFF7FEFF 		bl	delay250ns
 297              	.L21:
 112:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	{
 298              		.loc 1 112 0
 299 00ea 7B68     		ldr	r3, [r7, #4]
 300 00ec 5A1E     		subs	r2, r3, #1
 301 00ee 7A60     		str	r2, [r7, #4]
 302 00f0 002B     		cmp	r3, #0
 303 00f2 F2D1     		bne	.L22
 118:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** 	}
 119:C:/Users/shriaf/Documents/Labb2/Upp22\startup.c **** }...
 304              		.loc 1 119 0
 305 00f4 C046     		nop
 306 00f6 BD46     		mov	sp, r7
 307 00f8 02B0     		add	sp, sp, #8
 308              		@ sp needed
 309 00fa 80BD     		pop	{r7, pc}
 310              		.cfi_endproc
 311              	.LFE5:
 313              	.Letext0:
