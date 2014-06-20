   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  20                     .const:	section	.text
  21  0000               _HSIDivFactor:
  22  0000 01            	dc.b	1
  23  0001 02            	dc.b	2
  24  0002 04            	dc.b	4
  25  0003 08            	dc.b	8
  26  0004               _CLKPrescTable:
  27  0004 01            	dc.b	1
  28  0005 02            	dc.b	2
  29  0006 04            	dc.b	4
  30  0007 08            	dc.b	8
  31  0008 0a            	dc.b	10
  32  0009 10            	dc.b	16
  33  000a 14            	dc.b	20
  34  000b 28            	dc.b	40
  63                     ; 66 void CLK_DeInit(void)
  63                     ; 67 {
  65                     .text:	section	.text,new
  66  0000               _CLK_DeInit:
  70                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  72  0000 350150c0      	mov	20672,#1
  73                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  75  0004 725f50c1      	clr	20673
  76                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  78  0008 35e150c4      	mov	20676,#225
  79                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  81  000c 725f50c5      	clr	20677
  82                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  84  0010 351850c6      	mov	20678,#24
  85                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  87  0014 35ff50c7      	mov	20679,#255
  88                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  90  0018 35ff50ca      	mov	20682,#255
  91                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  93  001c 725f50c8      	clr	20680
  94                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  96  0020 725f50c9      	clr	20681
  98  0024               L52:
  99                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 101  0024 720050c9fb    	btjt	20681,#0,L52
 102                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 104  0029 725f50c9      	clr	20681
 105                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 107  002d 725f50cc      	clr	20684
 108                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 110  0031 725f50cd      	clr	20685
 111                     ; 84 }
 114  0035 81            	ret	
 170                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 170                     ; 96 {
 171                     .text:	section	.text,new
 172  0000               _CLK_FastHaltWakeUpCmd:
 176                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 178                     ; 101     if (NewState != DISABLE)
 180  0000 4d            	tnz	a
 181  0001 2705          	jreq	L75
 182                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 184  0003 721450c0      	bset	20672,#2
 187  0007 81            	ret	
 188  0008               L75:
 189                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 191  0008 721550c0      	bres	20672,#2
 192                     ; 112 }
 195  000c 81            	ret	
 230                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 230                     ; 120 {
 231                     .text:	section	.text,new
 232  0000               _CLK_HSECmd:
 236                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 238                     ; 125     if (NewState != DISABLE)
 240  0000 4d            	tnz	a
 241  0001 2705          	jreq	L101
 242                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 244  0003 721050c1      	bset	20673,#0
 247  0007 81            	ret	
 248  0008               L101:
 249                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 251  0008 721150c1      	bres	20673,#0
 252                     ; 136 }
 255  000c 81            	ret	
 290                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 290                     ; 144 {
 291                     .text:	section	.text,new
 292  0000               _CLK_HSICmd:
 296                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 298                     ; 149     if (NewState != DISABLE)
 300  0000 4d            	tnz	a
 301  0001 2705          	jreq	L321
 302                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 304  0003 721050c0      	bset	20672,#0
 307  0007 81            	ret	
 308  0008               L321:
 309                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 311  0008 721150c0      	bres	20672,#0
 312                     ; 160 }
 315  000c 81            	ret	
 350                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 350                     ; 168 {
 351                     .text:	section	.text,new
 352  0000               _CLK_LSICmd:
 356                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 358                     ; 173     if (NewState != DISABLE)
 360  0000 4d            	tnz	a
 361  0001 2705          	jreq	L541
 362                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 364  0003 721650c0      	bset	20672,#3
 367  0007 81            	ret	
 368  0008               L541:
 369                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 371  0008 721750c0      	bres	20672,#3
 372                     ; 184 }
 375  000c 81            	ret	
 410                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 410                     ; 193 {
 411                     .text:	section	.text,new
 412  0000               _CLK_CCOCmd:
 416                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 418                     ; 198     if (NewState != DISABLE)
 420  0000 4d            	tnz	a
 421  0001 2705          	jreq	L761
 422                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 424  0003 721050c9      	bset	20681,#0
 427  0007 81            	ret	
 428  0008               L761:
 429                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 431  0008 721150c9      	bres	20681,#0
 432                     ; 209 }
 435  000c 81            	ret	
 470                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 470                     ; 219 {
 471                     .text:	section	.text,new
 472  0000               _CLK_ClockSwitchCmd:
 476                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 478                     ; 224     if (NewState != DISABLE )
 480  0000 4d            	tnz	a
 481  0001 2705          	jreq	L112
 482                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 484  0003 721250c5      	bset	20677,#1
 487  0007 81            	ret	
 488  0008               L112:
 489                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 491  0008 721350c5      	bres	20677,#1
 492                     ; 235 }
 495  000c 81            	ret	
 531                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 531                     ; 246 {
 532                     .text:	section	.text,new
 533  0000               _CLK_SlowActiveHaltWakeUpCmd:
 537                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 539                     ; 251     if (NewState != DISABLE)
 541  0000 4d            	tnz	a
 542  0001 2705          	jreq	L332
 543                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 545  0003 721a50c0      	bset	20672,#5
 548  0007 81            	ret	
 549  0008               L332:
 550                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 552  0008 721b50c0      	bres	20672,#5
 553                     ; 262 }
 556  000c 81            	ret	
 715                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 715                     ; 273 {
 716                     .text:	section	.text,new
 717  0000               _CLK_PeripheralClockConfig:
 719  0000 89            	pushw	x
 720       00000000      OFST:	set	0
 723                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 725                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 727                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 729  0001 9e            	ld	a,xh
 730  0002 a510          	bcp	a,#16
 731  0004 2630          	jrne	L123
 732                     ; 281         if (NewState != DISABLE)
 734  0006 7b02          	ld	a,(OFST+2,sp)
 735  0008 2714          	jreq	L323
 736                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 738  000a 7b01          	ld	a,(OFST+1,sp)
 739  000c a40f          	and	a,#15
 740  000e 5f            	clrw	x
 741  000f 97            	ld	xl,a
 742  0010 a601          	ld	a,#1
 743  0012 5d            	tnzw	x
 744  0013 2704          	jreq	L62
 745  0015               L03:
 746  0015 48            	sll	a
 747  0016 5a            	decw	x
 748  0017 26fc          	jrne	L03
 749  0019               L62:
 750  0019 ca50c7        	or	a,20679
 752  001c 2013          	jp	LC002
 753  001e               L323:
 754                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 756  001e 7b01          	ld	a,(OFST+1,sp)
 757  0020 a40f          	and	a,#15
 758  0022 5f            	clrw	x
 759  0023 97            	ld	xl,a
 760  0024 a601          	ld	a,#1
 761  0026 5d            	tnzw	x
 762  0027 2704          	jreq	L23
 763  0029               L43:
 764  0029 48            	sll	a
 765  002a 5a            	decw	x
 766  002b 26fc          	jrne	L43
 767  002d               L23:
 768  002d 43            	cpl	a
 769  002e c450c7        	and	a,20679
 770  0031               LC002:
 771  0031 c750c7        	ld	20679,a
 772  0034 202e          	jra	L723
 773  0036               L123:
 774                     ; 294         if (NewState != DISABLE)
 776  0036 7b02          	ld	a,(OFST+2,sp)
 777  0038 2714          	jreq	L133
 778                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 780  003a 7b01          	ld	a,(OFST+1,sp)
 781  003c a40f          	and	a,#15
 782  003e 5f            	clrw	x
 783  003f 97            	ld	xl,a
 784  0040 a601          	ld	a,#1
 785  0042 5d            	tnzw	x
 786  0043 2704          	jreq	L63
 787  0045               L04:
 788  0045 48            	sll	a
 789  0046 5a            	decw	x
 790  0047 26fc          	jrne	L04
 791  0049               L63:
 792  0049 ca50ca        	or	a,20682
 794  004c 2013          	jp	LC001
 795  004e               L133:
 796                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 798  004e 7b01          	ld	a,(OFST+1,sp)
 799  0050 a40f          	and	a,#15
 800  0052 5f            	clrw	x
 801  0053 97            	ld	xl,a
 802  0054 a601          	ld	a,#1
 803  0056 5d            	tnzw	x
 804  0057 2704          	jreq	L24
 805  0059               L44:
 806  0059 48            	sll	a
 807  005a 5a            	decw	x
 808  005b 26fc          	jrne	L44
 809  005d               L24:
 810  005d 43            	cpl	a
 811  005e c450ca        	and	a,20682
 812  0061               LC001:
 813  0061 c750ca        	ld	20682,a
 814  0064               L723:
 815                     ; 306 }
 818  0064 85            	popw	x
 819  0065 81            	ret	
