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
 181                     ; 74 	CLK->CKDIVR = 0;	//16M
 183  0007 725f50c6      	clr	20678
 184                     ; 76 	disableInterrupts();
 187  000b 9b            	sim	
 189                     ; 13 	GPIOA->CR1 = 0x08;
 193  000c 35085003      	mov	20483,#8
 194                     ; 14 	GPIOA->CR2 = 0x08;
 196  0010 35085004      	mov	20484,#8
 197                     ; 15 	GPIOA->DDR = 0x08;
 199  0014 35085002      	mov	20482,#8
 200                     ; 16 	GPIOA->ODR = 0x00;
 202  0018 725f5000      	clr	20480
 203                     ; 43 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;
 207                     ; 46 	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
 209  001c 4b00          	push	#0
 210  001e 721e50c7      	bset	20679,#7
 211  0022 ae03e8        	ldw	x,#1000
 212  0025 89            	pushw	x
 213  0026 4b00          	push	#0
 214  0028 5f            	clrw	x
 215  0029 cd0000        	call	_TIM1_TimeBaseInit
 217  002c 5b04          	addw	sp,#4
 218                     ; 48 	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
 220  002e 4b02          	push	#2
 221  0030 4b00          	push	#0
 222  0032 4b01          	push	#1
 223  0034 5f            	clrw	x
 224  0035 a601          	ld	a,#1
 225  0037 95            	ld	xh,a
 226  0038 cd0000        	call	_TIM1_ICInit
 228  003b 5b03          	addw	sp,#3
 229                     ; 49 	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
 231  003d a660          	ld	a,#96
 232  003f cd0000        	call	_TIM1_SelectInputTrigger
 234                     ; 50 	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
 236  0042 a606          	ld	a,#6
 237  0044 cd0000        	call	_TIM1_SelectSlaveMode
 239                     ; 51 	TIM1_ClearFlag(TIM1_FLAG_CC2);
 241  0047 ae0004        	ldw	x,#4
 242  004a cd0000        	call	_TIM1_ClearFlag
 244                     ; 52 	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 246  004d ae0001        	ldw	x,#1
 247  0050 a604          	ld	a,#4
 248  0052 95            	ld	xh,a
 249  0053 cd0000        	call	_TIM1_ITConfig
 251                     ; 82 	usb_init();
 254  0056 cd0000        	call	_usb_init
 256                     ; 38 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 259  0059 4b00          	push	#0
 260  005b 4b00          	push	#0
 261  005d ae00b4        	ldw	x,#180
 262  0060 a601          	ld	a,#1
 263  0062 95            	ld	xh,a
 264  0063 cd0000        	call	_CLK_ClockSwitchConfig
 266  0066 9a            	rim	
 267  0067 85            	popw	x
 268                     ; 86 	enableInterrupts();
 275  0068 2003          	jra	L77
 276  006a               L57:
 277                     ; 90 		usb_process();
 279  006a cd0000        	call	_usb_process
 281  006d               L77:
 282                     ; 88 	while(usb_ready == 0)
 284  006d c60000        	ld	a,_usb_ready
 285  0070 27f8          	jreq	L57
 286  0072               L301:
 287                     ; 94 		delay(100);
 289  0072 a664          	ld	a,#100
 290  0074 cd0000        	call	_delay
 292                     ; 96 		if(get_random_byte()>127)
 294  0077 cd0000        	call	_get_random_byte
 296  007a a180          	cp	a,#128
 297  007c 2504          	jrult	L701
 298                     ; 98 			x=-x;
 300  007e 0001          	neg	(OFST-1,sp)
 301                     ; 99 			y=-y;
 303  0080 0002          	neg	(OFST+0,sp)
 304  0082               L701:
 305                     ; 102 			data_buffer[0] = 0x00;
 307  0082 725f0000      	clr	_data_buffer
 308                     ; 103 			data_buffer[1] = x;
 310  0086 7b01          	ld	a,(OFST-1,sp)
 311  0088 c70001        	ld	_data_buffer+1,a
 312                     ; 104 			data_buffer[2] = y;
 314  008b 7b02          	ld	a,(OFST+0,sp)
 315  008d c70002        	ld	_data_buffer+2,a
 316                     ; 105 			data_buffer[3] = 0x00;
 318  0090 725f0003      	clr	_data_buffer+3
 319                     ; 106 			usb_send_data(&data_buffer[0], 4, 0);
 321  0094 4b00          	push	#0
 322  0096 4b04          	push	#4
 323  0098 ae0000        	ldw	x,#_data_buffer
 324  009b cd0000        	call	_usb_send_data
 326  009e 85            	popw	x
 328  009f 20d1          	jra	L301
 353                     	xdef	_main
 354                     	xdef	_delay
 355                     	switch	.bss
 356  0000               _data_buffer:
 357  0000 00000000      	ds.b	4
 358                     	xdef	_data_buffer
 359                     	xref	_usb_ready
 360                     	xref	_usb_send_data
 361                     	xref	_usb_process
 362                     	xref	_usb_init
 363                     	xref	_get_random_byte
 364                     	xref	_TIM1_ClearFlag
 365                     	xref	_TIM1_SelectSlaveMode
 366                     	xref	_TIM1_SelectInputTrigger
 367                     	xref	_TIM1_ITConfig
 368                     	xref	_TIM1_ICInit
 369                     	xref	_TIM1_TimeBaseInit
 370                     	xref	_CLK_ClockSwitchConfig
 390                     	end
