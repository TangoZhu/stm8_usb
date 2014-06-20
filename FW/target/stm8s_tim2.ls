   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  48                     ; 46 void TIM2_DeInit(void)
  48                     ; 47 {
  50                     .text:	section	.text,new
  51  0000               _TIM2_DeInit:
  55                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  57  0000 725f5300      	clr	21248
  58                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  60  0004 725f5303      	clr	21251
  61                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  63  0008 725f5305      	clr	21253
  64                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  000c 725f530a      	clr	21258
  67                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0010 725f530b      	clr	21259
  70                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  72  0014 725f530a      	clr	21258
  73                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  75  0018 725f530b      	clr	21259
  76                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  78  001c 725f5307      	clr	21255
  79                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  81  0020 725f5308      	clr	21256
  82                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  84  0024 725f5309      	clr	21257
  85                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  87  0028 725f530c      	clr	21260
  88                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  90  002c 725f530d      	clr	21261
  91                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  93  0030 725f530e      	clr	21262
  94                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  96  0034 35ff530f      	mov	21263,#255
  97                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  99  0038 35ff5310      	mov	21264,#255
 100                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 102  003c 725f5311      	clr	21265
 103                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 105  0040 725f5312      	clr	21266
 106                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 108  0044 725f5313      	clr	21267
 109                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 111  0048 725f5314      	clr	21268
 112                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 114  004c 725f5315      	clr	21269
 115                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 117  0050 725f5316      	clr	21270
 118                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 120  0054 725f5304      	clr	21252
 121                     ; 76 }
 124  0058 81            	ret	
 290                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 290                     ; 86                         uint16_t TIM2_Period)
 290                     ; 87 {
 291                     .text:	section	.text,new
 292  0000               _TIM2_TimeBaseInit:
 294       00000000      OFST:	set	0
 297                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 299  0000 c7530e        	ld	21262,a
 300  0003 88            	push	a
 301                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 303  0004 7b04          	ld	a,(OFST+4,sp)
 304  0006 c7530f        	ld	21263,a
 305                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 307  0009 7b05          	ld	a,(OFST+5,sp)
 308  000b c75310        	ld	21264,a
 309                     ; 93 }
 312  000e 84            	pop	a
 313  000f 81            	ret	
 468                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 468                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 468                     ; 106                   uint16_t TIM2_Pulse,
 468                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 468                     ; 108 {
 469                     .text:	section	.text,new
 470  0000               _TIM2_OC1Init:
 472  0000 89            	pushw	x
 473  0001 88            	push	a
 474       00000001      OFST:	set	1
 477                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 479                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 481                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 483                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 485  0002 c6530a        	ld	a,21258
 486  0005 a4fc          	and	a,#252
 487  0007 c7530a        	ld	21258,a
 488                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 488                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 490  000a 7b08          	ld	a,(OFST+7,sp)
 491  000c a402          	and	a,#2
 492  000e 6b01          	ld	(OFST+0,sp),a
 493  0010 9f            	ld	a,xl
 494  0011 a401          	and	a,#1
 495  0013 1a01          	or	a,(OFST+0,sp)
 496  0015 ca530a        	or	a,21258
 497  0018 c7530a        	ld	21258,a
 498                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 498                     ; 122                             (uint8_t)TIM2_OCMode);
 500  001b c65307        	ld	a,21255
 501  001e a48f          	and	a,#143
 502  0020 1a02          	or	a,(OFST+1,sp)
 503  0022 c75307        	ld	21255,a
 504                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 506  0025 7b06          	ld	a,(OFST+5,sp)
 507  0027 c75311        	ld	21265,a
 508                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 510  002a 7b07          	ld	a,(OFST+6,sp)
 511  002c c75312        	ld	21266,a
 512                     ; 127 }
 515  002f 5b03          	addw	sp,#3
 516  0031 81            	ret	
 578                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 578                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 578                     ; 140                   uint16_t TIM2_Pulse,
 578                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 578                     ; 142 {
 579                     .text:	section	.text,new
 580  0000               _TIM2_OC2Init:
 582  0000 89            	pushw	x
 583  0001 88            	push	a
 584       00000001      OFST:	set	1
 587                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 589                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 591                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 593                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 595  0002 c6530a        	ld	a,21258
 596  0005 a4cf          	and	a,#207
 597  0007 c7530a        	ld	21258,a
 598                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 598                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 600  000a 7b08          	ld	a,(OFST+7,sp)
 601  000c a420          	and	a,#32
 602  000e 6b01          	ld	(OFST+0,sp),a
 603  0010 9f            	ld	a,xl
 604  0011 a410          	and	a,#16
 605  0013 1a01          	or	a,(OFST+0,sp)
 606  0015 ca530a        	or	a,21258
 607  0018 c7530a        	ld	21258,a
 608                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 608                     ; 158                             (uint8_t)TIM2_OCMode);
 610  001b c65308        	ld	a,21256
 611  001e a48f          	and	a,#143
 612  0020 1a02          	or	a,(OFST+1,sp)
 613  0022 c75308        	ld	21256,a
 614                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 616  0025 7b06          	ld	a,(OFST+5,sp)
 617  0027 c75313        	ld	21267,a
 618                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 620  002a 7b07          	ld	a,(OFST+6,sp)
 621  002c c75314        	ld	21268,a
 622                     ; 164 }
 625  002f 5b03          	addw	sp,#3
 626  0031 81            	ret	
 688                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 688                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 688                     ; 177                   uint16_t TIM2_Pulse,
 688                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 688                     ; 179 {
 689                     .text:	section	.text,new
 690  0000               _TIM2_OC3Init:
 692  0000 89            	pushw	x
 693  0001 88            	push	a
 694       00000001      OFST:	set	1
 697                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 699                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 701                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 703                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 705  0002 c6530b        	ld	a,21259
 706  0005 a4fc          	and	a,#252
 707  0007 c7530b        	ld	21259,a
 708                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 708                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 710  000a 7b08          	ld	a,(OFST+7,sp)
 711  000c a402          	and	a,#2
 712  000e 6b01          	ld	(OFST+0,sp),a
 713  0010 9f            	ld	a,xl
 714  0011 a401          	and	a,#1
 715  0013 1a01          	or	a,(OFST+0,sp)
 716  0015 ca530b        	or	a,21259
 717  0018 c7530b        	ld	21259,a
 718                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 718                     ; 192                             (uint8_t)TIM2_OCMode);
 720  001b c65309        	ld	a,21257
 721  001e a48f          	and	a,#143
 722  0020 1a02          	or	a,(OFST+1,sp)
 723  0022 c75309        	ld	21257,a
 724                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 726  0025 7b06          	ld	a,(OFST+5,sp)
 727  0027 c75315        	ld	21269,a
 728                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 730  002a 7b07          	ld	a,(OFST+6,sp)
 731  002c c75316        	ld	21270,a
 732                     ; 198 }
 735  002f 5b03          	addw	sp,#3
 736  0031 81            	ret	
 927                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 927                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 927                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 927                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 927                     ; 214                  uint8_t TIM2_ICFilter)
 927                     ; 215 {
 928                     .text:	section	.text,new
 929  0000               _TIM2_ICInit:
 931  0000 89            	pushw	x
 932       00000000      OFST:	set	0
 935                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 937                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 939                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 941                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 943                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 945                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
 947  0001 9e            	ld	a,xh
 948  0002 4d            	tnz	a
 949  0003 2614          	jrne	L763
 950                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
 950                     ; 227                    (uint8_t)TIM2_ICSelection,
 950                     ; 228                    (uint8_t)TIM2_ICFilter);
 952  0005 7b07          	ld	a,(OFST+7,sp)
 953  0007 88            	push	a
 954  0008 7b06          	ld	a,(OFST+6,sp)
 955  000a 97            	ld	xl,a
 956  000b 7b03          	ld	a,(OFST+3,sp)
 957  000d 95            	ld	xh,a
 958  000e cd0000        	call	L3_TI1_Config
 960  0011 84            	pop	a
 961                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 963  0012 7b06          	ld	a,(OFST+6,sp)
 964  0014 cd0000        	call	_TIM2_SetIC1Prescaler
 967  0017 202b          	jra	L173
 968  0019               L763:
 969                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
 971  0019 7b01          	ld	a,(OFST+1,sp)
 972  001b 4a            	dec	a
 973  001c 2614          	jrne	L373
 974                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
 974                     ; 237                    (uint8_t)TIM2_ICSelection,
 974                     ; 238                    (uint8_t)TIM2_ICFilter);
 976  001e 7b07          	ld	a,(OFST+7,sp)
 977  0020 88            	push	a
 978  0021 7b06          	ld	a,(OFST+6,sp)
 979  0023 97            	ld	xl,a
 980  0024 7b03          	ld	a,(OFST+3,sp)
 981  0026 95            	ld	xh,a
 982  0027 cd0000        	call	L5_TI2_Config
 984  002a 84            	pop	a
 985                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 987  002b 7b06          	ld	a,(OFST+6,sp)
 988  002d cd0000        	call	_TIM2_SetIC2Prescaler
 991  0030 2012          	jra	L173
 992  0032               L373:
 993                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
 993                     ; 247                    (uint8_t)TIM2_ICSelection,
 993                     ; 248                    (uint8_t)TIM2_ICFilter);
 995  0032 7b07          	ld	a,(OFST+7,sp)
 996  0034 88            	push	a
 997  0035 7b06          	ld	a,(OFST+6,sp)
 998  0037 97            	ld	xl,a
 999  0038 7b03          	ld	a,(OFST+3,sp)