1005                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1005                     ; 320 {
1006                     .text:	section	.text,new
1007  0000               _CLK_ClockSwitchConfig:
1009  0000 89            	pushw	x
1010  0001 5204          	subw	sp,#4
1011       00000004      OFST:	set	4
1014                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1016  0003 ae0491        	ldw	x,#1169
1017  0006 1f03          	ldw	(OFST-1,sp),x
1018                     ; 324     ErrorStatus Swif = ERROR;
1020                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1022                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1024                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1026                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1028                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1030  0008 c650c3        	ld	a,20675
1031  000b 6b01          	ld	(OFST-3,sp),a
1032                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1034  000d 7b05          	ld	a,(OFST+1,sp)
1035  000f 4a            	dec	a
1036  0010 262d          	jrne	L344
1037                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1039  0012 721250c5      	bset	20677,#1
1040                     ; 343         if (ITState != DISABLE)
1042  0016 7b09          	ld	a,(OFST+5,sp)
1043  0018 2706          	jreq	L544
1044                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1046  001a 721450c5      	bset	20677,#2
1048  001e 2004          	jra	L744
1049  0020               L544:
1050                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1052  0020 721550c5      	bres	20677,#2
1053  0024               L744:
1054                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1056  0024 7b06          	ld	a,(OFST+2,sp)
1057  0026 c750c4        	ld	20676,a
1059  0029 2003          	jra	L554
1060  002b               L154:
1061                     ; 357             DownCounter--;
1063  002b 5a            	decw	x
1064  002c 1f03          	ldw	(OFST-1,sp),x
1065  002e               L554:
1066                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1068  002e 720150c504    	btjf	20677,#0,L164
1070  0033 1e03          	ldw	x,(OFST-1,sp)
1071  0035 26f4          	jrne	L154
1072  0037               L164:
1073                     ; 360         if (DownCounter != 0)
1075  0037 1e03          	ldw	x,(OFST-1,sp)
1076                     ; 362             Swif = SUCCESS;
1078  0039 2617          	jrne	LC003
1079                     ; 366             Swif = ERROR;
1081  003b 0f02          	clr	(OFST-2,sp)
1082  003d 2017          	jra	L764
1083  003f               L344:
1084                     ; 374         if (ITState != DISABLE)
1086  003f 7b09          	ld	a,(OFST+5,sp)
1087  0041 2706          	jreq	L174
1088                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1090  0043 721450c5      	bset	20677,#2
1092  0047 2004          	jra	L374
1093  0049               L174:
1094                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1096  0049 721550c5      	bres	20677,#2
1097  004d               L374:
1098                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1100  004d 7b06          	ld	a,(OFST+2,sp)
1101  004f c750c4        	ld	20676,a
1102                     ; 388         Swif = SUCCESS;
1104  0052               LC003:
1106  0052 a601          	ld	a,#1
1107  0054 6b02          	ld	(OFST-2,sp),a
1108  0056               L764:
1109                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1111  0056 7b0a          	ld	a,(OFST+6,sp)
1112  0058 260c          	jrne	L574
1114  005a 7b01          	ld	a,(OFST-3,sp)
1115  005c a1e1          	cp	a,#225
1116  005e 2606          	jrne	L574
1117                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1119  0060 721150c0      	bres	20672,#0
1121  0064 201e          	jra	L774
1122  0066               L574:
1123                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1125  0066 7b0a          	ld	a,(OFST+6,sp)
1126  0068 260c          	jrne	L105
1128  006a 7b01          	ld	a,(OFST-3,sp)
1129  006c a1d2          	cp	a,#210
1130  006e 2606          	jrne	L105
1131                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1133  0070 721750c0      	bres	20672,#3
1135  0074 200e          	jra	L774
1136  0076               L105:
1137                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1139  0076 7b0a          	ld	a,(OFST+6,sp)
1140  0078 260a          	jrne	L774
1142  007a 7b01          	ld	a,(OFST-3,sp)
1143  007c a1b4          	cp	a,#180
1144  007e 2604          	jrne	L774
1145                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1147  0080 721150c1      	bres	20673,#0
1148  0084               L774:
1149                     ; 406     return(Swif);
1151  0084 7b02          	ld	a,(OFST-2,sp)
1154  0086 5b06          	addw	sp,#6
1155  0088 81            	ret	
1293                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1293                     ; 417 {
1294                     .text:	section	.text,new
1295  0000               _CLK_HSIPrescalerConfig:
1297  0000 88            	push	a
1298       00000000      OFST:	set	0
1301                     ; 419     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1303                     ; 422     CLK->CKDIVR = (uint8_t)((CLK->CKDIVR & (uint8_t)(~CLK_CKDIVR_HSIDIV)) | (uint8_t) HSIPrescaler);
1305  0001 c650c6        	ld	a,20678
1306  0004 a4e7          	and	a,#231
1307  0006 1a01          	or	a,(OFST+1,sp)
1308  0008 c750c6        	ld	20678,a
1309                     ; 423 }
1312  000b 84            	pop	a
1313  000c 81            	ret	
1448                     ; 434 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1448                     ; 435 {
1449                     .text:	section	.text,new
1450  0000               _CLK_CCOConfig:
1452  0000 88            	push	a
1453       00000000      OFST:	set	0
1456                     ; 438     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1458                     ; 441     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1460  0001 c650c9        	ld	a,20681
1461  0004 a4e1          	and	a,#225
1462  0006 c750c9        	ld	20681,a
1463                     ; 444     CLK->CCOR |= (uint8_t)CLK_CCO;
1465  0009 c650c9        	ld	a,20681
1466  000c 1a01          	or	a,(OFST+1,sp)
1467  000e c750c9        	ld	20681,a
1468                     ; 447     CLK->CCOR |= CLK_CCOR_CCOEN;
1470                     ; 449 }
1473  0011 84            	pop	a
1474  0012 721050c9      	bset	20681,#0
1475  0016 81            	ret	
1540                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1540                     ; 460 {
1541                     .text:	section	.text,new
1542  0000               _CLK_ITConfig:
1544  0000 89            	pushw	x
1545       00000000      OFST:	set	0
1548                     ; 463     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1550                     ; 464     assert_param(IS_CLK_IT_OK(CLK_IT));
1552                     ; 466     if (NewState != DISABLE)
1554  0001 9f            	ld	a,xl
1555  0002 4d            	tnz	a
1556  0003 2715          	jreq	L307
1557                     ; 468         switch (CLK_IT)
1559  0005 9e            	ld	a,xh
1561                     ; 476         default:
1561                     ; 477             break;
1562  0006 a00c          	sub	a,#12
1563  0008 270a          	jreq	L736
1564  000a a010          	sub	a,#16
1565  000c 2620          	jrne	L117
1566                     ; 470         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1566                     ; 471             CLK->SWCR |= CLK_SWCR_SWIEN;
1568  000e 721450c5      	bset	20677,#2
1569                     ; 472             break;
1571  0012 201a          	jra	L117
1572  0014               L736:
1573                     ; 473         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1573                     ; 474             CLK->CSSR |= CLK_CSSR_CSSDIE;
1575  0014 721450c8      	bset	20680,#2
1576                     ; 475             break;
1578  0018 2014          	jra	L117
1579                     ; 476         default:
1579                     ; 477             break;
1582  001a               L307:
1583                     ; 482         switch (CLK_IT)
1585  001a 7b01          	ld	a,(OFST+1,sp)
1587                     ; 490         default:
1587                     ; 491             break;
1588  001c a00c          	sub	a,#12
1589  001e 270a          	jreq	L546
1590  0020 a010          	sub	a,#16
1591  0022 260a          	jrne	L117
1592                     ; 484         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1592                     ; 485             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1594  0024 721550c5      	bres	20677,#2
1595                     ; 486             break;
1597  0028 2004          	jra	L117
1598  002a               L546:
1599                     ; 487         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1599                     ; 488             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1601  002a 721550c8      	bres	20680,#2
1602                     ; 489             break;
1603  002e               L117:
1604                     ; 495 }
1607  002e 85            	popw	x
1608  002f 81            	ret	
1609                     ; 490         default:
1609                     ; 491             break;
1645                     ; 502 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1645                     ; 503 {
1646                     .text:	section	.text,new
1647  0000               _CLK_SYSCLKConfig:
1649  0000 88            	push	a
1650       00000000      OFST:	set	0
1653                     ; 506     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1655                     ; 508     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1657  0001 a580          	bcp	a,#128
1658  0003 260e          	jrne	L537
1659                     ; 510         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1661  0005 c650c6        	ld	a,20678
1662  0008 a4e7          	and	a,#231
1663  000a c750c6        	ld	20678,a
1664                     ; 511         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1666  000d 7b01          	ld	a,(OFST+1,sp)
1667  000f a418          	and	a,#24
1669  0011 200c          	jra	L737
1670  0013               L537:
1671                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1673  0013 c650c6        	ld	a,20678
1674  0016 a4f8          	and	a,#248
1675  0018 c750c6        	ld	20678,a
1676                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1678  001b 7b01          	ld	a,(OFST+1,sp)
1679  001d a407          	and	a,#7
1680  001f               L737:
1681  001f ca50c6        	or	a,20678
1682  0022 c750c6        	ld	20678,a
1683                     ; 519 }
1686  0025 84            	pop	a
1687  0026 81            	ret	
1743                     ; 526 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1743                     ; 527 {
1744                     .text:	section	.text,new
1745  0000               _CLK_SWIMConfig:
1749                     ; 530     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1751                     ; 532     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1753  0000 4d            	tnz	a
1754  0001 2705          	jreq	L767
1755                     ; 535         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1757  0003 721050cd      	bset	20685,#0
1760  0007 81            	ret	
1761  0008               L767:
1762                     ; 540         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1764  0008 721150cd      	bres	20685,#0
1765                     ; 543 }
1768  000c 81            	ret	
1792                     ; 552 void CLK_ClockSecuritySystemEnable(void)
1792                     ; 553 {
1793                     .text:	section	.text,new
1794  0000               _CLK_ClockSecuritySystemEnable:
1798                     ; 555     CLK->CSSR |= CLK_CSSR_CSSEN;
1800  0000 721050c8      	bset	20680,#0
1801                     ; 556 }
1804  0004 81            	ret	
1829                     ; 564 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1829                     ; 565 {
1830                     .text:	section	.text,new
1831  0000               _CLK_GetSYSCLKSource:
1835                     ; 566     return((CLK_Source_TypeDef)CLK->CMSR);
1837  0000 c650c3        	ld	a,20675
1840  0003 81            	ret	
1897                     ; 574 uint32_t CLK_GetClockFreq(void)
1897                     ; 575 {
1898                     .text:	section	.text,new
1899  0000               _CLK_GetClockFreq:
1901  0000 5209          	subw	sp,#9
1902       00000009      OFST:	set	9
1905                     ; 577     uint32_t clockfrequency = 0;
1907                     ; 578     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1909                     ; 579     uint8_t tmp = 0, presc = 0;
1913                     ; 582     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1915  0002 c650c3        	ld	a,20675
1916  0005 6b09          	ld	(OFST+0,sp),a
1917                     ; 584     if (clocksource == CLK_SOURCE_HSI)
1919  0007 a1e1          	cp	a,#225
1920  0009 2636          	jrne	L7301
1921                     ; 586         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1923  000b c650c6        	ld	a,20678
1924  000e a418          	and	a,#24
1925  0010 44            	srl	a
1926  0011 44            	srl	a
1927  0012 44            	srl	a
1928                     ; 587         tmp = (uint8_t)(tmp >> 3);
1930                     ; 588         presc = HSIDivFactor[tmp];
1932  0013 5f            	clrw	x
1933  0014 97            	ld	xl,a
1934  0015 d60000        	ld	a,(_HSIDivFactor,x)
1935  0018 6b09          	ld	(OFST+0,sp),a
1936                     ; 589         clockfrequency = HSI_VALUE / presc;
1938  001a b703          	ld	c_lreg+3,a
1939  001c 3f02          	clr	c_lreg+2
1940  001e 3f01          	clr	c_lreg+1
1941  0020 3f00          	clr	c_lreg
1942  0022 be02          	ldw	x,c_lreg+2
1943  0024 1f03          	ldw	(OFST-6,sp),x
1944  0026 be00          	ldw	x,c_lreg
1945  0028 1f01          	ldw	(OFST-8,sp),x
1946  002a ae2400        	ldw	x,#9216
1947  002d bf02          	ldw	c_lreg+2,x
1948  002f ae00f4        	ldw	x,#244
1949  0032 bf00          	ldw	c_lreg,x
1950  0034 96            	ldw	x,sp
1951  0035 5c            	incw	x
1952  0036 cd0000        	call	c_ludv
1954  0039 be02          	ldw	x,c_lreg+2
1955  003b 1f07          	ldw	(OFST-2,sp),x
1956  003d be00          	ldw	x,c_lreg
1958  003f 2016          	jra	L1401
1959  0041               L7301:
1960                     ; 591     else if ( clocksource == CLK_SOURCE_LSI)
1962  0041 a1d2          	cp	a,#210
1963  0043 260a          	jrne	L3401
1964                     ; 593         clockfrequency = LSI_VALUE;
1966  0045 aef400        	ldw	x,#62464
1967  0048 1f07          	ldw	(OFST-2,sp),x
1968  004a ae0001        	ldw	x,#1
1970  004d 2008          	jra	L1401
1971  004f               L3401:
1972                     ; 597         clockfrequency = HSE_VALUE;
1974  004f ae2400        	ldw	x,#9216
1975  0052 1f07          	ldw	(OFST-2,sp),x
1976  0054 ae00f4        	ldw	x,#244
1977  0057               L1401:
1978  0057 1f05          	ldw	(OFST-4,sp),x
1979                     ; 600     return((uint32_t)clockfrequency);
1981  0059 bf00          	ldw	c_lreg,x
1982  005b 1e07          	ldw	x,(OFST-2,sp)
1983  005d bf02          	ldw	c_lreg+2,x
1986  005f 5b09          	addw	sp,#9
1987  0061 81            	ret	
2086                     ; 611 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2086                     ; 612 {
2087                     .text:	section	.text,new
2088  0000               _CLK_AdjustHSICalibrationValue:
2090  0000 88            	push	a
2091       00000000      OFST:	set	0
2094                     ; 615     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2096                     ; 618     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2098  0001 c650cc        	ld	a,20684
2099  0004 a4f8          	and	a,#248
2100  0006 1a01          	or	a,(OFST+1,sp)
2101  0008 c750cc        	ld	20684,a
2102                     ; 620 }
2105  000b 84            	pop	a
2106  000c 81            	ret	
2130                     ; 631 void CLK_SYSCLKEmergencyClear(void)
2130                     ; 632 {
2131                     .text:	section	.text,new
2132  0000               _CLK_SYSCLKEmergencyClear:
2136                     ; 633     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2138  0000 721150c5      	bres	20677,#0
2139                     ; 634 }
2142  0004 81            	ret	
2291                     ; 643 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2291                     ; 644 {
2292                     .text:	section	.text,new
2293  0000               _CLK_GetFlagStatus:
2295  0000 89            	pushw	x
2296  0001 5203          	subw	sp,#3
2297       00000003      OFST:	set	3
2300                     ; 646     uint16_t statusreg = 0;
2302                     ; 647     uint8_t tmpreg = 0;
2304                     ; 648     FlagStatus bitstatus = RESET;
2306                     ; 651     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2308                     ; 654     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2310  0003 01            	rrwa	x,a
2311  0004 4f            	clr	a
2312  0005 02            	rlwa	x,a
2313  0006 1f01          	ldw	(OFST-2,sp),x
2314                     ; 657     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2316  0008 a30100        	cpw	x,#256
2317  000b 2605          	jrne	L5021
2318                     ; 659         tmpreg = CLK->ICKR;
2320  000d c650c0        	ld	a,20672
2322  0010 2021          	jra	L7021
2323  0012               L5021:
2324                     ; 661     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2326  0012 a30200        	cpw	x,#512
2327  0015 2605          	jrne	L1121
2328                     ; 663         tmpreg = CLK->ECKR;
2330  0017 c650c1        	ld	a,20673
2332  001a 2017          	jra	L7021
2333  001c               L1121:
2334                     ; 665     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2336  001c a30300        	cpw	x,#768
2337  001f 2605          	jrne	L5121
2338                     ; 667         tmpreg = CLK->SWCR;
2340  0021 c650c5        	ld	a,20677
2342  0024 200d          	jra	L7021
2343  0026               L5121:
2344                     ; 669     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2346  0026 a30400        	cpw	x,#1024
2347  0029 2605          	jrne	L1221
2348                     ; 671         tmpreg = CLK->CSSR;
2350  002b c650c8        	ld	a,20680
2352  002e 2003          	jra	L7021
2353  0030               L1221:
2354                     ; 675         tmpreg = CLK->CCOR;
2356  0030 c650c9        	ld	a,20681
2357  0033               L7021:
2358  0033 6b03          	ld	(OFST+0,sp),a
2359                     ; 678     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2361  0035 7b05          	ld	a,(OFST+2,sp)
2362  0037 1503          	bcp	a,(OFST+0,sp)
2363  0039 2704          	jreq	L5221
2364                     ; 680         bitstatus = SET;
2366  003b a601          	ld	a,#1
2368  003d 2001          	jra	L7221
2369  003f               L5221:
2370                     ; 684         bitstatus = RESET;
2372  003f 4f            	clr	a
2373  0040               L7221:
2374                     ; 688     return((FlagStatus)bitstatus);
2378  0040 5b05          	addw	sp,#5
2379  0042 81            	ret	
2425                     ; 698 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2425                     ; 699 {
2426                     .text:	section	.text,new
2427  0000               _CLK_GetITStatus:
2429  0000 88            	push	a
2430  0001 88            	push	a
2431       00000001      OFST:	set	1
2434                     ; 701     ITStatus bitstatus = RESET;
2436                     ; 704     assert_param(IS_CLK_IT_OK(CLK_IT));
2438                     ; 706     if (CLK_IT == CLK_IT_SWIF)
2440  0002 a11c          	cp	a,#28
2441  0004 2609          	jrne	L3521
2442                     ; 709         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2444  0006 c450c5        	and	a,20677
2445  0009 a10c          	cp	a,#12
2446  000b 260f          	jrne	L3621
2447                     ; 711             bitstatus = SET;
2449  000d 2009          	jp	LC005
2450                     ; 715             bitstatus = RESET;
2451  000f               L3521:
2452                     ; 721         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2454  000f c650c8        	ld	a,20680
2455  0012 1402          	and	a,(OFST+1,sp)
2456  0014 a10c          	cp	a,#12
2457  0016 2604          	jrne	L3621
2458                     ; 723             bitstatus = SET;
2460  0018               LC005:
2462  0018 a601          	ld	a,#1
2464  001a 2001          	jra	L1621
2465  001c               L3621:
2466                     ; 727             bitstatus = RESET;
2469  001c 4f            	clr	a
2470  001d               L1621:
2471                     ; 732     return bitstatus;
2475  001d 85            	popw	x
2476  001e 81            	ret	
2512                     ; 742 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2512                     ; 743 {
2513                     .text:	section	.text,new
2514  0000               _CLK_ClearITPendingBit:
2518                     ; 746     assert_param(IS_CLK_IT_OK(CLK_IT));
2520                     ; 748     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2522  0000 a10c          	cp	a,#12
2523  0002 2605          	jrne	L5031
2524                     ; 751         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2526  0004 721750c8      	bres	20680,#3
2529  0008 81            	ret	
2530  0009               L5031:
2531                     ; 756         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2533  0009 721750c5      	bres	20677,#3
2534                     ; 759 }
2537  000d 81            	ret	
2572                     	xdef	_CLKPrescTable
2573                     	xdef	_HSIDivFactor
2574                     	xdef	_CLK_ClearITPendingBit
2575                     	xdef	_CLK_GetITStatus
2576                     	xdef	_CLK_GetFlagStatus
2577                     	xdef	_CLK_GetSYSCLKSource
2578                     	xdef	_CLK_GetClockFreq
2579                     	xdef	_CLK_AdjustHSICalibrationValue
2580                     	xdef	_CLK_SYSCLKEmergencyClear
2581                     	xdef	_CLK_ClockSecuritySystemEnable
2582                     	xdef	_CLK_SWIMConfig
2583                     	xdef	_CLK_SYSCLKConfig
2584                     	xdef	_CLK_ITConfig
2585                     	xdef	_CLK_CCOConfig
2586                     	xdef	_CLK_HSIPrescalerConfig
2587                     	xdef	_CLK_ClockSwitchConfig
2588                     	xdef	_CLK_PeripheralClockConfig
2589                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2590                     	xdef	_CLK_FastHaltWakeUpCmd
2591                     	xdef	_CLK_ClockSwitchCmd
2592                     	xdef	_CLK_CCOCmd
2593                     	xdef	_CLK_LSICmd
2594                     	xdef	_CLK_HSICmd
2595                     	xdef	_CLK_HSECmd
2596                     	xdef	_CLK_DeInit
2597                     	xref.b	c_lreg
2598                     	xref.b	c_x
2617                     	xref	c_ludv
2618                     	end
