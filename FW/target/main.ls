   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  61                     ; 50 void main(void)
  61                     ; 51 {
  63                     .text:	section	.text,new
  64  0000               _main:
  68                     ; 52 	disableInterrupts();
  71  0000 9b            	sim	
  73                     ; 12 	GPIOA->CR1 = 0xFF;
  77  0001 35ff5003      	mov	20483,#255
  78                     ; 13 	GPIOB->CR1 = 0xFF;
  80  0005 35ff5008      	mov	20488,#255
  81                     ; 14 	GPIOC->CR1 = 0xFF;
  83  0009 35ff500d      	mov	20493,#255
  84                     ; 15 	GPIOD->CR1 = 0xFF;
  86  000d 35ff5012      	mov	20498,#255
  87                     ; 16 	GPIOE->CR1 = 0xFF;
  89  0011 35ff5017      	mov	20503,#255
  90                     ; 17 	GPIOF->CR1 = 0xFF;
  92  0015 35ff501c      	mov	20508,#255
  93                     ; 20 	GPIOC->CR1 = 0;
  95  0019 725f500d      	clr	20493
  96                     ; 21 	GPIOC->CR2 = 0;
  98  001d 725f500e      	clr	20494
  99                     ; 22 	GPIOC->DDR = 0x3F;
 101  0021 353f500c      	mov	20492,#63
 102                     ; 23 	GPIOC->ODR = 0;
 104  0025 725f500a      	clr	20490
 105                     ; 30 	CLK->CKDIVR = 0;
 109  0029 725f50c6      	clr	20678
 110                     ; 33 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 112  002d 4b00          	push	#0
 113  002f 4b00          	push	#0
 114  0031 ae00b4        	ldw	x,#180
 115  0034 a601          	ld	a,#1
 116  0036 95            	ld	xh,a
 117  0037 cd0000        	call	_CLK_ClockSwitchConfig
 119  003a 721e50c7      	bset	20679,#7
 120  003e 85            	popw	x
 121                     ; 38 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;
 125                     ; 41 	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
 127  003f 4b00          	push	#0
 128  0041 ae03e8        	ldw	x,#1000
 129  0044 89            	pushw	x
 130  0045 4b00          	push	#0
 131  0047 5f            	clrw	x
 132  0048 cd0000        	call	_TIM1_TimeBaseInit
 134  004b 5b04          	addw	sp,#4
 135                     ; 43 	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
 137  004d 4b02          	push	#2
 138  004f 4b00          	push	#0
 139  0051 4b01          	push	#1
 140  0053 5f            	clrw	x
 141  0054 a601          	ld	a,#1
 142  0056 95            	ld	xh,a
 143  0057 cd0000        	call	_TIM1_ICInit
 145  005a 5b03          	addw	sp,#3
 146                     ; 44 	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
 148  005c a660          	ld	a,#96
 149  005e cd0000        	call	_TIM1_SelectInputTrigger
 151                     ; 45 	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
 153  0061 a606          	ld	a,#6
 154  0063 cd0000        	call	_TIM1_SelectSlaveMode
 156                     ; 46 	TIM1_ClearFlag(TIM1_FLAG_CC2);
 158  0066 ae0004        	ldw	x,#4
 159  0069 cd0000        	call	_TIM1_ClearFlag
 161                     ; 47 	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 163  006c ae0001        	ldw	x,#1
 164  006f a604          	ld	a,#4
 165  0071 95            	ld	xh,a
 166  0072 cd0000        	call	_TIM1_ITConfig
 168                     ; 60 	enableInterrupts();
 172  0075 9a            	rim	
 174  0076               L53:
 175                     ; 64 		usb_process();
 177  0076 cd0000        	call	_usb_process
 180  0079 20fb          	jra	L53
 193                     	xdef	_main
 194                     	xref	_usb_process
 195                     	xref	_TIM1_ClearFlag
 196                     	xref	_TIM1_SelectSlaveMode
 197                     	xref	_TIM1_SelectInputTrigger
 198                     	xref	_TIM1_ITConfig
 199                     	xref	_TIM1_ICInit
 200                     	xref	_TIM1_TimeBaseInit
 201                     	xref	_CLK_ClockSwitchConfig
 220                     	end
