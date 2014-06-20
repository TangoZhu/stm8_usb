   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  48                     ; 46 void UART1_DeInit(void)
  48                     ; 47 {
  50                     .text:	section	.text,new
  51  0000               _UART1_DeInit:
  55                     ; 50     (void)UART1->SR;
  57  0000 c65230        	ld	a,21040
  58                     ; 51     (void)UART1->DR;
  60  0003 c65231        	ld	a,21041
  61                     ; 53     UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  63  0006 725f5233      	clr	21043
  64                     ; 54     UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  66  000a 725f5232      	clr	21042
  67                     ; 56     UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  69  000e 725f5234      	clr	21044
  70                     ; 57     UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  72  0012 725f5235      	clr	21045
  73                     ; 58     UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  75  0016 725f5236      	clr	21046
  76                     ; 59     UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  78  001a 725f5237      	clr	21047
  79                     ; 60     UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  81  001e 725f5238      	clr	21048
  82                     ; 62     UART1->GTR = UART1_GTR_RESET_VALUE;
  84  0022 725f5239      	clr	21049
  85                     ; 63     UART1->PSCR = UART1_PSCR_RESET_VALUE;
  87  0026 725f523a      	clr	21050
  88                     ; 64 }
  91  002a 81            	ret	
 388                     .const:	section	.text
 389  0000               L41:
 390  0000 00000064      	dc.l	100
 391                     ; 83 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 391                     ; 84                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 391                     ; 85                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 391                     ; 86 {
 392                     .text:	section	.text,new
 393  0000               _UART1_Init:
 395       0000000c      OFST:	set	12
 398                     ; 87     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 402                     ; 90     assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 404                     ; 91     assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 406                     ; 92     assert_param(IS_UART1_STOPBITS_OK(StopBits));
 408                     ; 93     assert_param(IS_UART1_PARITY_OK(Parity));
 410                     ; 94     assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 412                     ; 95     assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 414                     ; 98     UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 416  0000 72195234      	bres	21044,#4
 417  0004 520c          	subw	sp,#12
 418                     ; 101     UART1->CR1 |= (uint8_t)WordLength;
 420  0006 c65234        	ld	a,21044
 421  0009 1a13          	or	a,(OFST+7,sp)
 422  000b c75234        	ld	21044,a
 423                     ; 104     UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 425  000e c65236        	ld	a,21046
 426  0011 a4cf          	and	a,#207
 427  0013 c75236        	ld	21046,a
 428                     ; 106     UART1->CR3 |= (uint8_t)StopBits;  
 430  0016 c65236        	ld	a,21046
 431  0019 1a14          	or	a,(OFST+8,sp)
 432  001b c75236        	ld	21046,a
 433                     ; 109     UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 435  001e c65234        	ld	a,21044
 436  0021 a4f9          	and	a,#249
 437  0023 c75234        	ld	21044,a
 438                     ; 111     UART1->CR1 |= (uint8_t)Parity;  
 440  0026 c65234        	ld	a,21044
 441  0029 1a15          	or	a,(OFST+9,sp)
 442  002b c75234        	ld	21044,a
 443                     ; 114     UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 445  002e 725f5232      	clr	21042
 446                     ; 116     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 448  0032 c65233        	ld	a,21043
 449  0035 a40f          	and	a,#15
 450  0037 c75233        	ld	21043,a
 451                     ; 118     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 453  003a c65233        	ld	a,21043
 454  003d a4f0          	and	a,#240
 455  003f c75233        	ld	21043,a
 456                     ; 121     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 458  0042 1e0f          	ldw	x,(OFST+3,sp)
 459  0044 bf00          	ldw	c_lreg,x
 460  0046 1e11          	ldw	x,(OFST+5,sp)
 461  0048 bf02          	ldw	c_lreg+2,x
 462  004a a604          	ld	a,#4
 463  004c cd0000        	call	c_llsh
 465  004f be02          	ldw	x,c_lreg+2
 466  0051 1f03          	ldw	(OFST-9,sp),x
 467  0053 be00          	ldw	x,c_lreg
 468  0055 1f01          	ldw	(OFST-11,sp),x
 469  0057 cd0000        	call	_CLK_GetClockFreq
 471  005a 96            	ldw	x,sp
 472  005b 5c            	incw	x
 473  005c cd0000        	call	c_ludv
 475  005f be02          	ldw	x,c_lreg+2
 476  0061 1f0b          	ldw	(OFST-1,sp),x
 477  0063 be00          	ldw	x,c_lreg
 478  0065 1f09          	ldw	(OFST-3,sp),x
 479                     ; 122     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 481  0067 1e0f          	ldw	x,(OFST+3,sp)
 482  0069 bf00          	ldw	c_lreg,x
 483  006b 1e11          	ldw	x,(OFST+5,sp)
 484  006d bf02          	ldw	c_lreg+2,x
 485  006f a604          	ld	a,#4
 486  0071 cd0000        	call	c_llsh
 488  0074 be02          	ldw	x,c_lreg+2
 489  0076 1f03          	ldw	(OFST-9,sp),x
 490  0078 be00          	ldw	x,c_lreg
 491  007a 1f01          	ldw	(OFST-11,sp),x
 492  007c cd0000        	call	_CLK_GetClockFreq
 494  007f a664          	ld	a,#100
 495  0081 cd0000        	call	c_smul
 497  0084 96            	ldw	x,sp
 498  0085 5c            	incw	x
 499  0086 cd0000        	call	c_ludv
 501  0089 be02          	ldw	x,c_lreg+2
 502  008b 1f07          	ldw	(OFST-5,sp),x
 503  008d be00          	ldw	x,c_lreg
 504  008f 1f05          	ldw	(OFST-7,sp),x
 505                     ; 124     UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 507  0091 1e09          	ldw	x,(OFST-3,sp)
 508  0093 bf00          	ldw	c_lreg,x
 509  0095 1e0b          	ldw	x,(OFST-1,sp)
 510  0097 bf02          	ldw	c_lreg+2,x
 511  0099 a664          	ld	a,#100
 512  009b cd0000        	call	c_smul
 514  009e be02          	ldw	x,c_lreg+2
 515  00a0 1f03          	ldw	(OFST-9,sp),x
 516  00a2 be00          	ldw	x,c_lreg
 517  00a4 1f01          	ldw	(OFST-11,sp),x
 518  00a6 1e05          	ldw	x,(OFST-7,sp)
 519  00a8 bf00          	ldw	c_lreg,x
 520  00aa 1e07          	ldw	x,(OFST-5,sp)
 521  00ac bf02          	ldw	c_lreg+2,x
 522  00ae 96            	ldw	x,sp
 523  00af 5c            	incw	x
 524  00b0 cd0000        	call	c_lsub
 526  00b3 a604          	ld	a,#4
 527  00b5 cd0000        	call	c_llsh
 529  00b8 ae0000        	ldw	x,#L41
 530  00bb cd0000        	call	c_ludv
 532  00be b603          	ld	a,c_lreg+3
 533  00c0 a40f          	and	a,#15
 534  00c2 ca5233        	or	a,21043
 535  00c5 c75233        	ld	21043,a
 536                     ; 126     UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 538  00c8 1e09          	ldw	x,(OFST-3,sp)
 539  00ca bf00          	ldw	c_lreg,x
 540  00cc 1e0b          	ldw	x,(OFST-1,sp)
 541  00ce bf02          	ldw	c_lreg+2,x
 542  00d0 a604          	ld	a,#4
 543  00d2 cd0000        	call	c_lursh
 545  00d5 b603          	ld	a,c_lreg+3
 546  00d7 a4f0          	and	a,#240
 547  00d9 b703          	ld	c_lreg+3,a
 548  00db 3f02          	clr	c_lreg+2
 549  00dd 3f01          	clr	c_lreg+1
 550  00df 3f00          	clr	c_lreg
 551  00e1 ca5233        	or	a,21043
 552  00e4 c75233        	ld	21043,a
 553                     ; 128     UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 555  00e7 c65232        	ld	a,21042
 556  00ea 1a0c          	or	a,(OFST+0,sp)
 557  00ec c75232        	ld	21042,a
 558                     ; 131     UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 560  00ef c65235        	ld	a,21045
 561  00f2 a4f3          	and	a,#243
 562  00f4 c75235        	ld	21045,a
 563                     ; 133     UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 565  00f7 c65236        	ld	a,21046
 566  00fa a4f8          	and	a,#248
 567  00fc c75236        	ld	21046,a
 568                     ; 135     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 568                     ; 136                                               UART1_CR3_CPHA | UART1_CR3_LBCL));  
 570  00ff 7b16          	ld	a,(OFST+10,sp)
 571  0101 a407          	and	a,#7
 572  0103 ca5236        	or	a,21046
 573  0106 c75236        	ld	21046,a
 574                     ; 138     if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 576  0109 7b17          	ld	a,(OFST+11,sp)
 577  010b a504          	bcp	a,#4
 578  010d 2706          	jreq	L561
 579                     ; 141         UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 581  010f 72165235      	bset	21045,#3
 583  0113 2004          	jra	L761
 584  0115               L561:
 585                     ; 146         UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 587  0115 72175235      	bres	21045,#3
 588  0119               L761:
 589                     ; 148     if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 591  0119 a508          	bcp	a,#8
 592  011b 2706          	jreq	L171
 593                     ; 151         UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 595  011d 72145235      	bset	21045,#2
 597  0121 2004          	jra	L371
 598  0123               L171:
 599                     ; 156         UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 601  0123 72155235      	bres	21045,#2
 602  0127               L371:
 603                     ; 160     if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 605  0127 7b16          	ld	a,(OFST+10,sp)
 606  0129 2a06          	jrpl	L571
 607                     ; 163         UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 609  012b 72175236      	bres	21046,#3
 611  012f 2008          	jra	L771
 612  0131               L571:
 613                     ; 167         UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 615  0131 a408          	and	a,#8
 616  0133 ca5236        	or	a,21046
 617  0136 c75236        	ld	21046,a
 618  0139               L771:
 619                     ; 169 }
 622  0139 5b0c          	addw	sp,#12
 623  013b 81            	ret	
 678                     ; 177 void UART1_Cmd(FunctionalState NewState)
 678                     ; 178 {
 679                     .text:	section	.text,new
 680  0000               _UART1_Cmd:
 684                     ; 179     if (NewState != DISABLE)
 686  0000 4d            	tnz	a
 687  0001 2705          	jreq	L722
 688                     ; 182         UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 690  0003 721b5234      	bres	21044,#5
 693  0007 81            	ret	
 694  0008               L722:
 695                     ; 187         UART1->CR1 |= UART1_CR1_UARTD;  
 697  0008 721a5234      	bset	21044,#5
 698                     ; 189 }
 701  000c 81            	ret	
 822                     ; 205 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 822                     ; 206 {
 823                     .text:	section	.text,new
 824  0000               _UART1_ITConfig:
 826  0000 89            	pushw	x
 827  0001 89            	pushw	x
 828       00000002      OFST:	set	2
 831                     ; 207     uint8_t uartreg = 0, itpos = 0x00;
 835                     ; 210     assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 837                     ; 211     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 839                     ; 214     uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 841  0002 9e            	ld	a,xh
 842  0003 6b01          	ld	(OFST-1,sp),a
 843                     ; 216     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 845  0005 9f            	ld	a,xl
 846  0006 a40f          	and	a,#15
 847  0008 5f            	clrw	x
 848  0009 97            	ld	xl,a
 849  000a a601          	ld	a,#1
 850  000c 5d            	tnzw	x
 851  000d 2704          	jreq	L22
 852  000f               L42:
 853  000f 48            	sll	a
 854  0010 5a            	decw	x
 855  0011 26fc          	jrne	L42
 856  0013               L22:
 857  0013 6b02          	ld	(OFST+0,sp),a
 858                     ; 218     if (NewState != DISABLE)
 860  0015 7b07          	ld	a,(OFST+5,sp)
 861  0017 271f          	jreq	L503
 862                     ; 221         if (uartreg == 0x01)
 864  0019 7b01          	ld	a,(OFST-1,sp)
 865  001b a101          	cp	a,#1
 866  001d 2607          	jrne	L703
 867                     ; 223             UART1->CR1 |= itpos;
 869  001f c65234        	ld	a,21044
 870  0022 1a02          	or	a,(OFST+0,sp)
 872  0024 201e          	jp	LC002
 873  0026               L703:
 874                     ; 225         else if (uartreg == 0x02)
 876  0026 a102          	cp	a,#2
 877  0028 2607          	jrne	L313
 878                     ; 227             UART1->CR2 |= itpos;
 880  002a c65235        	ld	a,21045
 881  002d 1a02          	or	a,(OFST+0,sp)
 883  002f 2022          	jp	LC003
 884  0031               L313:
 885                     ; 231             UART1->CR4 |= itpos;
 887  0031 c65237        	ld	a,21047
 888  0034 1a02          	or	a,(OFST+0,sp)
 889  0036 2026          	jp	LC001
 890  0038               L503:
 891                     ; 237         if (uartreg == 0x01)
 893  0038 7b01          	ld	a,(OFST-1,sp)
 894  003a a101          	cp	a,#1
 895  003c 260b          	jrne	L123
 896                     ; 239             UART1->CR1 &= (uint8_t)(~itpos);
 898  003e 7b02          	ld	a,(OFST+0,sp)
 899  0040 43            	cpl	a
 900  0041 c45234        	and	a,21044
 901  0044               LC002:
 902  0044 c75234        	ld	21044,a
 904  0047 2018          	jra	L713
 905  0049               L123:
 906                     ; 241         else if (uartreg == 0x02)
 908  0049 a102          	cp	a,#2
 909  004b 260b          	jrne	L523
 910                     ; 243             UART1->CR2 &= (uint8_t)(~itpos);
 912  004d 7b02          	ld	a,(OFST+0,sp)
 913  004f 43            	cpl	a
 914  0050 c45235        	and	a,21045
 915  0053               LC003:
 916  0053 c75235        	ld	21045,a
 918  0056 2009          	jra	L713
 919  0058               L523:
 920                     ; 247             UART1->CR4 &= (uint8_t)(~itpos);
 922  0058 7b02          	ld	a,(OFST+0,sp)
 923  005a 43            	cpl	a
 924  005b c45237        	and	a,21047
 925  005e               LC001:
 926  005e c75237        	ld	21047,a
 927  0061               L713:
 928                     ; 251 }
 931  0061 5b04          	addw	sp,#4
 932  0063 81            	ret	
 968                     ; 258 void UART1_HalfDuplexCmd(FunctionalState NewState)
 968                     ; 259 {
 969                     .text:	section	.text,new
 970  0000               _UART1_HalfDuplexCmd:
 974                     ; 260     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 976                     ; 262     if (NewState != DISABLE)
 978  0000 4d            	tnz	a
 979  0001 2705          	jreq	L743
 980                     ; 264         UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
 982  0003 72165238      	bset	21048,#3
 985  0007 81            	ret	
 986  0008               L743:
 987                     ; 268         UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
 989  0008 72175238      	bres	21048,#3
 990                     ; 270 }
 993  000c 81            	ret	
