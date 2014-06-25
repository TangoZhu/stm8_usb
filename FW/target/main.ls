   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  71                     ; 58 void delay(uint8_t n)
  71                     ; 59 {
  73                     .text:	section	.text,new
  74  0000               _delay:
  76  0000 88            	push	a
  77  0001 89            	pushw	x
  78       00000002      OFST:	set	2
  81  0002 200b          	jra	L73
  82  0004               L53:
  83                     ; 63 		for(i=0;i<2000;i++)
  85  0004 5f            	clrw	x
  86  0005               L34:
  90  0005 5c            	incw	x
  93  0006 a307d0        	cpw	x,#2000
  94  0009 25fa          	jrult	L34
  95  000b 1f01          	ldw	(OFST-1,sp),x
  96                     ; 65 		n--;
  98  000d 0a03          	dec	(OFST+1,sp)
  99  000f               L73:
 100                     ; 61 	while(n>0)
 102  000f 7b03          	ld	a,(OFST+1,sp)
 103  0011 26f1          	jrne	L53
 104                     ; 67 }
 107  0013 5b03          	addw	sp,#3
 108  0015 81            	ret	
 166                     ; 69 void main(void)
 166                     ; 70 {
 167                     .text:	section	.text,new
 168  0000               _main:
 170  0000 89            	pushw	x
 171       00000002      OFST:	set	2
 174                     ; 71 	char x=10;
 176  0001 a60a          	ld	a,#10
 177  0003 6b01          	ld	(OFST-1,sp),a
 178                     ; 72 	char y=10;
 180  0005 6b02          	ld	(OFST+0,sp),a
 181                     ; 75 	disableInterrupts();
 184  0007 9b            	sim	
 186                     ; 13 	GPIOA->CR1 = 0x08;
 190  0008 35085003      	mov	20483,#8
 191                     ; 14 	GPIOA->CR2 = 0x08;
 193  000c 35085004      	mov	20484,#8
 194                     ; 15 	GPIOA->DDR = 0x08;
 196  0010 35085002      	mov	20482,#8
 197                     ; 16 	GPIOA->ODR = 0x08;
 199  0014 35085000      	mov	20480,#8
 200                     ; 18 	GPIOB->CR1 = 0xFF;
 202  0018 35ff5008      	mov	20488,#255
 203                     ; 19 	GPIOC->CR1 = 0xFF;
 205  001c 35ff500d      	mov	20493,#255
 206                     ; 20 	GPIOD->CR1 = 0xFF;
 208  0020 35ff5012      	mov	20498,#255
 209                     ; 21 	GPIOE->CR1 = 0xFF;
 211  0024 35ff5017      	mov	20503,#255
 212                     ; 22 	GPIOF->CR1 = 0xFF;
 214  0028 35ff501c      	mov	20508,#255
 215                     ; 25 	GPIOC->CR1 = 0;
 217  002c 725f500d      	clr	20493
 218                     ; 26 	GPIOC->CR2 = 0;
 220  0030 725f500e      	clr	20494
 221                     ; 27 	GPIOC->DDR = 0x3F;
 223  0034 353f500c      	mov	20492,#63
 224                     ; 28 	GPIOC->ODR = 0;
 226  0038 725f500a      	clr	20490
 227                     ; 35 	CLK->CKDIVR = 0;
 231  003c 725f50c6      	clr	20678
 232                     ; 38 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 234  0040 4b00          	push	#0
 235  0042 4b00          	push	#0
 236  0044 ae00b4        	ldw	x,#180
 237  0047 a601          	ld	a,#1
 238  0049 95            	ld	xh,a
 239  004a cd0000        	call	_CLK_ClockSwitchConfig
 241  004d 721e50c7      	bset	20679,#7
 242  0051 85            	popw	x
 243                     ; 43 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;
 247                     ; 46 	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
 249  0052 4b00          	push	#0
 250  0054 ae03e8        	ldw	x,#1000
 251  0057 89            	pushw	x
 252  0058 4b00          	push	#0
 253  005a 5f            	clrw	x
 254  005b cd0000        	call	_TIM1_TimeBaseInit
 256  005e 5b04          	addw	sp,#4
 257                     ; 48 	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
 259  0060 4b02          	push	#2
 260  0062 4b00          	push	#0
 261  0064 4b01          	push	#1
 262  0066 5f            	clrw	x
 263  0067 a601          	ld	a,#1
 264  0069 95            	ld	xh,a
 265  006a cd0000        	call	_TIM1_ICInit
 267  006d 5b03          	addw	sp,#3
 268                     ; 49 	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
 270  006f a660          	ld	a,#96
 271  0071 cd0000        	call	_TIM1_SelectInputTrigger
 273                     ; 50 	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
 275  0074 a606          	ld	a,#6
 276  0076 cd0000        	call	_TIM1_SelectSlaveMode
 278                     ; 51 	TIM1_ClearFlag(TIM1_FLAG_CC2);
 280  0079 ae0004        	ldw	x,#4
 281  007c cd0000        	call	_TIM1_ClearFlag
 283                     ; 52 	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 285  007f ae0001        	ldw	x,#1
 286  0082 a604          	ld	a,#4
 287  0084 95            	ld	xh,a
 288  0085 cd0000        	call	_TIM1_ITConfig
 290                     ; 83 	usb_init();
 293  0088 cd0000        	call	_usb_init
 295                     ; 85 	enableInterrupts();
 298  008b 9a            	rim	
 302  008c 2003          	jra	L77
 303  008e               L57:
 304                     ; 88 		usb_process();
 306  008e cd0000        	call	_usb_process
 308  0091               L77:
 309                     ; 87 	while(usb_ready == 0)
 311  0091 c60000        	ld	a,_usb_ready
 312  0094 27f8          	jreq	L57
 313  0096               L301:
 314                     ; 91 		delay(100);
 316  0096 a664          	ld	a,#100
 317  0098 cd0000        	call	_delay
 319                     ; 93 		if(get_random_byte()>127)
 321  009b cd0000        	call	_get_random_byte
 323  009e a180          	cp	a,#128
 324  00a0 2504          	jrult	L701
 325                     ; 95 			x=-x;
 327  00a2 0001          	neg	(OFST-1,sp)
 328                     ; 96 			y=-y;
 330  00a4 0002          	neg	(OFST+0,sp)
 331  00a6               L701:
 332                     ; 99 			data_buffer[0] = 0x00;
 334  00a6 725f0000      	clr	_data_buffer
 335                     ; 100 			data_buffer[1] = x;
 337  00aa 7b01          	ld	a,(OFST-1,sp)
 338  00ac c70001        	ld	_data_buffer+1,a
 339                     ; 101 			data_buffer[2] = y;
 341  00af 7b02          	ld	a,(OFST+0,sp)
 342  00b1 c70002        	ld	_data_buffer+2,a
 343                     ; 102 			data_buffer[3] = 0x00;
 345  00b4 725f0003      	clr	_data_buffer+3
 346                     ; 103 			usb_send_data(&data_buffer[0], 4, 0);
 348  00b8 4b00          	push	#0
 349  00ba 4b04          	push	#4
 350  00bc ae0000        	ldw	x,#_data_buffer
 351  00bf cd0000        	call	_usb_send_data
 353  00c2 85            	popw	x
 355  00c3 20d1          	jra	L301
 380                     	xdef	_main
 381                     	xdef	_delay
 382                     	switch	.bss
 383  0000               _data_buffer:
 384  0000 00000000      	ds.b	4
 385                     	xdef	_data_buffer
 386                     	xref	_usb_ready
 387                     	xref	_usb_send_data
 388                     	xref	_usb_process
 389                     	xref	_usb_init
 390                     	xref	_get_random_byte
 391                     	xref	_TIM1_ClearFlag
 392                     	xref	_TIM1_SelectSlaveMode
 393                     	xref	_TIM1_SelectInputTrigger
 394                     	xref	_TIM1_ITConfig
 395                     	xref	_TIM1_ICInit
 396                     	xref	_TIM1_TimeBaseInit
 397                     	xref	_CLK_ClockSwitchConfig
 417                     	end