1000  003a 95            	ld	xh,a
1001  003b cd0000        	call	L7_TI3_Config
1003  003e 84            	pop	a
1004                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1006  003f 7b06          	ld	a,(OFST+6,sp)
1007  0041 cd0000        	call	_TIM2_SetIC3Prescaler
1009  0044               L173:
1010                     ; 253 }
1013  0044 85            	popw	x
1014  0045 81            	ret	
1104                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1104                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1104                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1104                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1104                     ; 269                      uint8_t TIM2_ICFilter)
1104                     ; 270 {
1105                     .text:	section	.text,new
1106  0000               _TIM2_PWMIConfig:
1108  0000 89            	pushw	x
1109  0001 89            	pushw	x
1110       00000002      OFST:	set	2
1113                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1115                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1117                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1119                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1121                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1123                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1125                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1127  0002 9f            	ld	a,xl
1128  0003 a144          	cp	a,#68
1129  0005 2706          	jreq	L734
1130                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1132  0007 a644          	ld	a,#68
1133  0009 6b01          	ld	(OFST-1,sp),a
1135  000b 2002          	jra	L144
1136  000d               L734:
1137                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1139  000d 0f01          	clr	(OFST-1,sp)
1140  000f               L144:
1141                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1143  000f 7b07          	ld	a,(OFST+5,sp)
1144  0011 4a            	dec	a
1145  0012 2604          	jrne	L344
1146                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1148  0014 a602          	ld	a,#2
1150  0016 2002          	jra	L544
1151  0018               L344:
1152                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1154  0018 a601          	ld	a,#1
1155  001a               L544:
1156  001a 6b02          	ld	(OFST+0,sp),a
1157                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1159  001c 7b03          	ld	a,(OFST+1,sp)
1160  001e 2626          	jrne	L744
1161                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1161                     ; 304                    (uint8_t)TIM2_ICFilter);
1163  0020 7b09          	ld	a,(OFST+7,sp)
1164  0022 88            	push	a
1165  0023 7b08          	ld	a,(OFST+6,sp)
1166  0025 97            	ld	xl,a
1167  0026 7b05          	ld	a,(OFST+3,sp)
1168  0028 95            	ld	xh,a
1169  0029 cd0000        	call	L3_TI1_Config
1171  002c 84            	pop	a
1172                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1174  002d 7b08          	ld	a,(OFST+6,sp)
1175  002f cd0000        	call	_TIM2_SetIC1Prescaler
1177                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1179  0032 7b09          	ld	a,(OFST+7,sp)
1180  0034 88            	push	a
1181  0035 7b03          	ld	a,(OFST+1,sp)
1182  0037 97            	ld	xl,a
1183  0038 7b02          	ld	a,(OFST+0,sp)
1184  003a 95            	ld	xh,a
1185  003b cd0000        	call	L5_TI2_Config
1187  003e 84            	pop	a
1188                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1190  003f 7b08          	ld	a,(OFST+6,sp)
1191  0041 cd0000        	call	_TIM2_SetIC2Prescaler
1194  0044 2024          	jra	L154
1195  0046               L744:
1196                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1196                     ; 319                    (uint8_t)TIM2_ICFilter);
1198  0046 7b09          	ld	a,(OFST+7,sp)
1199  0048 88            	push	a
1200  0049 7b08          	ld	a,(OFST+6,sp)
1201  004b 97            	ld	xl,a
1202  004c 7b05          	ld	a,(OFST+3,sp)
1203  004e 95            	ld	xh,a
1204  004f cd0000        	call	L5_TI2_Config
1206  0052 84            	pop	a
1207                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1209  0053 7b08          	ld	a,(OFST+6,sp)
1210  0055 cd0000        	call	_TIM2_SetIC2Prescaler
1212                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1214  0058 7b09          	ld	a,(OFST+7,sp)
1215  005a 88            	push	a
1216  005b 7b03          	ld	a,(OFST+1,sp)
1217  005d 97            	ld	xl,a
1218  005e 7b02          	ld	a,(OFST+0,sp)
1219  0060 95            	ld	xh,a
1220  0061 cd0000        	call	L3_TI1_Config
1222  0064 84            	pop	a
1223                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1225  0065 7b08          	ld	a,(OFST+6,sp)
1226  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1228  006a               L154:
1229                     ; 330 }
1232  006a 5b04          	addw	sp,#4
1233  006c 81            	ret	
1288                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1288                     ; 340 {
1289                     .text:	section	.text,new
1290  0000               _TIM2_Cmd:
1294                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1296                     ; 345     if (NewState != DISABLE)
1298  0000 4d            	tnz	a
1299  0001 2705          	jreq	L105
1300                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1302  0003 72105300      	bset	21248,#0
1305  0007 81            	ret	
1306  0008               L105:
1307                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1309  0008 72115300      	bres	21248,#0
1310                     ; 353 }
1313  000c 81            	ret	
1392                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1392                     ; 370 {
1393                     .text:	section	.text,new
1394  0000               _TIM2_ITConfig:
1396  0000 89            	pushw	x
1397       00000000      OFST:	set	0
1400                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1402                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1404                     ; 375     if (NewState != DISABLE)
1406  0001 9f            	ld	a,xl
1407  0002 4d            	tnz	a
1408  0003 2706          	jreq	L345
1409                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1411  0005 9e            	ld	a,xh
1412  0006 ca5303        	or	a,21251
1414  0009 2006          	jra	L545
1415  000b               L345:
1416                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1418  000b 7b01          	ld	a,(OFST+1,sp)
1419  000d 43            	cpl	a
1420  000e c45303        	and	a,21251
1421  0011               L545:
1422  0011 c75303        	ld	21251,a
1423                     ; 385 }
1426  0014 85            	popw	x
1427  0015 81            	ret	
1463                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1463                     ; 395 {
1464                     .text:	section	.text,new
1465  0000               _TIM2_UpdateDisableConfig:
1469                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1471                     ; 400     if (NewState != DISABLE)
1473  0000 4d            	tnz	a
1474  0001 2705          	jreq	L565
1475                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1477  0003 72125300      	bset	21248,#1
1480  0007 81            	ret	
1481  0008               L565:
1482                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1484  0008 72135300      	bres	21248,#1
1485                     ; 408 }
1488  000c 81            	ret	
1546                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1546                     ; 419 {
1547                     .text:	section	.text,new
1548  0000               _TIM2_UpdateRequestConfig:
1552                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1554                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1556  0000 4d            	tnz	a
1557  0001 2705          	jreq	L716
1558                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1560  0003 72145300      	bset	21248,#2
1563  0007 81            	ret	
1564  0008               L716:
1565                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1567  0008 72155300      	bres	21248,#2
1568                     ; 432 }
1571  000c 81            	ret	
1628                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1628                     ; 444 {
1629                     .text:	section	.text,new
1630  0000               _TIM2_SelectOnePulseMode:
1634                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1636                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1638  0000 4d            	tnz	a
1639  0001 2705          	jreq	L156
1640                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1642  0003 72165300      	bset	21248,#3
1645  0007 81            	ret	
1646  0008               L156:
1647                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1649  0008 72175300      	bres	21248,#3
1650                     ; 458 }
1653  000c 81            	ret	
1721                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1721                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1721                     ; 491 {
1722                     .text:	section	.text,new
1723  0000               _TIM2_PrescalerConfig:
1727                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1729                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1731                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
1733  0000 9e            	ld	a,xh
1734  0001 c7530e        	ld	21262,a
1735                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1737  0004 9f            	ld	a,xl
1738  0005 c75306        	ld	21254,a
1739                     ; 501 }
1742  0008 81            	ret	
1800                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1800                     ; 513 {
1801                     .text:	section	.text,new
1802  0000               _TIM2_ForcedOC1Config:
1804  0000 88            	push	a
1805       00000000      OFST:	set	0
1808                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1810                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1810                     ; 519                               | (uint8_t)TIM2_ForcedAction);
1812  0001 c65307        	ld	a,21255
1813  0004 a48f          	and	a,#143
1814  0006 1a01          	or	a,(OFST+1,sp)
1815  0008 c75307        	ld	21255,a
1816                     ; 520 }
1819  000b 84            	pop	a
1820  000c 81            	ret	
1856                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1856                     ; 532 {
1857                     .text:	section	.text,new
1858  0000               _TIM2_ForcedOC2Config:
1860  0000 88            	push	a
1861       00000000      OFST:	set	0
1864                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1866                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1866                     ; 538                             | (uint8_t)TIM2_ForcedAction);
1868  0001 c65308        	ld	a,21256
1869  0004 a48f          	and	a,#143
1870  0006 1a01          	or	a,(OFST+1,sp)
1871  0008 c75308        	ld	21256,a
1872                     ; 539 }
1875  000b 84            	pop	a
1876  000c 81            	ret	
1912                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1912                     ; 551 {
1913                     .text:	section	.text,new
1914  0000               _TIM2_ForcedOC3Config:
1916  0000 88            	push	a
1917       00000000      OFST:	set	0
1920                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1922                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1922                     ; 557                               | (uint8_t)TIM2_ForcedAction);
1924  0001 c65309        	ld	a,21257
1925  0004 a48f          	and	a,#143
1926  0006 1a01          	or	a,(OFST+1,sp)
1927  0008 c75309        	ld	21257,a
1928                     ; 558 }
1931  000b 84            	pop	a
1932  000c 81            	ret	
1968                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1968                     ; 568 {
1969                     .text:	section	.text,new
1970  0000               _TIM2_ARRPreloadConfig:
1974                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1976                     ; 573     if (NewState != DISABLE)
1978  0000 4d            	tnz	a
1979  0001 2705          	jreq	L7001
1980                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
1982  0003 721e5300      	bset	21248,#7
1985  0007 81            	ret	
1986  0008               L7001:
1987                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
1989  0008 721f5300      	bres	21248,#7
1990                     ; 581 }
1993  000c 81            	ret	
2029                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2029                     ; 591 {
2030                     .text:	section	.text,new
2031  0000               _TIM2_OC1PreloadConfig:
2035                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2037                     ; 596     if (NewState != DISABLE)
2039  0000 4d            	tnz	a
2040  0001 2705          	jreq	L1301
2041                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2043  0003 72165307      	bset	21255,#3
2046  0007 81            	ret	
2047  0008               L1301:
2048                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2050  0008 72175307      	bres	21255,#3
2051                     ; 604 }
2054  000c 81            	ret	
2090                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2090                     ; 614 {
2091                     .text:	section	.text,new
2092  0000               _TIM2_OC2PreloadConfig:
2096                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2098                     ; 619     if (NewState != DISABLE)
2100  0000 4d            	tnz	a
2101  0001 2705          	jreq	L3501
2102                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2104  0003 72165308      	bset	21256,#3
2107  0007 81            	ret	
2108  0008               L3501:
2109                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2111  0008 72175308      	bres	21256,#3
2112                     ; 627 }
2115  000c 81            	ret	
2151                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2151                     ; 637 {
2152                     .text:	section	.text,new
2153  0000               _TIM2_OC3PreloadConfig:
2157                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2159                     ; 642     if (NewState != DISABLE)
2161  0000 4d            	tnz	a
2162  0001 2705          	jreq	L5701
2163                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2165  0003 72165309      	bset	21257,#3
2168  0007 81            	ret	
2169  0008               L5701:
2170                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2172  0008 72175309      	bres	21257,#3
2173                     ; 650 }
2176  000c 81            	ret	
2249                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2249                     ; 664 {
2250                     .text:	section	.text,new
2251  0000               _TIM2_GenerateEvent:
2255                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2257                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2259  0000 c75306        	ld	21254,a
2260                     ; 670 }
2263  0003 81            	ret	
2299                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2299                     ; 682 {
2300                     .text:	section	.text,new
2301  0000               _TIM2_OC1PolarityConfig:
2305                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2307                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2309  0000 4d            	tnz	a
2310  0001 2705          	jreq	L1511
2311                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2313  0003 7212530a      	bset	21258,#1
2316  0007 81            	ret	
2317  0008               L1511:
2318                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2320  0008 7213530a      	bres	21258,#1
2321                     ; 695 }
2324  000c 81            	ret	
2360                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2360                     ; 707 {
2361                     .text:	section	.text,new
2362  0000               _TIM2_OC2PolarityConfig:
2366                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2368                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2370  0000 4d            	tnz	a
2371  0001 2705          	jreq	L3711
2372                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2374  0003 721a530a      	bset	21258,#5
2377  0007 81            	ret	
2378  0008               L3711:
2379                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2381  0008 721b530a      	bres	21258,#5
2382                     ; 720 }
2385  000c 81            	ret	
2421                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2421                     ; 732 {
2422                     .text:	section	.text,new
2423  0000               _TIM2_OC3PolarityConfig:
2427                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2429                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2431  0000 4d            	tnz	a
2432  0001 2705          	jreq	L5121
2433                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2435  0003 7212530b      	bset	21259,#1
2438  0007 81            	ret	
2439  0008               L5121:
2440                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2442  0008 7213530b      	bres	21259,#1
2443                     ; 745 }
2446  000c 81            	ret	
2491                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2491                     ; 760 {
2492                     .text:	section	.text,new
2493  0000               _TIM2_CCxCmd:
2495  0000 89            	pushw	x
2496       00000000      OFST:	set	0
2499                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2501                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2503                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
2505  0001 9e            	ld	a,xh
2506  0002 4d            	tnz	a
2507  0003 2610          	jrne	L3421
2508                     ; 768         if (NewState != DISABLE)
2510  0005 9f            	ld	a,xl
2511  0006 4d            	tnz	a
2512  0007 2706          	jreq	L5421
2513                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2515  0009 7210530a      	bset	21258,#0
2517  000d 2029          	jra	L1521
2518  000f               L5421:
2519                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2521  000f 7211530a      	bres	21258,#0
2522  0013 2023          	jra	L1521
2523  0015               L3421:
2524                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
2526  0015 7b01          	ld	a,(OFST+1,sp)
2527  0017 4a            	dec	a
2528  0018 2610          	jrne	L3521
2529                     ; 781         if (NewState != DISABLE)
2531  001a 7b02          	ld	a,(OFST+2,sp)
2532  001c 2706          	jreq	L5521
2533                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2535  001e 7218530a      	bset	21258,#4
2537  0022 2014          	jra	L1521
2538  0024               L5521:
2539                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2541  0024 7219530a      	bres	21258,#4
2542  0028 200e          	jra	L1521
2543  002a               L3521:
2544                     ; 793         if (NewState != DISABLE)
2546  002a 7b02          	ld	a,(OFST+2,sp)
2547  002c 2706          	jreq	L3621
2548                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2550  002e 7210530b      	bset	21259,#0
2552  0032 2004          	jra	L1521
2553  0034               L3621:
2554                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2556  0034 7211530b      	bres	21259,#0
2557  0038               L1521:
2558                     ; 802 }
2561  0038 85            	popw	x
2562  0039 81            	ret	
2607                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2607                     ; 825 {
2608                     .text:	section	.text,new
2609  0000               _TIM2_SelectOCxM:
2611  0000 89            	pushw	x
2612       00000000      OFST:	set	0
2615                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2617                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2619                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
2621  0001 9e            	ld	a,xh
2622  0002 4d            	tnz	a
2623  0003 2610          	jrne	L1131
2624                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2626  0005 7211530a      	bres	21258,#0
2627                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2627                     ; 837                                | (uint8_t)TIM2_OCMode);
2629  0009 c65307        	ld	a,21255
2630  000c a48f          	and	a,#143
2631  000e 1a02          	or	a,(OFST+2,sp)
2632  0010 c75307        	ld	21255,a
2634  0013 2023          	jra	L3131
2635  0015               L1131:
2636                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
2638  0015 7b01          	ld	a,(OFST+1,sp)
2639  0017 4a            	dec	a
2640  0018 2610          	jrne	L5131
2641                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2643  001a 7219530a      	bres	21258,#4
2644                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2644                     ; 846                                 | (uint8_t)TIM2_OCMode);
2646  001e c65308        	ld	a,21256
2647  0021 a48f          	and	a,#143
2648  0023 1a02          	or	a,(OFST+2,sp)
2649  0025 c75308        	ld	21256,a
2651  0028 200e          	jra	L3131
2652  002a               L5131:
2653                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2655  002a 7211530b      	bres	21259,#0
2656                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2656                     ; 855                                 | (uint8_t)TIM2_OCMode);
2658  002e c65309        	ld	a,21257
2659  0031 a48f          	and	a,#143
2660  0033 1a02          	or	a,(OFST+2,sp)
2661  0035 c75309        	ld	21257,a
2662  0038               L3131:
2663                     ; 857 }
2666  0038 85            	popw	x
2667  0039 81            	ret	
2699                     ; 866 void TIM2_SetCounter(uint16_t Counter)
2699                     ; 867 {
2700                     .text:	section	.text,new
2701  0000               _TIM2_SetCounter:
2705                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
2707  0000 9e            	ld	a,xh
2708  0001 c7530c        	ld	21260,a
2709                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
2711  0004 9f            	ld	a,xl
2712  0005 c7530d        	ld	21261,a
2713                     ; 872 }
2716  0008 81            	ret	
2748                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
2748                     ; 882 {
2749                     .text:	section	.text,new
2750  0000               _TIM2_SetAutoreload:
2754                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2756  0000 9e            	ld	a,xh
2757  0001 c7530f        	ld	21263,a
2758                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
2760  0004 9f            	ld	a,xl
2761  0005 c75310        	ld	21264,a
2762                     ; 888 }
2765  0008 81            	ret	
2797                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
2797                     ; 898 {
2798                     .text:	section	.text,new
2799  0000               _TIM2_SetCompare1:
2803                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2805  0000 9e            	ld	a,xh
2806  0001 c75311        	ld	21265,a
2807                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
2809  0004 9f            	ld	a,xl
2810  0005 c75312        	ld	21266,a
2811                     ; 903 }
2814  0008 81            	ret	
2846                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
2846                     ; 913 {
2847                     .text:	section	.text,new
2848  0000               _TIM2_SetCompare2:
2852                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2854  0000 9e            	ld	a,xh
2855  0001 c75313        	ld	21267,a
2856                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
2858  0004 9f            	ld	a,xl
2859  0005 c75314        	ld	21268,a
2860                     ; 918 }
2863  0008 81            	ret	
2895                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
2895                     ; 928 {
2896                     .text:	section	.text,new
2897  0000               _TIM2_SetCompare3:
2901                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2903  0000 9e            	ld	a,xh
2904  0001 c75315        	ld	21269,a
2905                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
2907  0004 9f            	ld	a,xl
2908  0005 c75316        	ld	21270,a
2909                     ; 933 }
2912  0008 81            	ret	
2948                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2948                     ; 947 {
2949                     .text:	section	.text,new
2950  0000               _TIM2_SetIC1Prescaler:
2952  0000 88            	push	a
2953       00000000      OFST:	set	0
2956                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2958                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2958                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
2960  0001 c65307        	ld	a,21255
2961  0004 a4f3          	and	a,#243
2962  0006 1a01          	or	a,(OFST+1,sp)
2963  0008 c75307        	ld	21255,a
2964                     ; 954 }
2967  000b 84            	pop	a
2968  000c 81            	ret	
3004                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3004                     ; 967 {
3005                     .text:	section	.text,new
3006  0000               _TIM2_SetIC2Prescaler:
3008  0000 88            	push	a
3009       00000000      OFST:	set	0
3012                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3014                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3014                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3016  0001 c65308        	ld	a,21256
3017  0004 a4f3          	and	a,#243
3018  0006 1a01          	or	a,(OFST+1,sp)
3019  0008 c75308        	ld	21256,a
3020                     ; 974 }
3023  000b 84            	pop	a
3024  000c 81            	ret	
3060                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3060                     ; 987 {
3061                     .text:	section	.text,new
3062  0000               _TIM2_SetIC3Prescaler:
3064  0000 88            	push	a
3065       00000000      OFST:	set	0
3068                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3070                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3070                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3072  0001 c65309        	ld	a,21257
3073  0004 a4f3          	and	a,#243
3074  0006 1a01          	or	a,(OFST+1,sp)
3075  0008 c75309        	ld	21257,a
3076                     ; 994 }
3079  000b 84            	pop	a
3080  000c 81            	ret	
3126                     ; 1001 uint16_t TIM2_GetCapture1(void)
3126                     ; 1002 {
3127                     .text:	section	.text,new
3128  0000               _TIM2_GetCapture1:
3130  0000 5204          	subw	sp,#4
3131       00000004      OFST:	set	4
3134                     ; 1004     uint16_t tmpccr1 = 0;
3136                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3140                     ; 1007     tmpccr1h = TIM2->CCR1H;
3142  0002 c65311        	ld	a,21265
3143  0005 6b02          	ld	(OFST-2,sp),a
3144                     ; 1008     tmpccr1l = TIM2->CCR1L;
3146  0007 c65312        	ld	a,21266
3147  000a 6b01          	ld	(OFST-3,sp),a
3148                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3150  000c 5f            	clrw	x
3151  000d 97            	ld	xl,a
3152  000e 1f03          	ldw	(OFST-1,sp),x
3153                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3155  0010 5f            	clrw	x
3156  0011 7b02          	ld	a,(OFST-2,sp)
3157  0013 97            	ld	xl,a
3158  0014 7b04          	ld	a,(OFST+0,sp)
3159  0016 01            	rrwa	x,a
3160  0017 1a03          	or	a,(OFST-1,sp)
3161  0019 01            	rrwa	x,a
3162                     ; 1013     return (uint16_t)tmpccr1;
3166  001a 5b04          	addw	sp,#4
3167  001c 81            	ret	
3213                     ; 1021 uint16_t TIM2_GetCapture2(void)
3213                     ; 1022 {
3214                     .text:	section	.text,new
3215  0000               _TIM2_GetCapture2:
3217  0000 5204          	subw	sp,#4
3218       00000004      OFST:	set	4
3221                     ; 1024     uint16_t tmpccr2 = 0;
3223                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3227                     ; 1027     tmpccr2h = TIM2->CCR2H;
3229  0002 c65313        	ld	a,21267
3230  0005 6b02          	ld	(OFST-2,sp),a
3231                     ; 1028     tmpccr2l = TIM2->CCR2L;
3233  0007 c65314        	ld	a,21268
3234  000a 6b01          	ld	(OFST-3,sp),a
3235                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3237  000c 5f            	clrw	x
3238  000d 97            	ld	xl,a
3239  000e 1f03          	ldw	(OFST-1,sp),x
3240                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3242  0010 5f            	clrw	x
3243  0011 7b02          	ld	a,(OFST-2,sp)
3244  0013 97            	ld	xl,a
3245  0014 7b04          	ld	a,(OFST+0,sp)
3246  0016 01            	rrwa	x,a
3247  0017 1a03          	or	a,(OFST-1,sp)
3248  0019 01            	rrwa	x,a
3249                     ; 1033     return (uint16_t)tmpccr2;
3253  001a 5b04          	addw	sp,#4
3254  001c 81            	ret	
3300                     ; 1041 uint16_t TIM2_GetCapture3(void)
3300                     ; 1042 {
3301                     .text:	section	.text,new
3302  0000               _TIM2_GetCapture3:
3304  0000 5204          	subw	sp,#4
3305       00000004      OFST:	set	4
3308                     ; 1044     uint16_t tmpccr3 = 0;
3310                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3314                     ; 1047     tmpccr3h = TIM2->CCR3H;
3316  0002 c65315        	ld	a,21269
3317  0005 6b02          	ld	(OFST-2,sp),a
3318                     ; 1048     tmpccr3l = TIM2->CCR3L;
3320  0007 c65316        	ld	a,21270
3321  000a 6b01          	ld	(OFST-3,sp),a
3322                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
3324  000c 5f            	clrw	x
3325  000d 97            	ld	xl,a
3326  000e 1f03          	ldw	(OFST-1,sp),x
3327                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3329  0010 5f            	clrw	x
3330  0011 7b02          	ld	a,(OFST-2,sp)
3331  0013 97            	ld	xl,a
3332  0014 7b04          	ld	a,(OFST+0,sp)
3333  0016 01            	rrwa	x,a
3334  0017 1a03          	or	a,(OFST-1,sp)
3335  0019 01            	rrwa	x,a
3336                     ; 1053     return (uint16_t)tmpccr3;
3340  001a 5b04          	addw	sp,#4
3341  001c 81            	ret	
3373                     ; 1061 uint16_t TIM2_GetCounter(void)
3373                     ; 1062 {
3374                     .text:	section	.text,new
3375  0000               _TIM2_GetCounter:
3377  0000 89            	pushw	x
3378       00000002      OFST:	set	2
3381                     ; 1063      uint16_t tmpcntr = 0;
3383                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3385  0001 c6530c        	ld	a,21260
3386  0004 97            	ld	xl,a
3387  0005 4f            	clr	a
3388  0006 02            	rlwa	x,a
3389  0007 1f01          	ldw	(OFST-1,sp),x
3390                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3392  0009 5f            	clrw	x
3393  000a c6530d        	ld	a,21261
3394  000d 97            	ld	xl,a
3395  000e 01            	rrwa	x,a
3396  000f 1a02          	or	a,(OFST+0,sp)
3397  0011 01            	rrwa	x,a
3398  0012 1a01          	or	a,(OFST-1,sp)
3399  0014 01            	rrwa	x,a
3402  0015 5b02          	addw	sp,#2
3403  0017 81            	ret	
3427                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3427                     ; 1077 {
3428                     .text:	section	.text,new
3429  0000               _TIM2_GetPrescaler:
3433                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3435  0000 c6530e        	ld	a,21262
3438  0003 81            	ret	
3573                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3573                     ; 1097 {
3574                     .text:	section	.text,new
3575  0000               _TIM2_GetFlagStatus:
3577  0000 89            	pushw	x
3578  0001 89            	pushw	x
3579       00000002      OFST:	set	2
3582                     ; 1098     FlagStatus bitstatus = RESET;
3584                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3588                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3590                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3592  0002 9f            	ld	a,xl
3593  0003 c45304        	and	a,21252
3594  0006 6b01          	ld	(OFST-1,sp),a
3595                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3597  0008 7b03          	ld	a,(OFST+1,sp)
3598  000a 6b02          	ld	(OFST+0,sp),a
3599                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3601  000c c45305        	and	a,21253
3602  000f 1a01          	or	a,(OFST-1,sp)
3603  0011 2702          	jreq	L3561
3604                     ; 1109         bitstatus = SET;
3606  0013 a601          	ld	a,#1
3608  0015               L3561:
3609                     ; 1113         bitstatus = RESET;
3611                     ; 1115     return (FlagStatus)bitstatus;
3615  0015 5b04          	addw	sp,#4
3616  0017 81            	ret	
3651                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3651                     ; 1133 {
3652                     .text:	section	.text,new
3653  0000               _TIM2_ClearFlag:
3657                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3659                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3661  0000 9f            	ld	a,xl
3662  0001 43            	cpl	a
3663  0002 c75304        	ld	21252,a
3664                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3666  0005 35ff5305      	mov	21253,#255
3667                     ; 1140 }
3670  0009 81            	ret	
3730                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3730                     ; 1155 {
3731                     .text:	section	.text,new
3732  0000               _TIM2_GetITStatus:
3734  0000 88            	push	a
3735  0001 89            	pushw	x
3736       00000002      OFST:	set	2
3739                     ; 1156     ITStatus bitstatus = RESET;
3741                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3745                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3747                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3749  0002 c45304        	and	a,21252
3750  0005 6b01          	ld	(OFST-1,sp),a
3751                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3753  0007 c65303        	ld	a,21251
3754  000a 1403          	and	a,(OFST+1,sp)
3755  000c 6b02          	ld	(OFST+0,sp),a
3756                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3758  000e 7b01          	ld	a,(OFST-1,sp)
3759  0010 2708          	jreq	L3271
3761  0012 7b02          	ld	a,(OFST+0,sp)
3762  0014 2704          	jreq	L3271
3763                     ; 1168         bitstatus = SET;
3765  0016 a601          	ld	a,#1
3767  0018 2001          	jra	L5271
3768  001a               L3271:
3769                     ; 1172         bitstatus = RESET;
3771  001a 4f            	clr	a
3772  001b               L5271:
3773                     ; 1174     return (ITStatus)(bitstatus);
3777  001b 5b03          	addw	sp,#3
3778  001d 81            	ret	
3814                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3814                     ; 1189 {
3815                     .text:	section	.text,new
3816  0000               _TIM2_ClearITPendingBit:
3820                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3822                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
3824  0000 43            	cpl	a
3825  0001 c75304        	ld	21252,a
3826                     ; 1195 }
3829  0004 81            	ret	
3875                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
3875                     ; 1215                        uint8_t TIM2_ICSelection,
3875                     ; 1216                        uint8_t TIM2_ICFilter)
3875                     ; 1217 {
3876                     .text:	section	.text,new
3877  0000               L3_TI1_Config:
3879  0000 89            	pushw	x
3880       00000001      OFST:	set	1
3883                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3885  0001 7211530a      	bres	21258,#0
3886  0005 88            	push	a
3887                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
3887                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3889  0006 7b06          	ld	a,(OFST+5,sp)
3890  0008 97            	ld	xl,a
3891  0009 a610          	ld	a,#16
3892  000b 42            	mul	x,a
3893  000c 9f            	ld	a,xl
3894  000d 1a03          	or	a,(OFST+2,sp)
3895  000f 6b01          	ld	(OFST+0,sp),a
3896  0011 c65307        	ld	a,21255
3897  0014 a40c          	and	a,#12
3898  0016 1a01          	or	a,(OFST+0,sp)
3899  0018 c75307        	ld	21255,a
3900                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3902  001b 7b02          	ld	a,(OFST+1,sp)
3903  001d 2706          	jreq	L5671
3904                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
3906  001f 7212530a      	bset	21258,#1
3908  0023 2004          	jra	L7671
3909  0025               L5671:
3910                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3912  0025 7213530a      	bres	21258,#1
3913  0029               L7671:
3914                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
3916  0029 7210530a      	bset	21258,#0
3917                     ; 1236 }
3920  002d 5b03          	addw	sp,#3
3921  002f 81            	ret	
3967                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
3967                     ; 1256                        uint8_t TIM2_ICSelection,
3967                     ; 1257                        uint8_t TIM2_ICFilter)
3967                     ; 1258 {
3968                     .text:	section	.text,new
3969  0000               L5_TI2_Config:
3971  0000 89            	pushw	x
3972       00000001      OFST:	set	1
3975                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3977  0001 7219530a      	bres	21258,#4
3978  0005 88            	push	a
3979                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
3979                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3981  0006 7b06          	ld	a,(OFST+5,sp)
3982  0008 97            	ld	xl,a
3983  0009 a610          	ld	a,#16
3984  000b 42            	mul	x,a
3985  000c 9f            	ld	a,xl
3986  000d 1a03          	or	a,(OFST+2,sp)
3987  000f 6b01          	ld	(OFST+0,sp),a
3988  0011 c65308        	ld	a,21256
3989  0014 a40c          	and	a,#12
3990  0016 1a01          	or	a,(OFST+0,sp)
3991  0018 c75308        	ld	21256,a
3992                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3994  001b 7b02          	ld	a,(OFST+1,sp)
3995  001d 2706          	jreq	L1102
3996                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
3998  001f 721a530a      	bset	21258,#5
4000  0023 2004          	jra	L3102
4001  0025               L1102:
4002                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4004  0025 721b530a      	bres	21258,#5
4005  0029               L3102:
4006                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4008  0029 7218530a      	bset	21258,#4
4009                     ; 1280 }
4012  002d 5b03          	addw	sp,#3
4013  002f 81            	ret	
4059                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4059                     ; 1297                        uint8_t TIM2_ICFilter)
4059                     ; 1298 {
4060                     .text:	section	.text,new
4061  0000               L7_TI3_Config:
4063  0000 89            	pushw	x
4064       00000001      OFST:	set	1
4067                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4069  0001 7211530b      	bres	21259,#0
4070  0005 88            	push	a
4071                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4071                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4073  0006 7b06          	ld	a,(OFST+5,sp)
4074  0008 97            	ld	xl,a
4075  0009 a610          	ld	a,#16
4076  000b 42            	mul	x,a
4077  000c 9f            	ld	a,xl
4078  000d 1a03          	or	a,(OFST+2,sp)
4079  000f 6b01          	ld	(OFST+0,sp),a
4080  0011 c65309        	ld	a,21257
4081  0014 a40c          	and	a,#12
4082  0016 1a01          	or	a,(OFST+0,sp)
4083  0018 c75309        	ld	21257,a
4084                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4086  001b 7b02          	ld	a,(OFST+1,sp)
4087  001d 2706          	jreq	L5302
4088                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4090  001f 7212530b      	bset	21259,#1
4092  0023 2004          	jra	L7302
4093  0025               L5302:
4094                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4096  0025 7213530b      	bres	21259,#1
4097  0029               L7302:
4098                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4100  0029 7210530b      	bset	21259,#0
4101                     ; 1318 }
4104  002d 5b03          	addw	sp,#3
4105  002f 81            	ret	
4118                     	xdef	_TIM2_ClearITPendingBit
4119                     	xdef	_TIM2_GetITStatus
4120                     	xdef	_TIM2_ClearFlag
4121                     	xdef	_TIM2_GetFlagStatus
4122                     	xdef	_TIM2_GetPrescaler
4123                     	xdef	_TIM2_GetCounter
4124                     	xdef	_TIM2_GetCapture3
4125                     	xdef	_TIM2_GetCapture2
4126                     	xdef	_TIM2_GetCapture1
4127                     	xdef	_TIM2_SetIC3Prescaler
4128                     	xdef	_TIM2_SetIC2Prescaler
4129                     	xdef	_TIM2_SetIC1Prescaler
4130                     	xdef	_TIM2_SetCompare3
4131                     	xdef	_TIM2_SetCompare2
4132                     	xdef	_TIM2_SetCompare1
4133                     	xdef	_TIM2_SetAutoreload
4134                     	xdef	_TIM2_SetCounter
4135                     	xdef	_TIM2_SelectOCxM
4136                     	xdef	_TIM2_CCxCmd
4137                     	xdef	_TIM2_OC3PolarityConfig
4138                     	xdef	_TIM2_OC2PolarityConfig
4139                     	xdef	_TIM2_OC1PolarityConfig
4140                     	xdef	_TIM2_GenerateEvent
4141                     	xdef	_TIM2_OC3PreloadConfig
4142                     	xdef	_TIM2_OC2PreloadConfig
4143                     	xdef	_TIM2_OC1PreloadConfig
4144                     	xdef	_TIM2_ARRPreloadConfig
4145                     	xdef	_TIM2_ForcedOC3Config
4146                     	xdef	_TIM2_ForcedOC2Config
4147                     	xdef	_TIM2_ForcedOC1Config
4148                     	xdef	_TIM2_PrescalerConfig
4149                     	xdef	_TIM2_SelectOnePulseMode
4150                     	xdef	_TIM2_UpdateRequestConfig
4151                     	xdef	_TIM2_UpdateDisableConfig
4152                     	xdef	_TIM2_ITConfig
4153                     	xdef	_TIM2_Cmd
4154                     	xdef	_TIM2_PWMIConfig
4155                     	xdef	_TIM2_ICInit
4156                     	xdef	_TIM2_OC3Init
4157                     	xdef	_TIM2_OC2Init
4158                     	xdef	_TIM2_OC1Init
4159                     	xdef	_TIM2_TimeBaseInit
4160                     	xdef	_TIM2_DeInit
4179                     	end