1050                     ; 278 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1050                     ; 279 {
1051                     .text:	section	.text,new
1052  0000               _UART1_IrDAConfig:
1056                     ; 280     assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1058                     ; 282     if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1060  0000 4d            	tnz	a
1061  0001 2705          	jreq	L104
1062                     ; 284         UART1->CR5 |= UART1_CR5_IRLP;
1064  0003 72145238      	bset	21048,#2
1067  0007 81            	ret	
1068  0008               L104:
1069                     ; 288         UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1071  0008 72155238      	bres	21048,#2
1072                     ; 290 }
1075  000c 81            	ret	
1110                     ; 298 void UART1_IrDACmd(FunctionalState NewState)
1110                     ; 299 {
1111                     .text:	section	.text,new
1112  0000               _UART1_IrDACmd:
1116                     ; 302     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1118                     ; 304     if (NewState != DISABLE)
1120  0000 4d            	tnz	a
1121  0001 2705          	jreq	L324
1122                     ; 307         UART1->CR5 |= UART1_CR5_IREN;
1124  0003 72125238      	bset	21048,#1
1127  0007 81            	ret	
1128  0008               L324:
1129                     ; 312         UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1131  0008 72135238      	bres	21048,#1
1132                     ; 314 }
1135  000c 81            	ret	
1194                     ; 323 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1194                     ; 324 {
1195                     .text:	section	.text,new
1196  0000               _UART1_LINBreakDetectionConfig:
1200                     ; 325     assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1202                     ; 327     if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1204  0000 4d            	tnz	a
1205  0001 2705          	jreq	L554
1206                     ; 329         UART1->CR4 |= UART1_CR4_LBDL;
1208  0003 721a5237      	bset	21047,#5
1211  0007 81            	ret	
1212  0008               L554:
1213                     ; 333         UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1215  0008 721b5237      	bres	21047,#5
1216                     ; 335 }
1219  000c 81            	ret	
1254                     ; 343 void UART1_LINCmd(FunctionalState NewState)
1254                     ; 344 {
1255                     .text:	section	.text,new
1256  0000               _UART1_LINCmd:
1260                     ; 345     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1262                     ; 347     if (NewState != DISABLE)
1264  0000 4d            	tnz	a
1265  0001 2705          	jreq	L774
1266                     ; 350         UART1->CR3 |= UART1_CR3_LINEN;
1268  0003 721c5236      	bset	21046,#6
1271  0007 81            	ret	
1272  0008               L774:
1273                     ; 355         UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1275  0008 721d5236      	bres	21046,#6
1276                     ; 357 }
1279  000c 81            	ret	
1314                     ; 364 void UART1_SmartCardCmd(FunctionalState NewState)
1314                     ; 365 {
1315                     .text:	section	.text,new
1316  0000               _UART1_SmartCardCmd:
1320                     ; 366     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1322                     ; 368     if (NewState != DISABLE)
1324  0000 4d            	tnz	a
1325  0001 2705          	jreq	L125
1326                     ; 371         UART1->CR5 |= UART1_CR5_SCEN;
1328  0003 721a5238      	bset	21048,#5
1331  0007 81            	ret	
1332  0008               L125:
1333                     ; 376         UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1335  0008 721b5238      	bres	21048,#5
1336                     ; 378 }
1339  000c 81            	ret	
1375                     ; 387 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1375                     ; 388 {
1376                     .text:	section	.text,new
1377  0000               _UART1_SmartCardNACKCmd:
1381                     ; 389     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1383                     ; 391     if (NewState != DISABLE)
1385  0000 4d            	tnz	a
1386  0001 2705          	jreq	L345
1387                     ; 394         UART1->CR5 |= UART1_CR5_NACK;
1389  0003 72185238      	bset	21048,#4
1392  0007 81            	ret	
1393  0008               L345:
1394                     ; 399         UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1396  0008 72195238      	bres	21048,#4
1397                     ; 401 }
1400  000c 81            	ret	
1457                     ; 409 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1457                     ; 410 {
1458                     .text:	section	.text,new
1459  0000               _UART1_WakeUpConfig:
1463                     ; 411     assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1465                     ; 413     UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1467  0000 72175234      	bres	21044,#3
1468                     ; 414     UART1->CR1 |= (uint8_t)UART1_WakeUp;
1470  0004 ca5234        	or	a,21044
1471  0007 c75234        	ld	21044,a
1472                     ; 415 }
1475  000a 81            	ret	
1511                     ; 422 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1511                     ; 423 {
1512                     .text:	section	.text,new
1513  0000               _UART1_ReceiverWakeUpCmd:
1517                     ; 424     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1519                     ; 426     if (NewState != DISABLE)
1521  0000 4d            	tnz	a
1522  0001 2705          	jreq	L316
1523                     ; 429         UART1->CR2 |= UART1_CR2_RWU;
1525  0003 72125235      	bset	21045,#1
1528  0007 81            	ret	
1529  0008               L316:
1530                     ; 434         UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1532  0008 72135235      	bres	21045,#1
1533                     ; 436 }
1536  000c 81            	ret	
1559                     ; 443 uint8_t UART1_ReceiveData8(void)
1559                     ; 444 {
1560                     .text:	section	.text,new
1561  0000               _UART1_ReceiveData8:
1565                     ; 445     return ((uint8_t)UART1->DR);
1567  0000 c65231        	ld	a,21041
1570  0003 81            	ret	
1602                     ; 453 uint16_t UART1_ReceiveData9(void)
1602                     ; 454 {
1603                     .text:	section	.text,new
1604  0000               _UART1_ReceiveData9:
1606  0000 89            	pushw	x
1607       00000002      OFST:	set	2
1610                     ; 455   uint16_t temp = 0;
1612                     ; 457   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1614  0001 c65234        	ld	a,21044
1615  0004 a480          	and	a,#128
1616  0006 5f            	clrw	x
1617  0007 02            	rlwa	x,a
1618  0008 58            	sllw	x
1619  0009 1f01          	ldw	(OFST-1,sp),x
1620                     ; 458   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1622  000b 5f            	clrw	x
1623  000c c65231        	ld	a,21041
1624  000f 97            	ld	xl,a
1625  0010 01            	rrwa	x,a
1626  0011 1a02          	or	a,(OFST+0,sp)
1627  0013 01            	rrwa	x,a
1628  0014 1a01          	or	a,(OFST-1,sp)
1629  0016 a401          	and	a,#1
1630  0018 01            	rrwa	x,a
1633  0019 5b02          	addw	sp,#2
1634  001b 81            	ret	
1666                     ; 466 void UART1_SendData8(uint8_t Data)
1666                     ; 467 {
1667                     .text:	section	.text,new
1668  0000               _UART1_SendData8:
1672                     ; 469     UART1->DR = Data;
1674  0000 c75231        	ld	21041,a
1675                     ; 470 }
1678  0003 81            	ret	
1710                     ; 478 void UART1_SendData9(uint16_t Data)
1710                     ; 479 {
1711                     .text:	section	.text,new
1712  0000               _UART1_SendData9:
1714  0000 89            	pushw	x
1715       00000000      OFST:	set	0
1718                     ; 481     UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1720  0001 721d5234      	bres	21044,#6
1721                     ; 483     UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1723  0005 54            	srlw	x
1724  0006 54            	srlw	x
1725  0007 9f            	ld	a,xl
1726  0008 a440          	and	a,#64
1727  000a ca5234        	or	a,21044
1728  000d c75234        	ld	21044,a
1729                     ; 485     UART1->DR   = (uint8_t)(Data);
1731  0010 7b02          	ld	a,(OFST+2,sp)
1732  0012 c75231        	ld	21041,a
1733                     ; 486 }
1736  0015 85            	popw	x
1737  0016 81            	ret	
1760                     ; 493 void UART1_SendBreak(void)
1760                     ; 494 {
1761                     .text:	section	.text,new
1762  0000               _UART1_SendBreak:
1766                     ; 495     UART1->CR2 |= UART1_CR2_SBK;
1768  0000 72105235      	bset	21045,#0
1769                     ; 496 }
1772  0004 81            	ret	
1804                     ; 503 void UART1_SetAddress(uint8_t UART1_Address)
1804                     ; 504 {
1805                     .text:	section	.text,new
1806  0000               _UART1_SetAddress:
1808  0000 88            	push	a
1809       00000000      OFST:	set	0
1812                     ; 506     assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
1814                     ; 509     UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
1816  0001 c65237        	ld	a,21047
1817  0004 a4f0          	and	a,#240
1818  0006 c75237        	ld	21047,a
1819                     ; 511     UART1->CR4 |= UART1_Address;
1821  0009 c65237        	ld	a,21047
1822  000c 1a01          	or	a,(OFST+1,sp)
1823  000e c75237        	ld	21047,a
1824                     ; 512 }
1827  0011 84            	pop	a
1828  0012 81            	ret	
1860                     ; 520 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
1860                     ; 521 {
1861                     .text:	section	.text,new
1862  0000               _UART1_SetGuardTime:
1866                     ; 523     UART1->GTR = UART1_GuardTime;
1868  0000 c75239        	ld	21049,a
1869                     ; 524 }
1872  0003 81            	ret	
1904                     ; 548 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
1904                     ; 549 {
1905                     .text:	section	.text,new
1906  0000               _UART1_SetPrescaler:
1910                     ; 551     UART1->PSCR = UART1_Prescaler;
1912  0000 c7523a        	ld	21050,a
1913                     ; 552 }
1916  0003 81            	ret	
2059                     ; 560 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2059                     ; 561 {
2060                     .text:	section	.text,new
2061  0000               _UART1_GetFlagStatus:
2063  0000 89            	pushw	x
2064  0001 88            	push	a
2065       00000001      OFST:	set	1
2068                     ; 562     FlagStatus status = RESET;
2070                     ; 565     assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2072                     ; 569     if (UART1_FLAG == UART1_FLAG_LBDF)
2074  0002 a30210        	cpw	x,#528
2075  0005 2608          	jrne	L1301
2076                     ; 571         if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2078  0007 9f            	ld	a,xl
2079  0008 c45237        	and	a,21047
2080  000b 271e          	jreq	L7301
2081                     ; 574             status = SET;
2083  000d 2017          	jp	LC006
2084                     ; 579             status = RESET;
2085  000f               L1301:
2086                     ; 582     else if (UART1_FLAG == UART1_FLAG_SBK)
2088  000f 1e02          	ldw	x,(OFST+1,sp)
2089  0011 a30101        	cpw	x,#257
2090  0014 2609          	jrne	L1401
2091                     ; 584         if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2093  0016 c65235        	ld	a,21045
2094  0019 1503          	bcp	a,(OFST+2,sp)
2095  001b 270d          	jreq	L1501
2096                     ; 587             status = SET;
2098  001d 2007          	jp	LC006
2099                     ; 592             status = RESET;
2100  001f               L1401:
2101                     ; 597         if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2103  001f c65230        	ld	a,21040
2104  0022 1503          	bcp	a,(OFST+2,sp)
2105  0024 2704          	jreq	L1501
2106                     ; 600             status = SET;
2108  0026               LC006:
2111  0026 a601          	ld	a,#1
2114  0028 2001          	jra	L7301
2115  002a               L1501:
2116                     ; 605             status = RESET;
2119  002a 4f            	clr	a
2120  002b               L7301:
2121                     ; 609     return status;
2125  002b 5b03          	addw	sp,#3
2126  002d 81            	ret	
2161                     ; 639 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2161                     ; 640 {
2162                     .text:	section	.text,new
2163  0000               _UART1_ClearFlag:
2167                     ; 641     assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2169                     ; 644     if (UART1_FLAG == UART1_FLAG_RXNE)
2171  0000 a30020        	cpw	x,#32
2172  0003 2605          	jrne	L3701
2173                     ; 646         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2175  0005 35df5230      	mov	21040,#223
2178  0009 81            	ret	
2179  000a               L3701:
2180                     ; 651         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2182  000a 72195237      	bres	21047,#4
2183                     ; 653 }
2186  000e 81            	ret	
2260                     ; 668 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2260                     ; 669 {
2261                     .text:	section	.text,new
2262  0000               _UART1_GetITStatus:
2264  0000 89            	pushw	x
2265  0001 89            	pushw	x
2266       00000002      OFST:	set	2
2269                     ; 670     ITStatus pendingbitstatus = RESET;
2271                     ; 671     uint8_t itpos = 0;
2273                     ; 672     uint8_t itmask1 = 0;
2275                     ; 673     uint8_t itmask2 = 0;
2277                     ; 674     uint8_t enablestatus = 0;
2279                     ; 677     assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2281                     ; 680     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2283  0002 9f            	ld	a,xl
2284  0003 a40f          	and	a,#15
2285  0005 5f            	clrw	x
2286  0006 97            	ld	xl,a
2287  0007 a601          	ld	a,#1
2288  0009 5d            	tnzw	x
2289  000a 2704          	jreq	L67
2290  000c               L001:
2291  000c 48            	sll	a
2292  000d 5a            	decw	x
2293  000e 26fc          	jrne	L001
2294  0010               L67:
2295  0010 6b01          	ld	(OFST-1,sp),a
2296                     ; 682     itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2298  0012 7b04          	ld	a,(OFST+2,sp)
2299  0014 4e            	swap	a
2300  0015 a40f          	and	a,#15
2301  0017 6b02          	ld	(OFST+0,sp),a
2302                     ; 684     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2304  0019 5f            	clrw	x
2305  001a 97            	ld	xl,a
2306  001b a601          	ld	a,#1
2307  001d 5d            	tnzw	x
2308  001e 2704          	jreq	L201
2309  0020               L401:
2310  0020 48            	sll	a
2311  0021 5a            	decw	x
2312  0022 26fc          	jrne	L401
2313  0024               L201:
2314  0024 6b02          	ld	(OFST+0,sp),a
2315                     ; 688     if (UART1_IT == UART1_IT_PE)
2317  0026 1e03          	ldw	x,(OFST+1,sp)
2318  0028 a30100        	cpw	x,#256
2319  002b 260c          	jrne	L1311
2320                     ; 691         enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2322  002d c65234        	ld	a,21044
2323  0030 1402          	and	a,(OFST+0,sp)
2324  0032 6b02          	ld	(OFST+0,sp),a
2325                     ; 694         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2327  0034 c65230        	ld	a,21040
2329                     ; 697             pendingbitstatus = SET;
2331  0037 200f          	jp	LC009
2332                     ; 702             pendingbitstatus = RESET;
2333  0039               L1311:
2334                     ; 706     else if (UART1_IT == UART1_IT_LBDF)
2336  0039 a30346        	cpw	x,#838
2337  003c 2616          	jrne	L1411
2338                     ; 709         enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2340  003e c65237        	ld	a,21047
2341  0041 1402          	and	a,(OFST+0,sp)
2342  0043 6b02          	ld	(OFST+0,sp),a
2343                     ; 711         if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2345  0045 c65237        	ld	a,21047
2347  0048               LC009:
2348  0048 1501          	bcp	a,(OFST-1,sp)
2349  004a 271a          	jreq	L1511
2350  004c 7b02          	ld	a,(OFST+0,sp)
2351  004e 2716          	jreq	L1511
2352                     ; 714             pendingbitstatus = SET;
2354  0050               LC008:
2357  0050 a601          	ld	a,#1
2359  0052 2013          	jra	L7311
2360                     ; 719             pendingbitstatus = RESET;
2361  0054               L1411:
2362                     ; 725         enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2364  0054 c65235        	ld	a,21045
2365  0057 1402          	and	a,(OFST+0,sp)
2366  0059 6b02          	ld	(OFST+0,sp),a
2367                     ; 727         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2369  005b c65230        	ld	a,21040
2370  005e 1501          	bcp	a,(OFST-1,sp)
2371  0060 2704          	jreq	L1511
2373  0062 7b02          	ld	a,(OFST+0,sp)
2374                     ; 730             pendingbitstatus = SET;
2376  0064 26ea          	jrne	LC008
2377  0066               L1511:
2378                     ; 735             pendingbitstatus = RESET;
2382  0066 4f            	clr	a
2383  0067               L7311:
2384                     ; 740     return  pendingbitstatus;
2388  0067 5b04          	addw	sp,#4
2389  0069 81            	ret	
2425                     ; 768 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2425                     ; 769 {
2426                     .text:	section	.text,new
2427  0000               _UART1_ClearITPendingBit:
2431                     ; 770     assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2433                     ; 773     if (UART1_IT == UART1_IT_RXNE)
2435  0000 a30255        	cpw	x,#597
2436  0003 2605          	jrne	L3711
2437                     ; 775         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2439  0005 35df5230      	mov	21040,#223
2442  0009 81            	ret	
2443  000a               L3711:
2444                     ; 780         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2446  000a 72195237      	bres	21047,#4
2447                     ; 782 }
2450  000e 81            	ret	
2463                     	xdef	_UART1_ClearITPendingBit
2464                     	xdef	_UART1_GetITStatus
2465                     	xdef	_UART1_ClearFlag
2466                     	xdef	_UART1_GetFlagStatus
2467                     	xdef	_UART1_SetPrescaler
2468                     	xdef	_UART1_SetGuardTime
2469                     	xdef	_UART1_SetAddress
2470                     	xdef	_UART1_SendBreak
2471                     	xdef	_UART1_SendData9
2472                     	xdef	_UART1_SendData8
2473                     	xdef	_UART1_ReceiveData9
2474                     	xdef	_UART1_ReceiveData8
2475                     	xdef	_UART1_ReceiverWakeUpCmd
2476                     	xdef	_UART1_WakeUpConfig
2477                     	xdef	_UART1_SmartCardNACKCmd
2478                     	xdef	_UART1_SmartCardCmd
2479                     	xdef	_UART1_LINCmd
2480                     	xdef	_UART1_LINBreakDetectionConfig
2481                     	xdef	_UART1_IrDACmd
2482                     	xdef	_UART1_IrDAConfig
2483                     	xdef	_UART1_HalfDuplexCmd
2484                     	xdef	_UART1_ITConfig
2485                     	xdef	_UART1_Cmd
2486                     	xdef	_UART1_Init
2487                     	xdef	_UART1_DeInit
2488                     	xref	_CLK_GetClockFreq
2489                     	xref.b	c_lreg
2490                     	xref.b	c_x
2509                     	xref	c_lursh
2510                     	xref	c_lsub
2511                     	xref	c_smul
2512                     	xref	c_ludv
2513                     	xref	c_llsh
2514                     	end
