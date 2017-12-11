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
  11              		.file	"ascii.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	ascii_init
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	ascii_init:
  23              	.LFB0:
  24              		.file 1 "C:/Users/latiif/Documents/Labb5/Game2048/ascii.c"
   1:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
   2:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** #include "ascii.h"
   3:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
   4:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
   5:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_init(void){
  25              		.loc 1 5 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   6:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//initiera displayen:
   7:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
  35              		.loc 1 7 0
  36 0004 C046     		nop
  37              	.L2:
  38              		.loc 1 7 0 is_stmt 0 discriminator 1
  39 0006 FFF7FEFF 		bl	ascii_read_status
  40 000a 0300     		movs	r3, r0
  41 000c 1A00     		movs	r2, r3
  42 000e 8023     		movs	r3, #128
  43 0010 1340     		ands	r3, r2
  44 0012 802B     		cmp	r3, #128
  45 0014 F7D0     		beq	.L2
   8:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(20); 
  46              		.loc 1 8 0 is_stmt 1
  47 0016 1420     		movs	r0, #20
  48 0018 FFF7FEFF 		bl	delay_micro
   9:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_cmd(0b0000111000); 
  49              		.loc 1 9 0
  50 001c 3820     		movs	r0, #56
  51 001e FFF7FEFF 		bl	ascii_write_cmd
  10:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(100);
  52              		.loc 1 10 0
  53 0022 6420     		movs	r0, #100
  54 0024 FFF7FEFF 		bl	delay_micro
  11:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		
  12:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//display control:
  13:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
  55              		.loc 1 13 0
  56 0028 C046     		nop
  57              	.L3:
  58              		.loc 1 13 0 is_stmt 0 discriminator 1
  59 002a FFF7FEFF 		bl	ascii_read_status
  60 002e 0300     		movs	r3, r0
  61 0030 1A00     		movs	r2, r3
  62 0032 8023     		movs	r3, #128
  63 0034 1340     		ands	r3, r2
  64 0036 802B     		cmp	r3, #128
  65 0038 F7D0     		beq	.L3
  14:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(20); 
  66              		.loc 1 14 0 is_stmt 1
  67 003a 1420     		movs	r0, #20
  68 003c FFF7FEFF 		bl	delay_micro
  15:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_cmd(0b000001110); 
  69              		.loc 1 15 0
  70 0040 0E20     		movs	r0, #14
  71 0042 FFF7FEFF 		bl	ascii_write_cmd
  16:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(100); 
  72              		.loc 1 16 0
  73 0046 6420     		movs	r0, #100
  74 0048 FFF7FEFF 		bl	delay_micro
  17:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		
  18:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	// entry mode set
  19:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
  75              		.loc 1 19 0
  76 004c C046     		nop
  77              	.L4:
  78              		.loc 1 19 0 is_stmt 0 discriminator 1
  79 004e FFF7FEFF 		bl	ascii_read_status
  80 0052 0300     		movs	r3, r0
  81 0054 1A00     		movs	r2, r3
  82 0056 8023     		movs	r3, #128
  83 0058 1340     		ands	r3, r2
  84 005a 802B     		cmp	r3, #128
  85 005c F7D0     		beq	.L4
  20:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(20); 
  86              		.loc 1 20 0 is_stmt 1
  87 005e 1420     		movs	r0, #20
  88 0060 FFF7FEFF 		bl	delay_micro
  21:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_cmd(0b000001110); 
  89              		.loc 1 21 0
  90 0064 0E20     		movs	r0, #14
  91 0066 FFF7FEFF 		bl	ascii_write_cmd
  22:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(100); 
  92              		.loc 1 22 0
  93 006a 6420     		movs	r0, #100
  94 006c FFF7FEFF 		bl	delay_micro
  23:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		
  24:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		*portModer = 0x555555555;
  95              		.loc 1 24 0
  96 0070 024B     		ldr	r3, .L5
  97 0072 034A     		ldr	r2, .L5+4
  98 0074 1A60     		str	r2, [r3]
  25:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
  26:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
  99              		.loc 1 26 0
 100 0076 C046     		nop
 101 0078 BD46     		mov	sp, r7
 102              		@ sp needed
 103 007a 80BD     		pop	{r7, pc}
 104              	.L6:
 105              		.align	2
 106              	.L5:
 107 007c 00100240 		.word	1073876992
 108 0080 55555555 		.word	1431655765
 109              		.cfi_endproc
 110              	.LFE0:
 112              		.align	1
 113              		.global	ascii_ctrl_bit_set
 114              		.syntax unified
 115              		.code	16
 116              		.thumb_func
 117              		.fpu softvfp
 119              	ascii_ctrl_bit_set:
 120              	.LFB1:
  27:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  28:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_ctrl_bit_set(unsigned char x){
 121              		.loc 1 28 0
 122              		.cfi_startproc
 123              		@ args = 0, pretend = 0, frame = 16
 124              		@ frame_needed = 1, uses_anonymous_args = 0
 125 0084 80B5     		push	{r7, lr}
 126              		.cfi_def_cfa_offset 8
 127              		.cfi_offset 7, -8
 128              		.cfi_offset 14, -4
 129 0086 84B0     		sub	sp, sp, #16
 130              		.cfi_def_cfa_offset 24
 131 0088 00AF     		add	r7, sp, #0
 132              		.cfi_def_cfa_register 7
 133 008a 0200     		movs	r2, r0
 134 008c FB1D     		adds	r3, r7, #7
 135 008e 1A70     		strb	r2, [r3]
  29:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** //adressera ASCii-displayen och ettställ de bitar som är 1 i x
  30:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char c;
  31:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	c = *portOdrLow;
 136              		.loc 1 31 0
 137 0090 0C4A     		ldr	r2, .L8
 138 0092 0F23     		movs	r3, #15
 139 0094 FB18     		adds	r3, r7, r3
 140 0096 1278     		ldrb	r2, [r2]
 141 0098 1A70     		strb	r2, [r3]
  32:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	c |= (B_SELECT | x);
 142              		.loc 1 32 0
 143 009a FA1D     		adds	r2, r7, #7
 144 009c 0F23     		movs	r3, #15
 145 009e FB18     		adds	r3, r7, r3
 146 00a0 1278     		ldrb	r2, [r2]
 147 00a2 1B78     		ldrb	r3, [r3]
 148 00a4 1343     		orrs	r3, r2
 149 00a6 DAB2     		uxtb	r2, r3
 150 00a8 0F23     		movs	r3, #15
 151 00aa FB18     		adds	r3, r7, r3
 152 00ac 0421     		movs	r1, #4
 153 00ae 0A43     		orrs	r2, r1
 154 00b0 1A70     		strb	r2, [r3]
  33:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portOdrLow = c;
 155              		.loc 1 33 0
 156 00b2 044A     		ldr	r2, .L8
 157 00b4 0F23     		movs	r3, #15
 158 00b6 FB18     		adds	r3, r7, r3
 159 00b8 1B78     		ldrb	r3, [r3]
 160 00ba 1370     		strb	r3, [r2]
  34:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 161              		.loc 1 34 0
 162 00bc C046     		nop
 163 00be BD46     		mov	sp, r7
 164 00c0 04B0     		add	sp, sp, #16
 165              		@ sp needed
 166 00c2 80BD     		pop	{r7, pc}
 167              	.L9:
 168              		.align	2
 169              	.L8:
 170 00c4 14100240 		.word	1073877012
 171              		.cfi_endproc
 172              	.LFE1:
 174              		.align	1
 175              		.global	ascii_ctrl_bit_clear
 176              		.syntax unified
 177              		.code	16
 178              		.thumb_func
 179              		.fpu softvfp
 181              	ascii_ctrl_bit_clear:
 182              	.LFB2:
  35:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  36:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_ctrl_bit_clear(unsigned char x){
 183              		.loc 1 36 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 16
 186              		@ frame_needed = 1, uses_anonymous_args = 0
 187 00c8 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 00ca 84B0     		sub	sp, sp, #16
 192              		.cfi_def_cfa_offset 24
 193 00cc 00AF     		add	r7, sp, #0
 194              		.cfi_def_cfa_register 7
 195 00ce 0200     		movs	r2, r0
 196 00d0 FB1D     		adds	r3, r7, #7
 197 00d2 1A70     		strb	r2, [r3]
  37:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** //adressera ASCii-displayen och nollställ de bitar som är 1 i x
  38:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char c;
  39:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	c = *portOdrLow;
 198              		.loc 1 39 0
 199 00d4 0F4A     		ldr	r2, .L11
 200 00d6 0F23     		movs	r3, #15
 201 00d8 FB18     		adds	r3, r7, r3
 202 00da 1278     		ldrb	r2, [r2]
 203 00dc 1A70     		strb	r2, [r3]
  40:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	c = (B_SELECT | c & ~x);
 204              		.loc 1 40 0
 205 00de FB1D     		adds	r3, r7, #7
 206 00e0 1B78     		ldrb	r3, [r3]
 207 00e2 5BB2     		sxtb	r3, r3
 208 00e4 DB43     		mvns	r3, r3
 209 00e6 5BB2     		sxtb	r3, r3
 210 00e8 0F22     		movs	r2, #15
 211 00ea BA18     		adds	r2, r7, r2
 212 00ec 1278     		ldrb	r2, [r2]
 213 00ee 52B2     		sxtb	r2, r2
 214 00f0 1340     		ands	r3, r2
 215 00f2 5BB2     		sxtb	r3, r3
 216 00f4 0422     		movs	r2, #4
 217 00f6 1343     		orrs	r3, r2
 218 00f8 5AB2     		sxtb	r2, r3
 219 00fa 0F23     		movs	r3, #15
 220 00fc FB18     		adds	r3, r7, r3
 221 00fe 1A70     		strb	r2, [r3]
  41:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portOdrLow = c;
 222              		.loc 1 41 0
 223 0100 044A     		ldr	r2, .L11
 224 0102 0F23     		movs	r3, #15
 225 0104 FB18     		adds	r3, r7, r3
 226 0106 1B78     		ldrb	r3, [r3]
 227 0108 1370     		strb	r3, [r2]
  42:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 228              		.loc 1 42 0
 229 010a C046     		nop
 230 010c BD46     		mov	sp, r7
 231 010e 04B0     		add	sp, sp, #16
 232              		@ sp needed
 233 0110 80BD     		pop	{r7, pc}
 234              	.L12:
 235 0112 C046     		.align	2
 236              	.L11:
 237 0114 14100240 		.word	1073877012
 238              		.cfi_endproc
 239              	.LFE2:
 241              		.align	1
 242              		.global	ascii_write_cmd
 243              		.syntax unified
 244              		.code	16
 245              		.thumb_func
 246              		.fpu softvfp
 248              	ascii_write_cmd:
 249              	.LFB3:
  43:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  44:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_cmd(unsigned char command){
 250              		.loc 1 44 0
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 8
 253              		@ frame_needed = 1, uses_anonymous_args = 0
 254 0118 80B5     		push	{r7, lr}
 255              		.cfi_def_cfa_offset 8
 256              		.cfi_offset 7, -8
 257              		.cfi_offset 14, -4
 258 011a 82B0     		sub	sp, sp, #8
 259              		.cfi_def_cfa_offset 16
 260 011c 00AF     		add	r7, sp, #0
 261              		.cfi_def_cfa_register 7
 262 011e 0200     		movs	r2, r0
 263 0120 FB1D     		adds	r3, r7, #7
 264 0122 1A70     		strb	r2, [r3]
  45:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_RS);
 265              		.loc 1 45 0
 266 0124 0120     		movs	r0, #1
 267 0126 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  46:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_RW);
 268              		.loc 1 46 0
 269 012a 0220     		movs	r0, #2
 270 012c FFF7FEFF 		bl	ascii_ctrl_bit_clear
  47:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_write_controller(command);
 271              		.loc 1 47 0
 272 0130 FB1D     		adds	r3, r7, #7
 273 0132 1B78     		ldrb	r3, [r3]
 274 0134 1800     		movs	r0, r3
 275 0136 FFF7FEFF 		bl	ascii_write_controller
  48:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 276              		.loc 1 48 0
 277 013a C046     		nop
 278 013c BD46     		mov	sp, r7
 279 013e 02B0     		add	sp, sp, #8
 280              		@ sp needed
 281 0140 80BD     		pop	{r7, pc}
 282              		.cfi_endproc
 283              	.LFE3:
 285              		.align	1
 286              		.global	ascii_write_data
 287              		.syntax unified
 288              		.code	16
 289              		.thumb_func
 290              		.fpu softvfp
 292              	ascii_write_data:
 293              	.LFB4:
  49:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  50:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_data(unsigned char data){
 294              		.loc 1 50 0
 295              		.cfi_startproc
 296              		@ args = 0, pretend = 0, frame = 8
 297              		@ frame_needed = 1, uses_anonymous_args = 0
 298 0142 80B5     		push	{r7, lr}
 299              		.cfi_def_cfa_offset 8
 300              		.cfi_offset 7, -8
 301              		.cfi_offset 14, -4
 302 0144 82B0     		sub	sp, sp, #8
 303              		.cfi_def_cfa_offset 16
 304 0146 00AF     		add	r7, sp, #0
 305              		.cfi_def_cfa_register 7
 306 0148 0200     		movs	r2, r0
 307 014a FB1D     		adds	r3, r7, #7
 308 014c 1A70     		strb	r2, [r3]
  51:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_RS);
 309              		.loc 1 51 0
 310 014e 0120     		movs	r0, #1
 311 0150 FFF7FEFF 		bl	ascii_ctrl_bit_set
  52:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_RW);
 312              		.loc 1 52 0
 313 0154 0220     		movs	r0, #2
 314 0156 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  53:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_write_controller(data);
 315              		.loc 1 53 0
 316 015a FB1D     		adds	r3, r7, #7
 317 015c 1B78     		ldrb	r3, [r3]
 318 015e 1800     		movs	r0, r3
 319 0160 FFF7FEFF 		bl	ascii_write_controller
  54:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 320              		.loc 1 54 0
 321 0164 C046     		nop
 322 0166 BD46     		mov	sp, r7
 323 0168 02B0     		add	sp, sp, #8
 324              		@ sp needed
 325 016a 80BD     		pop	{r7, pc}
 326              		.cfi_endproc
 327              	.LFE4:
 329              		.align	1
 330              		.global	clear_disp
 331              		.syntax unified
 332              		.code	16
 333              		.thumb_func
 334              		.fpu softvfp
 336              	clear_disp:
 337              	.LFB5:
  55:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  56:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void clear_disp()
  57:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** {
 338              		.loc 1 57 0
 339              		.cfi_startproc
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 1, uses_anonymous_args = 0
 342 016c 80B5     		push	{r7, lr}
 343              		.cfi_def_cfa_offset 8
 344              		.cfi_offset 7, -8
 345              		.cfi_offset 14, -4
 346 016e 00AF     		add	r7, sp, #0
 347              		.cfi_def_cfa_register 7
  58:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	while ((ascii_read_status() & 0x80)==0x80){}
 348              		.loc 1 58 0
 349 0170 C046     		nop
 350              	.L16:
 351              		.loc 1 58 0 is_stmt 0 discriminator 1
 352 0172 FFF7FEFF 		bl	ascii_read_status
 353 0176 0300     		movs	r3, r0
 354 0178 1A00     		movs	r2, r3
 355 017a 8023     		movs	r3, #128
 356 017c 1340     		ands	r3, r2
 357 017e 802B     		cmp	r3, #128
 358 0180 F7D0     		beq	.L16
  59:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
  60:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	delay_micro(80);
 359              		.loc 1 60 0 is_stmt 1
 360 0182 5020     		movs	r0, #80
 361 0184 FFF7FEFF 		bl	delay_micro
  61:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_write_cmd(1);
 362              		.loc 1 61 0
 363 0188 0120     		movs	r0, #1
 364 018a FFF7FEFF 		bl	ascii_write_cmd
  62:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	delay_milli(200);
 365              		.loc 1 62 0
 366 018e C820     		movs	r0, #200
 367 0190 FFF7FEFF 		bl	delay_milli
  63:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 368              		.loc 1 63 0
 369 0194 C046     		nop
 370 0196 BD46     		mov	sp, r7
 371              		@ sp needed
 372 0198 80BD     		pop	{r7, pc}
 373              		.cfi_endproc
 374              	.LFE5:
 376              		.align	1
 377              		.global	ascii_read_status
 378              		.syntax unified
 379              		.code	16
 380              		.thumb_func
 381              		.fpu softvfp
 383              	ascii_read_status:
 384              	.LFB6:
  64:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  65:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** unsigned char ascii_read_status(void){
 385              		.loc 1 65 0
 386              		.cfi_startproc
 387              		@ args = 0, pretend = 0, frame = 8
 388              		@ frame_needed = 1, uses_anonymous_args = 0
 389 019a 90B5     		push	{r4, r7, lr}
 390              		.cfi_def_cfa_offset 12
 391              		.cfi_offset 4, -12
 392              		.cfi_offset 7, -8
 393              		.cfi_offset 14, -4
 394 019c 83B0     		sub	sp, sp, #12
 395              		.cfi_def_cfa_offset 24
 396 019e 00AF     		add	r7, sp, #0
 397              		.cfi_def_cfa_register 7
  66:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//sätt Port E bit15-8 som ingångar
  67:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer &= 0x0000FFFF;
 398              		.loc 1 67 0
 399 01a0 114B     		ldr	r3, .L19
 400 01a2 114A     		ldr	r2, .L19
 401 01a4 1268     		ldr	r2, [r2]
 402 01a6 1204     		lsls	r2, r2, #16
 403 01a8 120C     		lsrs	r2, r2, #16
 404 01aa 1A60     		str	r2, [r3]
  68:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_RS);
 405              		.loc 1 68 0
 406 01ac 0120     		movs	r0, #1
 407 01ae FFF7FEFF 		bl	ascii_ctrl_bit_clear
  69:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_RW);
 408              		.loc 1 69 0
 409 01b2 0220     		movs	r0, #2
 410 01b4 FFF7FEFF 		bl	ascii_ctrl_bit_set
  70:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char rv = ascii_read_controller();
 411              		.loc 1 70 0
 412 01b8 FC1D     		adds	r4, r7, #7
 413 01ba FFF7FEFF 		bl	ascii_read_controller
 414 01be 0300     		movs	r3, r0
 415 01c0 2370     		strb	r3, [r4]
  71:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//sätt Port E bit15-8 som utgångar
  72:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer &= 0x0000FFFF;
 416              		.loc 1 72 0
 417 01c2 094B     		ldr	r3, .L19
 418 01c4 084A     		ldr	r2, .L19
 419 01c6 1268     		ldr	r2, [r2]
 420 01c8 1204     		lsls	r2, r2, #16
 421 01ca 120C     		lsrs	r2, r2, #16
 422 01cc 1A60     		str	r2, [r3]
  73:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer |= 0x55550000;
 423              		.loc 1 73 0
 424 01ce 064B     		ldr	r3, .L19
 425 01d0 054A     		ldr	r2, .L19
 426 01d2 1268     		ldr	r2, [r2]
 427 01d4 0549     		ldr	r1, .L19+4
 428 01d6 0A43     		orrs	r2, r1
 429 01d8 1A60     		str	r2, [r3]
  74:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	return rv;
 430              		.loc 1 74 0
 431 01da FB1D     		adds	r3, r7, #7
 432 01dc 1B78     		ldrb	r3, [r3]
  75:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 433              		.loc 1 75 0
 434 01de 1800     		movs	r0, r3
 435 01e0 BD46     		mov	sp, r7
 436 01e2 03B0     		add	sp, sp, #12
 437              		@ sp needed
 438 01e4 90BD     		pop	{r4, r7, pc}
 439              	.L20:
 440 01e6 C046     		.align	2
 441              	.L19:
 442 01e8 00100240 		.word	1073876992
 443 01ec 00005555 		.word	1431633920
 444              		.cfi_endproc
 445              	.LFE6:
 447              		.align	1
 448              		.global	ascii_read_data
 449              		.syntax unified
 450              		.code	16
 451              		.thumb_func
 452              		.fpu softvfp
 454              	ascii_read_data:
 455              	.LFB7:
  76:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  77:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** unsigned char ascii_read_data(void){
 456              		.loc 1 77 0
 457              		.cfi_startproc
 458              		@ args = 0, pretend = 0, frame = 8
 459              		@ frame_needed = 1, uses_anonymous_args = 0
 460 01f0 90B5     		push	{r4, r7, lr}
 461              		.cfi_def_cfa_offset 12
 462              		.cfi_offset 4, -12
 463              		.cfi_offset 7, -8
 464              		.cfi_offset 14, -4
 465 01f2 83B0     		sub	sp, sp, #12
 466              		.cfi_def_cfa_offset 24
 467 01f4 00AF     		add	r7, sp, #0
 468              		.cfi_def_cfa_register 7
  78:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//sätt Port E bit15-8 som ingångar
  79:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer &= 0x0000FFFF;
 469              		.loc 1 79 0
 470 01f6 114B     		ldr	r3, .L23
 471 01f8 104A     		ldr	r2, .L23
 472 01fa 1268     		ldr	r2, [r2]
 473 01fc 1204     		lsls	r2, r2, #16
 474 01fe 120C     		lsrs	r2, r2, #16
 475 0200 1A60     		str	r2, [r3]
  80:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_RS);
 476              		.loc 1 80 0
 477 0202 0120     		movs	r0, #1
 478 0204 FFF7FEFF 		bl	ascii_ctrl_bit_set
  81:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_RW);
 479              		.loc 1 81 0
 480 0208 0220     		movs	r0, #2
 481 020a FFF7FEFF 		bl	ascii_ctrl_bit_set
  82:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char rv = ascii_read_controller();
 482              		.loc 1 82 0
 483 020e FC1D     		adds	r4, r7, #7
 484 0210 FFF7FEFF 		bl	ascii_read_controller
 485 0214 0300     		movs	r3, r0
 486 0216 2370     		strb	r3, [r4]
  83:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	//sätt Port E bit15-8 som utgångar
  84:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer &= 0x0000FFFF;
 487              		.loc 1 84 0
 488 0218 084B     		ldr	r3, .L23
 489 021a 084A     		ldr	r2, .L23
 490 021c 1268     		ldr	r2, [r2]
 491 021e 1204     		lsls	r2, r2, #16
 492 0220 120C     		lsrs	r2, r2, #16
 493 0222 1A60     		str	r2, [r3]
  85:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portModer |= 0x55550000;
 494              		.loc 1 85 0
 495 0224 054B     		ldr	r3, .L23
 496 0226 054A     		ldr	r2, .L23
 497 0228 1268     		ldr	r2, [r2]
 498 022a 0549     		ldr	r1, .L23+4
 499 022c 0A43     		orrs	r2, r1
 500 022e 1A60     		str	r2, [r3]
  86:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	return rv;
 501              		.loc 1 86 0
 502 0230 FB1D     		adds	r3, r7, #7
 503 0232 1B78     		ldrb	r3, [r3]
  87:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 504              		.loc 1 87 0
 505 0234 1800     		movs	r0, r3
 506 0236 BD46     		mov	sp, r7
 507 0238 03B0     		add	sp, sp, #12
 508              		@ sp needed
 509 023a 90BD     		pop	{r4, r7, pc}
 510              	.L24:
 511              		.align	2
 512              	.L23:
 513 023c 00100240 		.word	1073876992
 514 0240 00005555 		.word	1431633920
 515              		.cfi_endproc
 516              	.LFE7:
 518              		.align	1
 519              		.global	ascii_write_controller
 520              		.syntax unified
 521              		.code	16
 522              		.thumb_func
 523              		.fpu softvfp
 525              	ascii_write_controller:
 526              	.LFB8:
  88:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  89:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_controller(unsigned char c){
 527              		.loc 1 89 0
 528              		.cfi_startproc
 529              		@ args = 0, pretend = 0, frame = 8
 530              		@ frame_needed = 1, uses_anonymous_args = 0
 531 0244 80B5     		push	{r7, lr}
 532              		.cfi_def_cfa_offset 8
 533              		.cfi_offset 7, -8
 534              		.cfi_offset 14, -4
 535 0246 82B0     		sub	sp, sp, #8
 536              		.cfi_def_cfa_offset 16
 537 0248 00AF     		add	r7, sp, #0
 538              		.cfi_def_cfa_register 7
 539 024a 0200     		movs	r2, r0
 540 024c FB1D     		adds	r3, r7, #7
 541 024e 1A70     		strb	r2, [r3]
  90:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_E);
 542              		.loc 1 90 0
 543 0250 4020     		movs	r0, #64
 544 0252 FFF7FEFF 		bl	ascii_ctrl_bit_set
  91:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	*portOdrHigh = c;
 545              		.loc 1 91 0
 546 0256 064A     		ldr	r2, .L26
 547 0258 FB1D     		adds	r3, r7, #7
 548 025a 1B78     		ldrb	r3, [r3]
 549 025c 1370     		strb	r3, [r2]
  92:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	delay_250ns();
 550              		.loc 1 92 0
 551 025e FFF7FEFF 		bl	delay_250ns
  93:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_E);
 552              		.loc 1 93 0
 553 0262 4020     		movs	r0, #64
 554 0264 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  94:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 555              		.loc 1 94 0
 556 0268 C046     		nop
 557 026a BD46     		mov	sp, r7
 558 026c 02B0     		add	sp, sp, #8
 559              		@ sp needed
 560 026e 80BD     		pop	{r7, pc}
 561              	.L27:
 562              		.align	2
 563              	.L26:
 564 0270 15100240 		.word	1073877013
 565              		.cfi_endproc
 566              	.LFE8:
 568              		.align	1
 569              		.global	ascii_read_controller
 570              		.syntax unified
 571              		.code	16
 572              		.thumb_func
 573              		.fpu softvfp
 575              	ascii_read_controller:
 576              	.LFB9:
  95:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
  96:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** unsigned char ascii_read_controller(void){
 577              		.loc 1 96 0
 578              		.cfi_startproc
 579              		@ args = 0, pretend = 0, frame = 8
 580              		@ frame_needed = 1, uses_anonymous_args = 0
 581 0274 80B5     		push	{r7, lr}
 582              		.cfi_def_cfa_offset 8
 583              		.cfi_offset 7, -8
 584              		.cfi_offset 14, -4
 585 0276 82B0     		sub	sp, sp, #8
 586              		.cfi_def_cfa_offset 16
 587 0278 00AF     		add	r7, sp, #0
 588              		.cfi_def_cfa_register 7
  97:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char c;
  98:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_set(B_E);
 589              		.loc 1 98 0
 590 027a 4020     		movs	r0, #64
 591 027c FFF7FEFF 		bl	ascii_ctrl_bit_set
  99:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	delay_250ns();
 592              		.loc 1 99 0
 593 0280 FFF7FEFF 		bl	delay_250ns
 100:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	delay_250ns();
 594              		.loc 1 100 0
 595 0284 FFF7FEFF 		bl	delay_250ns
 101:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	c = *portIdrHigh;
 596              		.loc 1 101 0
 597 0288 064A     		ldr	r2, .L30
 598 028a FB1D     		adds	r3, r7, #7
 599 028c 1278     		ldrb	r2, [r2]
 600 028e 1A70     		strb	r2, [r3]
 102:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_ctrl_bit_clear(B_E);
 601              		.loc 1 102 0
 602 0290 4020     		movs	r0, #64
 603 0292 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 103:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	return c;
 604              		.loc 1 103 0
 605 0296 FB1D     		adds	r3, r7, #7
 606 0298 1B78     		ldrb	r3, [r3]
 104:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 607              		.loc 1 104 0
 608 029a 1800     		movs	r0, r3
 609 029c BD46     		mov	sp, r7
 610 029e 02B0     		add	sp, sp, #8
 611              		@ sp needed
 612 02a0 80BD     		pop	{r7, pc}
 613              	.L31:
 614 02a2 C046     		.align	2
 615              	.L30:
 616 02a4 11100240 		.word	1073877009
 617              		.cfi_endproc
 618              	.LFE9:
 620              		.align	1
 621              		.global	ascii_write_char
 622              		.syntax unified
 623              		.code	16
 624              		.thumb_func
 625              		.fpu softvfp
 627              	ascii_write_char:
 628              	.LFB10:
 105:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 106:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_char(unsigned char c){
 629              		.loc 1 106 0
 630              		.cfi_startproc
 631              		@ args = 0, pretend = 0, frame = 8
 632              		@ frame_needed = 1, uses_anonymous_args = 0
 633 02a8 80B5     		push	{r7, lr}
 634              		.cfi_def_cfa_offset 8
 635              		.cfi_offset 7, -8
 636              		.cfi_offset 14, -4
 637 02aa 82B0     		sub	sp, sp, #8
 638              		.cfi_def_cfa_offset 16
 639 02ac 00AF     		add	r7, sp, #0
 640              		.cfi_def_cfa_register 7
 641 02ae 0200     		movs	r2, r0
 642 02b0 FB1D     		adds	r3, r7, #7
 643 02b2 1A70     		strb	r2, [r3]
 107:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		while((ascii_read_status() & 0x80) == 0x80){} 
 644              		.loc 1 107 0
 645 02b4 C046     		nop
 646              	.L33:
 647              		.loc 1 107 0 is_stmt 0 discriminator 1
 648 02b6 FFF7FEFF 		bl	ascii_read_status
 649 02ba 0300     		movs	r3, r0
 650 02bc 1A00     		movs	r2, r3
 651 02be 8023     		movs	r3, #128
 652 02c0 1340     		ands	r3, r2
 653 02c2 802B     		cmp	r3, #128
 654 02c4 F7D0     		beq	.L33
 108:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(8); 
 655              		.loc 1 108 0 is_stmt 1
 656 02c6 0820     		movs	r0, #8
 657 02c8 FFF7FEFF 		bl	delay_micro
 109:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_data(c);
 658              		.loc 1 109 0
 659 02cc FB1D     		adds	r3, r7, #7
 660 02ce 1B78     		ldrb	r3, [r3]
 661 02d0 1800     		movs	r0, r3
 662 02d2 FFF7FEFF 		bl	ascii_write_data
 110:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		delay_micro(50); 
 663              		.loc 1 110 0
 664 02d6 3220     		movs	r0, #50
 665 02d8 FFF7FEFF 		bl	delay_micro
 111:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 666              		.loc 1 111 0
 667 02dc C046     		nop
 668 02de BD46     		mov	sp, r7
 669 02e0 02B0     		add	sp, sp, #8
 670              		@ sp needed
 671 02e2 80BD     		pop	{r7, pc}
 672              		.cfi_endproc
 673              	.LFE10:
 675              		.align	1
 676              		.global	ascii_write_string
 677              		.syntax unified
 678              		.code	16
 679              		.thumb_func
 680              		.fpu softvfp
 682              	ascii_write_string:
 683              	.LFB11:
 112:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 113:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 114:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_string(char* s)
 115:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** {
 684              		.loc 1 115 0
 685              		.cfi_startproc
 686              		@ args = 0, pretend = 0, frame = 8
 687              		@ frame_needed = 1, uses_anonymous_args = 0
 688 02e4 80B5     		push	{r7, lr}
 689              		.cfi_def_cfa_offset 8
 690              		.cfi_offset 7, -8
 691              		.cfi_offset 14, -4
 692 02e6 82B0     		sub	sp, sp, #8
 693              		.cfi_def_cfa_offset 16
 694 02e8 00AF     		add	r7, sp, #0
 695              		.cfi_def_cfa_register 7
 696 02ea 7860     		str	r0, [r7, #4]
 116:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	clear_disp();
 697              		.loc 1 116 0
 698 02ec FFF7FEFF 		bl	clear_disp
 117:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_goToXY(1,1);
 699              		.loc 1 117 0
 700 02f0 0121     		movs	r1, #1
 701 02f2 0120     		movs	r0, #1
 702 02f4 FFF7FEFF 		bl	ascii_goToXY
 118:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	while(*s){
 703              		.loc 1 118 0
 704 02f8 06E0     		b	.L35
 705              	.L36:
 119:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 				ascii_write_char(*s++);
 706              		.loc 1 119 0
 707 02fa 7B68     		ldr	r3, [r7, #4]
 708 02fc 5A1C     		adds	r2, r3, #1
 709 02fe 7A60     		str	r2, [r7, #4]
 710 0300 1B78     		ldrb	r3, [r3]
 711 0302 1800     		movs	r0, r3
 712 0304 FFF7FEFF 		bl	ascii_write_char
 713              	.L35:
 118:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	while(*s){
 714              		.loc 1 118 0
 715 0308 7B68     		ldr	r3, [r7, #4]
 716 030a 1B78     		ldrb	r3, [r3]
 717 030c 002B     		cmp	r3, #0
 718 030e F4D1     		bne	.L36
 120:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	}
 121:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 719              		.loc 1 121 0
 720 0310 C046     		nop
 721 0312 BD46     		mov	sp, r7
 722 0314 02B0     		add	sp, sp, #8
 723              		@ sp needed
 724 0316 80BD     		pop	{r7, pc}
 725              		.cfi_endproc
 726              	.LFE11:
 728              		.align	1
 729              		.global	ascii_goToXY
 730              		.syntax unified
 731              		.code	16
 732              		.thumb_func
 733              		.fpu softvfp
 735              	ascii_goToXY:
 736              	.LFB12:
 122:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 123:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_goToXY(unsigned char row, unsigned char column){
 737              		.loc 1 123 0
 738              		.cfi_startproc
 739              		@ args = 0, pretend = 0, frame = 16
 740              		@ frame_needed = 1, uses_anonymous_args = 0
 741 0318 80B5     		push	{r7, lr}
 742              		.cfi_def_cfa_offset 8
 743              		.cfi_offset 7, -8
 744              		.cfi_offset 14, -4
 745 031a 84B0     		sub	sp, sp, #16
 746              		.cfi_def_cfa_offset 24
 747 031c 00AF     		add	r7, sp, #0
 748              		.cfi_def_cfa_register 7
 749 031e 0200     		movs	r2, r0
 750 0320 FB1D     		adds	r3, r7, #7
 751 0322 1A70     		strb	r2, [r3]
 752 0324 BB1D     		adds	r3, r7, #6
 753 0326 0A1C     		adds	r2, r1, #0
 754 0328 1A70     		strb	r2, [r3]
 124:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	unsigned char address = row-1;
 755              		.loc 1 124 0
 756 032a 0F23     		movs	r3, #15
 757 032c FB18     		adds	r3, r7, r3
 758 032e FA1D     		adds	r2, r7, #7
 759 0330 1278     		ldrb	r2, [r2]
 760 0332 013A     		subs	r2, r2, #1
 761 0334 1A70     		strb	r2, [r3]
 125:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	if(column == 2){
 762              		.loc 1 125 0
 763 0336 BB1D     		adds	r3, r7, #6
 764 0338 1B78     		ldrb	r3, [r3]
 765 033a 022B     		cmp	r3, #2
 766 033c 06D1     		bne	.L38
 126:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		address += 0x40;
 767              		.loc 1 126 0
 768 033e 0F23     		movs	r3, #15
 769 0340 FB18     		adds	r3, r7, r3
 770 0342 0F22     		movs	r2, #15
 771 0344 BA18     		adds	r2, r7, r2
 772 0346 1278     		ldrb	r2, [r2]
 773 0348 4032     		adds	r2, r2, #64
 774 034a 1A70     		strb	r2, [r3]
 775              	.L38:
 127:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	}
 128:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_write_cmd(0x80 | address);
 776              		.loc 1 128 0
 777 034c 0F23     		movs	r3, #15
 778 034e FB18     		adds	r3, r7, r3
 779 0350 1B78     		ldrb	r3, [r3]
 780 0352 8022     		movs	r2, #128
 781 0354 5242     		rsbs	r2, r2, #0
 782 0356 1343     		orrs	r3, r2
 783 0358 DBB2     		uxtb	r3, r3
 784 035a 1800     		movs	r0, r3
 785 035c FFF7FEFF 		bl	ascii_write_cmd
 129:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }
 786              		.loc 1 129 0
 787 0360 C046     		nop
 788 0362 BD46     		mov	sp, r7
 789 0364 04B0     		add	sp, sp, #16
 790              		@ sp needed
 791 0366 80BD     		pop	{r7, pc}
 792              		.cfi_endproc
 793              	.LFE12:
 795              		.global	__aeabi_idiv
 796              		.global	__aeabi_idivmod
 797              		.align	1
 798              		.global	ascii_write_long
 799              		.syntax unified
 800              		.code	16
 801              		.thumb_func
 802              		.fpu softvfp
 804              	ascii_write_long:
 805              	.LFB13:
 130:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 131:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 
 132:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** void ascii_write_long(long val)
 133:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** {
 806              		.loc 1 133 0
 807              		.cfi_startproc
 808              		@ args = 0, pretend = 0, frame = 16
 809              		@ frame_needed = 1, uses_anonymous_args = 0
 810 0368 80B5     		push	{r7, lr}
 811              		.cfi_def_cfa_offset 8
 812              		.cfi_offset 7, -8
 813              		.cfi_offset 14, -4
 814 036a 84B0     		sub	sp, sp, #16
 815              		.cfi_def_cfa_offset 24
 816 036c 00AF     		add	r7, sp, #0
 817              		.cfi_def_cfa_register 7
 818 036e 7860     		str	r0, [r7, #4]
 134:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	ascii_goToXY(1,2);
 819              		.loc 1 134 0
 820 0370 0221     		movs	r1, #2
 821 0372 0120     		movs	r0, #1
 822 0374 FFF7FEFF 		bl	ascii_goToXY
 135:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
 136:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	if (val==0)
 823              		.loc 1 136 0
 824 0378 7B68     		ldr	r3, [r7, #4]
 825 037a 002B     		cmp	r3, #0
 826 037c 03D1     		bne	.L40
 137:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	{
 138:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_char('0');
 827              		.loc 1 138 0
 828 037e 3020     		movs	r0, #48
 829 0380 FFF7FEFF 		bl	ascii_write_char
 139:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		return;
 830              		.loc 1 139 0
 831 0384 3AE0     		b	.L39
 832              	.L40:
 140:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	}
 141:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	long power = 10000000;
 833              		.loc 1 141 0
 834 0386 1F4B     		ldr	r3, .L46
 835 0388 FB60     		str	r3, [r7, #12]
 142:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
 143:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	char res;
 144:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	while (!(res =val/power)){power/=10;}
 836              		.loc 1 144 0
 837 038a 06E0     		b	.L42
 838              	.L43:
 839              		.loc 1 144 0 is_stmt 0 discriminator 2
 840 038c FB68     		ldr	r3, [r7, #12]
 841 038e 0A21     		movs	r1, #10
 842 0390 1800     		movs	r0, r3
 843 0392 FFF7FEFF 		bl	__aeabi_idiv
 844              	.LVL0:
 845 0396 0300     		movs	r3, r0
 846 0398 FB60     		str	r3, [r7, #12]
 847              	.L42:
 848              		.loc 1 144 0 discriminator 1
 849 039a F968     		ldr	r1, [r7, #12]
 850 039c 7868     		ldr	r0, [r7, #4]
 851 039e FFF7FEFF 		bl	__aeabi_idiv
 852              	.LVL1:
 853 03a2 0300     		movs	r3, r0
 854 03a4 1A00     		movs	r2, r3
 855 03a6 0B23     		movs	r3, #11
 856 03a8 FB18     		adds	r3, r7, r3
 857 03aa 1A70     		strb	r2, [r3]
 858 03ac 0B23     		movs	r3, #11
 859 03ae FB18     		adds	r3, r7, r3
 860 03b0 1B78     		ldrb	r3, [r3]
 861 03b2 002B     		cmp	r3, #0
 862 03b4 EAD0     		beq	.L43
 145:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		
 146:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	while(power)
 863              		.loc 1 146 0 is_stmt 1
 864 03b6 1EE0     		b	.L44
 865              	.L45:
 147:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	{
 148:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		res = val/power;
 866              		.loc 1 148 0
 867 03b8 F968     		ldr	r1, [r7, #12]
 868 03ba 7868     		ldr	r0, [r7, #4]
 869 03bc FFF7FEFF 		bl	__aeabi_idiv
 870              	.LVL2:
 871 03c0 0300     		movs	r3, r0
 872 03c2 1A00     		movs	r2, r3
 873 03c4 0B23     		movs	r3, #11
 874 03c6 FB18     		adds	r3, r7, r3
 875 03c8 1A70     		strb	r2, [r3]
 149:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		ascii_write_char(res+'0');
 876              		.loc 1 149 0
 877 03ca 0B23     		movs	r3, #11
 878 03cc FB18     		adds	r3, r7, r3
 879 03ce 1B78     		ldrb	r3, [r3]
 880 03d0 3033     		adds	r3, r3, #48
 881 03d2 DBB2     		uxtb	r3, r3
 882 03d4 1800     		movs	r0, r3
 883 03d6 FFF7FEFF 		bl	ascii_write_char
 150:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		val=val%power;
 884              		.loc 1 150 0
 885 03da 7B68     		ldr	r3, [r7, #4]
 886 03dc F968     		ldr	r1, [r7, #12]
 887 03de 1800     		movs	r0, r3
 888 03e0 FFF7FEFF 		bl	__aeabi_idivmod
 889              	.LVL3:
 890 03e4 0B00     		movs	r3, r1
 891 03e6 7B60     		str	r3, [r7, #4]
 151:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 		power/=10;
 892              		.loc 1 151 0
 893 03e8 FB68     		ldr	r3, [r7, #12]
 894 03ea 0A21     		movs	r1, #10
 895 03ec 1800     		movs	r0, r3
 896 03ee FFF7FEFF 		bl	__aeabi_idiv
 897              	.LVL4:
 898 03f2 0300     		movs	r3, r0
 899 03f4 FB60     		str	r3, [r7, #12]
 900              	.L44:
 146:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	{
 901              		.loc 1 146 0
 902 03f6 FB68     		ldr	r3, [r7, #12]
 903 03f8 002B     		cmp	r3, #0
 904 03fa DDD1     		bne	.L45
 905              	.L39:
 152:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	}
 153:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
 154:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
 155:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** 	
 156:C:/Users/latiif/Documents/Labb5/Game2048\ascii.c **** }...
 906              		.loc 1 156 0
 907 03fc BD46     		mov	sp, r7
 908 03fe 04B0     		add	sp, sp, #16
 909              		@ sp needed
 910 0400 80BD     		pop	{r7, pc}
 911              	.L47:
 912 0402 C046     		.align	2
 913              	.L46:
 914 0404 80969800 		.word	10000000
 915              		.cfi_endproc
 916              	.LFE13:
 918              	.Letext0:
