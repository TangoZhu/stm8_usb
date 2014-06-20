   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 29 INTERRUPT_HANDLER(NonHandledInterrupt)
  49                     ; 30 {
  50                     .text:	section	.text,new
  51  0000               f_NonHandledInterrupt:
  55                     ; 31 }
  58  0000 80            	iret	
  80                     ; 34 INTERRUPT_HANDLER_TRAP( TRAP_IRQHandler)
  80                     ; 35 {
  81                     .text:	section	.text,new
  82  0000               f_TRAP_IRQHandler:
  86                     ; 36 }
  89  0000 80            	iret	
 111                     ; 38 INTERRUPT_HANDLER( TLI_IRQHandler)
 111                     ; 39 {
 112                     .text:	section	.text,new
 113  0000               f_TLI_IRQHandler:
 117                     ; 40 }
 120  0000 80            	iret	
 142                     ; 42 INTERRUPT_HANDLER( AWU_IRQHandler)
 142                     ; 43 {
 143                     .text:	section	.text,new
 144  0000               f_AWU_IRQHandler:
 148                     ; 44 }
 151  0000 80            	iret	
 173                     ; 46 INTERRUPT_HANDLER( CLK_IRQHandler)
 173                     ; 47 {
 174                     .text:	section	.text,new
 175  0000               f_CLK_IRQHandler:
 179                     ; 48 }
 182  0000 80            	iret	
 205                     ; 50 INTERRUPT_HANDLER( EXTI_PORTA_IRQHandler)
 205                     ; 51 {
 206                     .text:	section	.text,new
 207  0000               f_EXTI_PORTA_IRQHandler:
 211                     ; 52 }
 214  0000 80            	iret	
 237                     ; 54 INTERRUPT_HANDLER( EXTI_PORTB_IRQHandler)
 237                     ; 55 {
 238                     .text:	section	.text,new
 239  0000               f_EXTI_PORTB_IRQHandler:
 243                     ; 56 }
 246  0000 80            	iret	
 269                     ; 58 INTERRUPT_HANDLER( EXTI_PORTC_IRQHandler)
 269                     ; 59 {
 270                     .text:	section	.text,new
 271  0000               f_EXTI_PORTC_IRQHandler:
 275                     ; 60 }
 278  0000 80            	iret	
 301                     ; 62 INTERRUPT_HANDLER( EXTI_PORTD_IRQHandler)
 301                     ; 63 {
 302                     .text:	section	.text,new
 303  0000               f_EXTI_PORTD_IRQHandler:
 307                     ; 64 }
 310  0000 80            	iret	
 333                     ; 66 INTERRUPT_HANDLER( EXTI_PORTE_IRQHandler)
 333                     ; 67 {
 334                     .text:	section	.text,new
 335  0000               f_EXTI_PORTE_IRQHandler:
 339                     ; 68 }
 342  0000 80            	iret	
 364                     ; 86 INTERRUPT_HANDLER( SPI_IRQHandler)
 364                     ; 87 {
 365                     .text:	section	.text,new
 366  0000               f_SPI_IRQHandler:
 370                     ; 88 }
 373  0000 80            	iret	
 396                     ; 90 INTERRUPT_HANDLER( TIM1_UPD_OVF_TRG_BRK_IRQHandler)
 396                     ; 91 {
 397                     .text:	section	.text,new
 398  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 402                     ; 92 }
 405  0000 80            	iret	
 428                     ; 108 INTERRUPT_HANDLER( TIM2_UPD_OVF_BRK_IRQHandler)
 428                     ; 109 {
 429                     .text:	section	.text,new
 430  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 434                     ; 110 }
 437  0000 80            	iret	
 460                     ; 112 INTERRUPT_HANDLER( TIM2_CAP_COM_IRQHandler)
 460                     ; 113 {
 461                     .text:	section	.text,new
 462  0000               f_TIM2_CAP_COM_IRQHandler:
 466                     ; 114 }
 469  0000 80            	iret	
 492                     ; 130 INTERRUPT_HANDLER( UART1_TX_IRQHandler)
 492                     ; 131 {
 493                     .text:	section	.text,new
 494  0000               f_UART1_TX_IRQHandler:
 498                     ; 132 }
 501  0000 80            	iret	
 524                     ; 134 INTERRUPT_HANDLER( UART1_RX_IRQHandler)
 524                     ; 135 {
 525                     .text:	section	.text,new
 526  0000               f_UART1_RX_IRQHandler:
 530                     ; 136 }
 533  0000 80            	iret	
 555                     ; 139 INTERRUPT_HANDLER( I2C_IRQHandler)
 555                     ; 140 {
 556                     .text:	section	.text,new
 557  0000               f_I2C_IRQHandler:
 561                     ; 141 }
 564  0000 80            	iret	
 586                     ; 168 INTERRUPT_HANDLER( ADC1_IRQHandler)
 586                     ; 169 {
 587                     .text:	section	.text,new
 588  0000               f_ADC1_IRQHandler:
 592                     ; 170 }
 595  0000 80            	iret	
 618                     ; 184 INTERRUPT_HANDLER( TIM4_UPD_OVF_IRQHandler)
 618                     ; 185 {
 619                     .text:	section	.text,new
 620  0000               f_TIM4_UPD_OVF_IRQHandler:
 624                     ; 186 }
 627  0000 80            	iret	
 650                     ; 189 INTERRUPT_HANDLER( EEPROM_EEC_IRQHandler)
 650                     ; 190 {
 651                     .text:	section	.text,new
 652  0000               f_EEPROM_EEC_IRQHandler:
 656                     ; 191 }
 659  0000 80            	iret	
 671                     	xdef	f_EEPROM_EEC_IRQHandler
 672                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 673                     	xdef	f_ADC1_IRQHandler
 674                     	xdef	f_I2C_IRQHandler
 675                     	xdef	f_UART1_RX_IRQHandler
 676                     	xdef	f_UART1_TX_IRQHandler
 677                     	xdef	f_TIM2_CAP_COM_IRQHandler
 678                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 679                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 680                     	xdef	f_SPI_IRQHandler
 681                     	xdef	f_EXTI_PORTE_IRQHandler
 682                     	xdef	f_EXTI_PORTD_IRQHandler
 683                     	xdef	f_EXTI_PORTC_IRQHandler
 684                     	xdef	f_EXTI_PORTB_IRQHandler
 685                     	xdef	f_EXTI_PORTA_IRQHandler
 686                     	xdef	f_CLK_IRQHandler
 687                     	xdef	f_AWU_IRQHandler
 688                     	xdef	f_TLI_IRQHandler
 689                     	xdef	f_TRAP_IRQHandler
 690                     	xdef	f_NonHandledInterrupt
 709                     	end
