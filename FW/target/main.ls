   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  62                     ; 55 void main(void)
  62                     ; 56 {
  64                     .text:	section	.text,new
  65  0000               _main:
  69                     ; 57 	disableInterrupts();
  72  0000 9b            	sim	
  74                     ; 13 	GPIOA->CR1 = 0x08;
  78  0001 35085003      	mov	20483,#8
  79                     ; 14 	GPIOA->CR2 = 0x08;
  81  0005 35085004      	mov	20484,#8
  82                     ; 15 	GPIOA->DDR = 0x08;
  84  0009 35085002      	mov	20482,#8
  85                     ; 16 	GPIOA->ODR = 0x08;
  87  000d 35085000      	mov	20480,#8
  88                     ; 18 	GPIOB->CR1 = 0xFF;
  90  0011 35ff5008      	mov	20488,#255
  91                     ; 19 	GPIOC->CR1 = 0xFF;
  93  0015 35ff500d      	mov	20493,#255
  94                     ; 20 	GPIOD->CR1 = 0xFF;
  96  0019 35ff5012      	mov	20498,#255
  97                     ; 21 	GPIOE->CR1 = 0xFF;
  99  001d 35ff5017      	mov	20503,#255
 100                     ; 22 	GPIOF->CR1 = 0xFF;
 102  0021 35ff501c      	mov	20508,#255
 103                     ; 25 	GPIOC->CR1 = 0;
 105  0025 725f500d      	clr	20493
 106                     ; 26 	GPIOC->CR2 = 0;
 108  0029 725f500e      	clr	20494
 109                     ; 27 	GPIOC->DDR = 0x3F;
 111  002d 353f500c      	mov	20492,#63
 112                     ; 28 	GPIOC->ODR = 0;
 114  0031 725f500a      	clr	20490
 115                     ; 35 	CLK->CKDIVR = 0;
 119  0035 725f50c6      	clr	20678
 120                     ; 38 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 122  0039 4b00          	push	#0
 123  003b 4b00          	push	#0
 124  003d ae00b4        	ldw	x,#180
 125  0040 a601          	ld	a,#1
 126  0042 95            	ld	xh,a
 127  0043 cd0000        	call	_CLK_ClockSwitchConfig
 129  0046 721e50c7      	bset	20679,#7
 130  004a 85            	popw	x
 131                     ; 43 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;
 135                     ; 46 	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
 137  004b 4b00          	push	#0
 138  004d ae03e8        	ldw	x,#1000
 139  0050 89            	pushw	x
 140  0051 4b00          	push	#0
 141  0053 5f            	clrw	x
 142  0054 cd0000        	call	_TIM1_TimeBaseInit
 144  0057 5b04          	addw	sp,#4
 145                     ; 48 	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
 147  0059 4b02          	push	#2
 148  005b 4b00          	push	#0
 149  005d 4b01          	push	#1
 150  005f 5f            	clrw	x
 151  0060 a601          	ld	a,#1
 152  0062 95            	ld	xh,a
 153  0063 cd0000        	call	_TIM1_ICInit
 155  0066 5b03          	addw	sp,#3
 156                     ; 49 	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
 158  0068 a660          	ld	a,#96
 159  006a cd0000        	call	_TIM1_SelectInputTrigger
 161                     ; 50 	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
 163  006d a606          	ld	a,#6
 164  006f cd0000        	call	_TIM1_SelectSlaveMode
 166                     ; 51 	TIM1_ClearFlag(TIM1_FLAG_CC2);
 168  0072 ae0004        	ldw	x,#4
 169  0075 cd0000        	call	_TIM1_ClearFlag
 171                     ; 52 	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 173  0078 ae0001        	ldw	x,#1
 174  007b a604          	ld	a,#4
 175  007d 95            	ld	xh,a
 176  007e cd0000        	call	_TIM1_ITConfig
 178                     ; 65 	usb_init();
 181  0081 cd0000        	call	_usb_init
 183                     ; 67 	enableInterrupts();
 186  0084 9a            	rim	
 188  0085               L53:
 189                     ; 71 		usb_process();
 191  0085 cd0000        	call	_usb_process
 194  0088 20fb          	jra	L53
 207                     	xdef	_main
 208                     	xref	_usb_process
 209                     	xref	_usb_init
 210                     	xref	_TIM1_ClearFlag
 211                     	xref	_TIM1_SelectSlaveMode
 212                     	xref	_TIM1_SelectInputTrigger
 213                     	xref	_TIM1_ITConfig
 214                     	xref	_TIM1_ICInit
 215                     	xref	_TIM1_TimeBaseInit
 216                     	xref	_CLK_ClockSwitchConfig
 235                     	end
