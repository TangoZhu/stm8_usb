   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  48                     ; 52 void TIM1_DeInit(void)
  48                     ; 53 {
  50                     .text:	section	.text,new
  51  0000               _TIM1_DeInit:
  55                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  57  0000 725f5250      	clr	21072
  58                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  60  0004 725f5251      	clr	21073
  61                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  63  0008 725f5252      	clr	21074
  64                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  66  000c 725f5253      	clr	21075
  67                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  69  0010 725f5254      	clr	21076
  70                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  72  0014 725f5256      	clr	21078
  73                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  75  0018 725f525c      	clr	21084
  76                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  78  001c 725f525d      	clr	21085
  79                     ; 64     TIM1->CCMR1 = 0x01;
  81  0020 35015258      	mov	21080,#1
  82                     ; 65     TIM1->CCMR2 = 0x01;
  84  0024 35015259      	mov	21081,#1
  85                     ; 66     TIM1->CCMR3 = 0x01;
  87  0028 3501525a      	mov	21082,#1
  88                     ; 67     TIM1->CCMR4 = 0x01;
  90  002c 3501525b      	mov	21083,#1
  91                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  93  0030 725f525c      	clr	21084
  94                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  96  0034 725f525d      	clr	21085
  97                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  99  0038 725f5258      	clr	21080
 100                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 102  003c 725f5259      	clr	21081
 103                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 105  0040 725f525a      	clr	21082
 106                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 108  0044 725f525b      	clr	21083
 109                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 111  0048 725f525e      	clr	21086
 112                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 114  004c 725f525f      	clr	21087
 115                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 117  0050 725f5260      	clr	21088
 118                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 120  0054 725f5261      	clr	21089
 121                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 123  0058 35ff5262      	mov	21090,#255
 124                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 126  005c 35ff5263      	mov	21091,#255
 127                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 129  0060 725f5265      	clr	21093
 130                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 132  0064 725f5266      	clr	21094
 133                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 135  0068 725f5267      	clr	21095
 136                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 138  006c 725f5268      	clr	21096
 139                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 141  0070 725f5269      	clr	21097
 142                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 144  0074 725f526a      	clr	21098
 145                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 147  0078 725f526b      	clr	21099
 148                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 150  007c 725f526c      	clr	21100
 151                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 153  0080 725f526f      	clr	21103
 154                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 156  0084 35015257      	mov	21079,#1
 157                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 159  0088 725f526e      	clr	21102
 160                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 162  008c 725f526d      	clr	21101
 163                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 165  0090 725f5264      	clr	21092
 166                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 168  0094 725f5255      	clr	21077
 169                     ; 95 }
 172  0098 81            	ret	
 275                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 275                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 275                     ; 107                        uint16_t TIM1_Period,
 275                     ; 108                        uint8_t TIM1_RepetitionCounter)
 275                     ; 109 {
 276                     .text:	section	.text,new
 277  0000               _TIM1_TimeBaseInit:
 279  0000 89            	pushw	x
 280       00000000      OFST:	set	0
 283                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 285                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 287  0001 7b06          	ld	a,(OFST+6,sp)
 288  0003 c75262        	ld	21090,a
 289                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 291  0006 7b07          	ld	a,(OFST+7,sp)
 292  0008 c75263        	ld	21091,a
 293                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 295  000b 9e            	ld	a,xh
 296  000c c75260        	ld	21088,a
 297                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 299  000f 9f            	ld	a,xl
 300  0010 c75261        	ld	21089,a
 301                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 301                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 303  0013 c65250        	ld	a,21072
 304  0016 a48f          	and	a,#143
 305  0018 1a05          	or	a,(OFST+5,sp)
 306  001a c75250        	ld	21072,a
 307                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 309  001d 7b08          	ld	a,(OFST+8,sp)
 310  001f c75264        	ld	21092,a
 311                     ; 129 }
 314  0022 85            	popw	x
 315  0023 81            	ret	
 598                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 598                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 598                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 598                     ; 153                   uint16_t TIM1_Pulse,
 598                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 598                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 598                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 598                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 598                     ; 158 {
 599                     .text:	section	.text,new
 600  0000               _TIM1_OC1Init:
 602  0000 89            	pushw	x
 603  0001 5203          	subw	sp,#3
 604       00000003      OFST:	set	3
 607                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 609                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 611                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 613                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 615                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 617                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 619                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 621                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 621                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 623  0003 c6525c        	ld	a,21084
 624  0006 a4f0          	and	a,#240
 625  0008 c7525c        	ld	21084,a
 626                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 626                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 626                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 626                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 628  000b 7b0c          	ld	a,(OFST+9,sp)
 629  000d a408          	and	a,#8
 630  000f 6b03          	ld	(OFST+0,sp),a
 631  0011 7b0b          	ld	a,(OFST+8,sp)
 632  0013 a402          	and	a,#2
 633  0015 1a03          	or	a,(OFST+0,sp)
 634  0017 6b02          	ld	(OFST-1,sp),a
 635  0019 7b08          	ld	a,(OFST+5,sp)
 636  001b a404          	and	a,#4
 637  001d 6b01          	ld	(OFST-2,sp),a
 638  001f 9f            	ld	a,xl
 639  0020 a401          	and	a,#1
 640  0022 1a01          	or	a,(OFST-2,sp)
 641  0024 1a02          	or	a,(OFST-1,sp)
 642  0026 ca525c        	or	a,21084
 643  0029 c7525c        	ld	21084,a
 644                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 644                     ; 181                             (uint8_t)TIM1_OCMode);
 646  002c c65258        	ld	a,21080
 647  002f a48f          	and	a,#143
 648  0031 1a04          	or	a,(OFST+1,sp)
 649  0033 c75258        	ld	21080,a
 650                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 652  0036 c6526f        	ld	a,21103
 653  0039 a4fc          	and	a,#252
 654  003b c7526f        	ld	21103,a
 655                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 655                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 657  003e 7b0e          	ld	a,(OFST+11,sp)
 658  0040 a402          	and	a,#2
 659  0042 6b03          	ld	(OFST+0,sp),a
 660  0044 7b0d          	ld	a,(OFST+10,sp)
 661  0046 a401          	and	a,#1
 662  0048 1a03          	or	a,(OFST+0,sp)
 663  004a ca526f        	or	a,21103
 664  004d c7526f        	ld	21103,a
 665                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 667  0050 7b09          	ld	a,(OFST+6,sp)
 668  0052 c75265        	ld	21093,a
 669                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 671  0055 7b0a          	ld	a,(OFST+7,sp)
 672  0057 c75266        	ld	21094,a
 673                     ; 192 }
 676  005a 5b05          	addw	sp,#5
 677  005c 81            	ret	
 779                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 779                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 779                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 779                     ; 216                   uint16_t TIM1_Pulse,
 779                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 779                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 779                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 779                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 779                     ; 221 {
 780                     .text:	section	.text,new
 781  0000               _TIM1_OC2Init:
 783  0000 89            	pushw	x
 784  0001 5203          	subw	sp,#3
 785       00000003      OFST:	set	3
 788                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 790                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 792                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 794                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 796                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 798                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 800                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 802                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 802                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 804  0003 c6525c        	ld	a,21084
 805  0006 a40f          	and	a,#15
 806  0008 c7525c        	ld	21084,a
 807                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 807                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 807                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 807                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 809  000b 7b0c          	ld	a,(OFST+9,sp)
 810  000d a480          	and	a,#128
 811  000f 6b03          	ld	(OFST+0,sp),a
 812  0011 7b0b          	ld	a,(OFST+8,sp)
 813  0013 a420          	and	a,#32
 814  0015 1a03          	or	a,(OFST+0,sp)
 815  0017 6b02          	ld	(OFST-1,sp),a
 816  0019 7b08          	ld	a,(OFST+5,sp)
 817  001b a440          	and	a,#64
 818  001d 6b01          	ld	(OFST-2,sp),a
 819  001f 9f            	ld	a,xl
 820  0020 a410          	and	a,#16
 821  0022 1a01          	or	a,(OFST-2,sp)
 822  0024 1a02          	or	a,(OFST-1,sp)
 823  0026 ca525c        	or	a,21084
 824  0029 c7525c        	ld	21084,a
 825                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 825                     ; 245                              (uint8_t)TIM1_OCMode);
 827  002c c65259        	ld	a,21081
 828  002f a48f          	and	a,#143
 829  0031 1a04          	or	a,(OFST+1,sp)
 830  0033 c75259        	ld	21081,a
 831                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 833  0036 c6526f        	ld	a,21103
 834  0039 a4f3          	and	a,#243
 835  003b c7526f        	ld	21103,a
 836                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 836                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 838  003e 7b0e          	ld	a,(OFST+11,sp)
 839  0040 a408          	and	a,#8
 840  0042 6b03          	ld	(OFST+0,sp),a
 841  0044 7b0d          	ld	a,(OFST+10,sp)
 842  0046 a404          	and	a,#4
 843  0048 1a03          	or	a,(OFST+0,sp)
 844  004a ca526f        	or	a,21103
 845  004d c7526f        	ld	21103,a
 846                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 848  0050 7b09          	ld	a,(OFST+6,sp)
 849  0052 c75267        	ld	21095,a
 850                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 852  0055 7b0a          	ld	a,(OFST+7,sp)
 853  0057 c75268        	ld	21096,a
 854                     ; 257 }
 857  005a 5b05          	addw	sp,#5
 858  005c 81            	ret	
 960                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 960                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
 960                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 960                     ; 281                   uint16_t TIM1_Pulse,
 960                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 960                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 960                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 960                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 960                     ; 286 {
 961                     .text:	section	.text,new
 962  0000               _TIM1_OC3Init:
 964  0000 89            	pushw	x
 965  0001 5203          	subw	sp,#3
 966       00000003      OFST:	set	3
 969                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 971                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 973                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 975                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 977                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 979                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 981                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 983                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 983                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 985  0003 c6525d        	ld	a,21085
 986  0006 a4f0          	and	a,#240
 987  0008 c7525d        	ld	21085,a
 988                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
 988                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
 988                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
 988                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
 990  000b 7b0c          	ld	a,(OFST+9,sp)
 991  000d a408          	and	a,#8
 992  000f 6b03          	ld	(OFST+0,sp),a
 993  0011 7b0b          	ld	a,(OFST+8,sp)
 994  0013 a402          	and	a,#2
 995  0015 1a03          	or	a,(OFST+0,sp)
 996  0017 6b02          	ld	(OFST-1,sp),a
 997  0019 7b08          	ld	a,(OFST+5,sp)
 998  001b a404          	and	a,#4
 999  001d 6b01          	ld	(OFST-2,sp),a
1000  001f 9f            	ld	a,xl
1001  0020 a401          	and	a,#1
1002  0022 1a01          	or	a,(OFST-2,sp)
1003  0024 1a02          	or	a,(OFST-1,sp)
1004  0026 ca525d        	or	a,21085
1005  0029 c7525d        	ld	21085,a
1006                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1006                     ; 309                              (uint8_t)TIM1_OCMode);
1008  002c c6525a        	ld	a,21082
1009  002f a48f          	and	a,#143
1010  0031 1a04          	or	a,(OFST+1,sp)
1011  0033 c7525a        	ld	21082,a
1012                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1014  0036 c6526f        	ld	a,21103
1015  0039 a4cf          	and	a,#207
1016  003b c7526f        	ld	21103,a
1017                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1017                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1019  003e 7b0e          	ld	a,(OFST+11,sp)
1020  0040 a420          	and	a,#32
1021  0042 6b03          	ld	(OFST+0,sp),a
1022  0044 7b0d          	ld	a,(OFST+10,sp)
1023  0046 a410          	and	a,#16
1024  0048 1a03          	or	a,(OFST+0,sp)
1025  004a ca526f        	or	a,21103
1026  004d c7526f        	ld	21103,a
1027                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1029  0050 7b09          	ld	a,(OFST+6,sp)
1030  0052 c75269        	ld	21097,a
1031                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1033  0055 7b0a          	ld	a,(OFST+7,sp)
1034  0057 c7526a        	ld	21098,a
1035                     ; 321 }
1038  005a 5b05          	addw	sp,#5
1039  005c 81            	ret	
1111                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1111                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1111                     ; 338                   uint16_t TIM1_Pulse,
1111                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1111                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1111                     ; 341 {
1112                     .text:	section	.text,new
1113  0000               _TIM1_OC4Init:
1115  0000 89            	pushw	x
1116  0001 88            	push	a
1117       00000001      OFST:	set	1
1120                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1122                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1124                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1126                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1128                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1130  0002 c6525d        	ld	a,21085
1131  0005 a4cf          	and	a,#207
1132  0007 c7525d        	ld	21085,a
1133                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1133                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1135  000a 7b08          	ld	a,(OFST+7,sp)
1136  000c a420          	and	a,#32
1137  000e 6b01          	ld	(OFST+0,sp),a
1138  0010 9f            	ld	a,xl
1139  0011 a410          	and	a,#16
1140  0013 1a01          	or	a,(OFST+0,sp)
1141  0015 ca525d        	or	a,21085
1142  0018 c7525d        	ld	21085,a
1143                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1143                     ; 356                             TIM1_OCMode);
1145  001b c6525b        	ld	a,21083
1146  001e a48f          	and	a,#143
1147  0020 1a02          	or	a,(OFST+1,sp)
1148  0022 c7525b        	ld	21083,a
1149                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1151  0025 7b09          	ld	a,(OFST+8,sp)
1152  0027 270a          	jreq	L714
1153                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1155  0029 c6526f        	ld	a,21103
1156  002c aadf          	or	a,#223
1157  002e c7526f        	ld	21103,a
1159  0031 2004          	jra	L124
1160  0033               L714:
1161                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1163  0033 721d526f      	bres	21103,#6
1164  0037               L124:
1165                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1167  0037 7b06          	ld	a,(OFST+5,sp)
1168  0039 c7526b        	ld	21099,a
1169                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1171  003c 7b07          	ld	a,(OFST+6,sp)
1172  003e c7526c        	ld	21100,a
1173                     ; 372 }
1176  0041 5b03          	addw	sp,#3
1177  0043 81            	ret	
1380                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1380                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1380                     ; 389                      uint8_t TIM1_DeadTime,
1380                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1380                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1380                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1380                     ; 393 {
1381                     .text:	section	.text,new
1382  0000               _TIM1_BDTRConfig:
1384  0000 89            	pushw	x
1385  0001 88            	push	a
1386       00000001      OFST:	set	1
1389                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1391                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1393                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1395                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1397                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1399                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1401  0002 7b06          	ld	a,(OFST+5,sp)
1402  0004 c7526e        	ld	21102,a
1403                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1403                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1403                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1405  0007 7b07          	ld	a,(OFST+6,sp)
1406  0009 1a08          	or	a,(OFST+7,sp)
1407  000b 1a09          	or	a,(OFST+8,sp)
1408  000d 6b01          	ld	(OFST+0,sp),a
1409  000f 9f            	ld	a,xl
1410  0010 1a02          	or	a,(OFST+1,sp)
1411  0012 1a01          	or	a,(OFST+0,sp)
1412  0014 c7526d        	ld	21101,a
1413                     ; 409 }
1416  0017 5b03          	addw	sp,#3
1417  0019 81            	ret	
1617                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1617                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1617                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1617                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1617                     ; 427                  uint8_t TIM1_ICFilter)
1617                     ; 428 {
1618                     .text:	section	.text,new
1619  0000               _TIM1_ICInit:
1621  0000 89            	pushw	x
1622       00000000      OFST:	set	0
1625                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1627                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1629                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1631                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1633                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1635                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
1637  0001 9e            	ld	a,xh
1638  0002 4d            	tnz	a
1639  0003 2614          	jrne	L546
1640                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
1640                     ; 441                    (uint8_t)TIM1_ICSelection,
1640                     ; 442                    (uint8_t)TIM1_ICFilter);
1642  0005 7b07          	ld	a,(OFST+7,sp)
1643  0007 88            	push	a
1644  0008 7b06          	ld	a,(OFST+6,sp)
1645  000a 97            	ld	xl,a
1646  000b 7b03          	ld	a,(OFST+3,sp)
1647  000d 95            	ld	xh,a
1648  000e cd0000        	call	L3_TI1_Config
1650  0011 84            	pop	a
1651                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1653  0012 7b06          	ld	a,(OFST+6,sp)
1654  0014 cd0000        	call	_TIM1_SetIC1Prescaler
1657  0017 2044          	jra	L746
1658  0019               L546:
1659                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
1661  0019 7b01          	ld	a,(OFST+1,sp)
1662  001b a101          	cp	a,#1
1663  001d 2614          	jrne	L156
1664                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
1664                     ; 450                    (uint8_t)TIM1_ICSelection,
1664                     ; 451                    (uint8_t)TIM1_ICFilter);
1666  001f 7b07          	ld	a,(OFST+7,sp)
1667  0021 88            	push	a
1668  0022 7b06          	ld	a,(OFST+6,sp)
1669  0024 97            	ld	xl,a
1670  0025 7b03          	ld	a,(OFST+3,sp)
1671  0027 95            	ld	xh,a
1672  0028 cd0000        	call	L5_TI2_Config
1674  002b 84            	pop	a
1675                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1677  002c 7b06          	ld	a,(OFST+6,sp)
1678  002e cd0000        	call	_TIM1_SetIC2Prescaler
1681  0031 202a          	jra	L746
1682  0033               L156:
1683                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
1685  0033 a102          	cp	a,#2
1686  0035 2614          	jrne	L556
1687                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
1687                     ; 459                    (uint8_t)TIM1_ICSelection,
1687                     ; 460                    (uint8_t)TIM1_ICFilter);
1689  0037 7b07          	ld	a,(OFST+7,sp)
1690  0039 88            	push	a
1691  003a 7b06          	ld	a,(OFST+6,sp)
1692  003c 97            	ld	xl,a
1693  003d 7b03          	ld	a,(OFST+3,sp)
1694  003f 95            	ld	xh,a
1695  0040 cd0000        	call	L7_TI3_Config
1697  0043 84            	pop	a
1698                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1700  0044 7b06          	ld	a,(OFST+6,sp)
1701  0046 cd0000        	call	_TIM1_SetIC3Prescaler
1704  0049 2012          	jra	L746
1705  004b               L556:
1706                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
1706                     ; 468                    (uint8_t)TIM1_ICSelection,
1706                     ; 469                    (uint8_t)TIM1_ICFilter);
1708  004b 7b07          	ld	a,(OFST+7,sp)
1709  004d 88            	push	a
1710  004e 7b06          	ld	a,(OFST+6,sp)
1711  0050 97            	ld	xl,a
1712  0051 7b03          	ld	a,(OFST+3,sp)
1713  0053 95            	ld	xh,a
1714  0054 cd0000        	call	L11_TI4_Config
1716  0057 84            	pop	a
1717                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1719  0058 7b06          	ld	a,(OFST+6,sp)
1720  005a cd0000        	call	_TIM1_SetIC4Prescaler
1722  005d               L746:
1723                     ; 474 }
1726  005d 85            	popw	x
1727  005e 81            	ret	
1817                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1817                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1817                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1817                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1817                     ; 494                      uint8_t TIM1_ICFilter)
1817                     ; 495 {
1818                     .text:	section	.text,new
1819  0000               _TIM1_PWMIConfig:
1821  0000 89            	pushw	x
1822  0001 89            	pushw	x
1823       00000002      OFST:	set	2
1826                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1828                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1830                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1832                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1834                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1836                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1838                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1840  0002 9f            	ld	a,xl
1841  0003 4a            	dec	a
1842  0004 2702          	jreq	L127
1843                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
1845  0006 a601          	ld	a,#1
1847  0008               L127:
1848                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
1850  0008 6b01          	ld	(OFST-1,sp),a
1851                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1853  000a 7b07          	ld	a,(OFST+5,sp)
1854  000c 4a            	dec	a
1855  000d 2604          	jrne	L527
1856                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
1858  000f a602          	ld	a,#2
1860  0011 2002          	jra	L727
1861  0013               L527:
1862                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
1864  0013 a601          	ld	a,#1
1865  0015               L727:
1866  0015 6b02          	ld	(OFST+0,sp),a
1867                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
1869  0017 7b03          	ld	a,(OFST+1,sp)
1870  0019 2626          	jrne	L137
1871                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1871                     ; 529                    (uint8_t)TIM1_ICFilter);
1873  001b 7b09          	ld	a,(OFST+7,sp)
1874  001d 88            	push	a
1875  001e 7b08          	ld	a,(OFST+6,sp)
1876  0020 97            	ld	xl,a
1877  0021 7b05          	ld	a,(OFST+3,sp)
1878  0023 95            	ld	xh,a
1879  0024 cd0000        	call	L3_TI1_Config
1881  0027 84            	pop	a
1882                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1884  0028 7b08          	ld	a,(OFST+6,sp)
1885  002a cd0000        	call	_TIM1_SetIC1Prescaler
1887                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1889  002d 7b09          	ld	a,(OFST+7,sp)
1890  002f 88            	push	a
1891  0030 7b03          	ld	a,(OFST+1,sp)
1892  0032 97            	ld	xl,a
1893  0033 7b02          	ld	a,(OFST+0,sp)
1894  0035 95            	ld	xh,a
1895  0036 cd0000        	call	L5_TI2_Config
1897  0039 84            	pop	a
1898                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1900  003a 7b08          	ld	a,(OFST+6,sp)
1901  003c cd0000        	call	_TIM1_SetIC2Prescaler
1904  003f 2024          	jra	L337
1905  0041               L137:
1906                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1906                     ; 544                    (uint8_t)TIM1_ICFilter);
1908  0041 7b09          	ld	a,(OFST+7,sp)
1909  0043 88            	push	a
1910  0044 7b08          	ld	a,(OFST+6,sp)
1911  0046 97            	ld	xl,a
1912  0047 7b05          	ld	a,(OFST+3,sp)
1913  0049 95            	ld	xh,a
1914  004a cd0000        	call	L5_TI2_Config
1916  004d 84            	pop	a
1917                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1919  004e 7b08          	ld	a,(OFST+6,sp)
1920  0050 cd0000        	call	_TIM1_SetIC2Prescaler
1922                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1924  0053 7b09          	ld	a,(OFST+7,sp)
1925  0055 88            	push	a
1926  0056 7b03          	ld	a,(OFST+1,sp)
1927  0058 97            	ld	xl,a
1928  0059 7b02          	ld	a,(OFST+0,sp)
1929  005b 95            	ld	xh,a
1930  005c cd0000        	call	L3_TI1_Config
1932  005f 84            	pop	a
1933                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1935  0060 7b08          	ld	a,(OFST+6,sp)
1936  0062 cd0000        	call	_TIM1_SetIC1Prescaler
1938  0065               L337:
1939                     ; 555 }
1942  0065 5b04          	addw	sp,#4
1943  0067 81            	ret	
1998                     ; 563 void TIM1_Cmd(FunctionalState NewState)
1998                     ; 564 {
1999                     .text:	section	.text,new
2000  0000               _TIM1_Cmd:
2004                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2006                     ; 569     if (NewState != DISABLE)
2008  0000 4d            	tnz	a
2009  0001 2705          	jreq	L367
2010                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2012  0003 72105250      	bset	21072,#0
2015  0007 81            	ret	
2016  0008               L367:
2017                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2019  0008 72115250      	bres	21072,#0
2020                     ; 577 }
2023  000c 81            	ret	
2059                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2059                     ; 586 {
2060                     .text:	section	.text,new
2061  0000               _TIM1_CtrlPWMOutputs:
2065                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2067                     ; 592     if (NewState != DISABLE)
2069  0000 4d            	tnz	a
2070  0001 2705          	jreq	L5001
2071                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2073  0003 721e526d      	bset	21101,#7
2076  0007 81            	ret	
2077  0008               L5001:
2078                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2080  0008 721f526d      	bres	21101,#7
2081                     ; 600 }
2084  000c 81            	ret	
2191                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2191                     ; 620 {
2192                     .text:	section	.text,new
2193  0000               _TIM1_ITConfig:
2195  0000 89            	pushw	x
2196       00000000      OFST:	set	0
2199                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2201                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2203                     ; 625     if (NewState != DISABLE)
2205  0001 9f            	ld	a,xl
2206  0002 4d            	tnz	a
2207  0003 2706          	jreq	L7501
2208                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2210  0005 9e            	ld	a,xh
2211  0006 ca5254        	or	a,21076
2213  0009 2006          	jra	L1601
2214  000b               L7501:
2215                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2217  000b 7b01          	ld	a,(OFST+1,sp)
2218  000d 43            	cpl	a
2219  000e c45254        	and	a,21076
2220  0011               L1601:
2221  0011 c75254        	ld	21076,a
2222                     ; 635 }
2225  0014 85            	popw	x
2226  0015 81            	ret	
2250                     ; 642 void TIM1_InternalClockConfig(void)
2250                     ; 643 {
2251                     .text:	section	.text,new
2252  0000               _TIM1_InternalClockConfig:
2256                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2258  0000 c65252        	ld	a,21074
2259  0003 a4f8          	and	a,#248
2260  0005 c75252        	ld	21074,a
2261                     ; 646 }
2264  0008 81            	ret	
2379                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2379                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2379                     ; 666                               uint8_t ExtTRGFilter)
2379                     ; 667 {
2380                     .text:	section	.text,new
2381  0000               _TIM1_ETRClockMode1Config:
2383  0000 89            	pushw	x
2384       00000000      OFST:	set	0
2387                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2389                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2391                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2393  0001 7b05          	ld	a,(OFST+5,sp)
2394  0003 88            	push	a
2395  0004 7b02          	ld	a,(OFST+2,sp)
2396  0006 95            	ld	xh,a
2397  0007 cd0000        	call	_TIM1_ETRConfig
2399  000a 84            	pop	a
2400                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2400                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2402  000b c65252        	ld	a,21074
2403  000e aa77          	or	a,#119
2404  0010 c75252        	ld	21074,a
2405                     ; 678 }
2408  0013 85            	popw	x
2409  0014 81            	ret	
2465                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2465                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2465                     ; 698                               uint8_t ExtTRGFilter)
2465                     ; 699 {
2466                     .text:	section	.text,new
2467  0000               _TIM1_ETRClockMode2Config:
2469  0000 89            	pushw	x
2470       00000000      OFST:	set	0
2473                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2475                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2477                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2479  0001 7b05          	ld	a,(OFST+5,sp)
2480  0003 88            	push	a
2481  0004 7b02          	ld	a,(OFST+2,sp)
2482  0006 95            	ld	xh,a
2483  0007 cd0000        	call	_TIM1_ETRConfig
2485  000a 721c5253      	bset	21075,#6
2486  000e 84            	pop	a
2487                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
2489                     ; 709 }
2492  000f 85            	popw	x
2493  0010 81            	ret	
2547                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2547                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2547                     ; 729                     uint8_t ExtTRGFilter)
2547                     ; 730 {
2548                     .text:	section	.text,new
2549  0000               _TIM1_ETRConfig:
2551  0000 89            	pushw	x
2552       00000000      OFST:	set	0
2555                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2557                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2557                     ; 735                       (uint8_t)ExtTRGFilter );
2559  0001 9f            	ld	a,xl
2560  0002 1a01          	or	a,(OFST+1,sp)
2561  0004 1a05          	or	a,(OFST+5,sp)
2562  0006 ca5253        	or	a,21075
2563  0009 c75253        	ld	21075,a
2564                     ; 736 }
2567  000c 85            	popw	x
2568  000d 81            	ret	
2655                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2655                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2655                     ; 755                                  uint8_t ICFilter)
2655                     ; 756 {
2656                     .text:	section	.text,new
2657  0000               _TIM1_TIxExternalClockConfig:
2659  0000 89            	pushw	x
2660       00000000      OFST:	set	0
2663                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2665                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2667                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2669                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2671  0001 9e            	ld	a,xh
2672  0002 a160          	cp	a,#96
2673  0004 260e          	jrne	L1521
2674                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2676  0006 7b05          	ld	a,(OFST+5,sp)
2677  0008 88            	push	a
2678  0009 ae0001        	ldw	x,#1
2679  000c 7b03          	ld	a,(OFST+3,sp)
2680  000e 95            	ld	xh,a
2681  000f cd0000        	call	L5_TI2_Config
2684  0012 200c          	jra	L3521
2685  0014               L1521:
2686                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2688  0014 7b05          	ld	a,(OFST+5,sp)
2689  0016 88            	push	a
2690  0017 ae0001        	ldw	x,#1
2691  001a 7b03          	ld	a,(OFST+3,sp)
2692  001c 95            	ld	xh,a
2693  001d cd0000        	call	L3_TI1_Config
2695  0020               L3521:
2696  0020 84            	pop	a
2697                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2699  0021 7b01          	ld	a,(OFST+1,sp)
2700  0023 cd0000        	call	_TIM1_SelectInputTrigger
2702                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2704  0026 c65252        	ld	a,21074
2705  0029 aa07          	or	a,#7
2706  002b c75252        	ld	21074,a
2707                     ; 777 }
2710  002e 85            	popw	x
2711  002f 81            	ret	
2796                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2796                     ; 790 {
2797                     .text:	section	.text,new
2798  0000               _TIM1_SelectInputTrigger:
2800  0000 88            	push	a
2801       00000000      OFST:	set	0
2804                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2806                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2808  0001 c65252        	ld	a,21074
2809  0004 a48f          	and	a,#143
2810  0006 1a01          	or	a,(OFST+1,sp)
2811  0008 c75252        	ld	21074,a
2812                     ; 796 }
2815  000b 84            	pop	a
2816  000c 81            	ret	
2852                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2852                     ; 807 {
2853                     .text:	section	.text,new
2854  0000               _TIM1_UpdateDisableConfig:
2858                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2860                     ; 812     if (NewState != DISABLE)
2862  0000 4d            	tnz	a
2863  0001 2705          	jreq	L1331
2864                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
2866  0003 72125250      	bset	21072,#1
2869  0007 81            	ret	
2870  0008               L1331:
2871                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2873  0008 72135250      	bres	21072,#1
2874                     ; 820 }
2877  000c 81            	ret	
2935                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2935                     ; 831 {
2936                     .text:	section	.text,new
2937  0000               _TIM1_UpdateRequestConfig:
2941                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2943                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2945  0000 4d            	tnz	a
2946  0001 2705          	jreq	L3631
2947                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
2949  0003 72145250      	bset	21072,#2
2952  0007 81            	ret	
2953  0008               L3631:
2954                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
2956  0008 72155250      	bres	21072,#2
2957                     ; 844 }
2960  000c 81            	ret	
2996                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
2996                     ; 854 {
2997                     .text:	section	.text,new
2998  0000               _TIM1_SelectHallSensor:
3002                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3004                     ; 859     if (NewState != DISABLE)
3006  0000 4d            	tnz	a
3007  0001 2705          	jreq	L5041
3008                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3010  0003 721e5251      	bset	21073,#7
3013  0007 81            	ret	
3014  0008               L5041:
3015                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3017  0008 721f5251      	bres	21073,#7
3018                     ; 867 }
3021  000c 81            	ret	
3078                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3078                     ; 879 {
3079                     .text:	section	.text,new
3080  0000               _TIM1_SelectOnePulseMode:
3084                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3086                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3088  0000 4d            	tnz	a
3089  0001 2705          	jreq	L7341
3090                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3092  0003 72165250      	bset	21072,#3
3095  0007 81            	ret	
3096  0008               L7341:
3097                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3099  0008 72175250      	bres	21072,#3
3100                     ; 893 }
3103  000c 81            	ret	
3201                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3201                     ; 910 {
3202                     .text:	section	.text,new
3203  0000               _TIM1_SelectOutputTrigger:
3205  0000 88            	push	a
3206       00000000      OFST:	set	0
3209                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3211                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3211                     ; 916                           (uint8_t) TIM1_TRGOSource);
3213  0001 c65251        	ld	a,21073
3214  0004 a48f          	and	a,#143
3215  0006 1a01          	or	a,(OFST+1,sp)
3216  0008 c75251        	ld	21073,a
3217                     ; 917 }
3220  000b 84            	pop	a
3221  000c 81            	ret	
3295                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3295                     ; 930 {
3296                     .text:	section	.text,new
3297  0000               _TIM1_SelectSlaveMode:
3299  0000 88            	push	a
3300       00000000      OFST:	set	0
3303                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3305                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3305                     ; 937                            (uint8_t)TIM1_SlaveMode);
3307  0001 c65252        	ld	a,21074
3308  0004 a4f8          	and	a,#248
3309  0006 1a01          	or	a,(OFST+1,sp)
3310  0008 c75252        	ld	21074,a
3311                     ; 939 }
3314  000b 84            	pop	a
3315  000c 81            	ret	
3351                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3351                     ; 948 {
3352                     .text:	section	.text,new
3353  0000               _TIM1_SelectMasterSlaveMode:
3357                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3359                     ; 953     if (NewState != DISABLE)
3361  0000 4d            	tnz	a
3362  0001 2705          	jreq	L3551
3363                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
3365  0003 721e5252      	bset	21074,#7
3368  0007 81            	ret	
3369  0008               L3551:
3370                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3372  0008 721f5252      	bres	21074,#7
3373                     ; 961 }
3376  000c 81            	ret	
3462                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3462                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3462                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3462                     ; 986 {
3463                     .text:	section	.text,new
3464  0000               _TIM1_EncoderInterfaceConfig:
3466  0000 89            	pushw	x
3467       00000000      OFST:	set	0
3470                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3472                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3474                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3476                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3478  0001 9f            	ld	a,xl
3479  0002 4d            	tnz	a
3480  0003 2706          	jreq	L7161
3481                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3483  0005 7212525c      	bset	21084,#1
3485  0009 2004          	jra	L1261
3486  000b               L7161:
3487                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3489  000b 7213525c      	bres	21084,#1
3490  000f               L1261:
3491                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3493  000f 7b05          	ld	a,(OFST+5,sp)
3494  0011 2706          	jreq	L3261
3495                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3497  0013 721a525c      	bset	21084,#5
3499  0017 2004          	jra	L5261
3500  0019               L3261:
3501                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3503  0019 721b525c      	bres	21084,#5
3504  001d               L5261:
3505                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3505                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
3507  001d c65252        	ld	a,21074
3508  0020 a4f0          	and	a,#240
3509  0022 1a01          	or	a,(OFST+1,sp)
3510  0024 c75252        	ld	21074,a
3511                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3511                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
3513  0027 c65258        	ld	a,21080
3514  002a a4fc          	and	a,#252
3515  002c aa01          	or	a,#1
3516  002e c75258        	ld	21080,a
3517                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3517                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
3519  0031 c65259        	ld	a,21081
3520  0034 a4fc          	and	a,#252
3521  0036 aa01          	or	a,#1
3522  0038 c75259        	ld	21081,a
3523                     ; 1022 }
3526  003b 85            	popw	x
3527  003c 81            	ret	
3592                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
3592                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3592                     ; 1037 {
3593                     .text:	section	.text,new
3594  0000               _TIM1_PrescalerConfig:
3596  0000 89            	pushw	x
3597       00000000      OFST:	set	0
3600                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3602                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3604  0001 9e            	ld	a,xh
3605  0002 c75260        	ld	21088,a
3606                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
3608  0005 9f            	ld	a,xl
3609  0006 c75261        	ld	21089,a
3610                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3612  0009 7b05          	ld	a,(OFST+5,sp)
3613  000b c75257        	ld	21079,a
3614                     ; 1048 }
3617  000e 85            	popw	x
3618  000f 81            	ret	
3654                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3654                     ; 1062 {
3655                     .text:	section	.text,new
3656  0000               _TIM1_CounterModeConfig:
3658  0000 88            	push	a
3659       00000000      OFST:	set	0
3662                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3664                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3664                     ; 1069                           | (uint8_t)TIM1_CounterMode);
3666  0001 c65250        	ld	a,21072
3667  0004 a48f          	and	a,#143
3668  0006 1a01          	or	a,(OFST+1,sp)
3669  0008 c75250        	ld	21072,a
3670                     ; 1070 }
3673  000b 84            	pop	a
3674  000c 81            	ret	
3732                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3732                     ; 1082 {
3733                     .text:	section	.text,new
3734  0000               _TIM1_ForcedOC1Config:
3736  0000 88            	push	a
3737       00000000      OFST:	set	0
3740                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3742                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3742                     ; 1088                              (uint8_t)TIM1_ForcedAction);
3744  0001 c65258        	ld	a,21080
3745  0004 a48f          	and	a,#143
3746  0006 1a01          	or	a,(OFST+1,sp)
3747  0008 c75258        	ld	21080,a
3748                     ; 1089 }
3751  000b 84            	pop	a
3752  000c 81            	ret	
3788                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3788                     ; 1101 {
3789                     .text:	section	.text,new
3790  0000               _TIM1_ForcedOC2Config:
3792  0000 88            	push	a
3793       00000000      OFST:	set	0
3796                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3798                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3798                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
3800  0001 c65259        	ld	a,21081
3801  0004 a48f          	and	a,#143
3802  0006 1a01          	or	a,(OFST+1,sp)
3803  0008 c75259        	ld	21081,a
3804                     ; 1108 }
3807  000b 84            	pop	a
3808  000c 81            	ret	
3844                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3844                     ; 1121 {
3845                     .text:	section	.text,new
3846  0000               _TIM1_ForcedOC3Config:
3848  0000 88            	push	a
3849       00000000      OFST:	set	0
3852                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3854                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3854                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
3856  0001 c6525a        	ld	a,21082
3857  0004 a48f          	and	a,#143
3858  0006 1a01          	or	a,(OFST+1,sp)
3859  0008 c7525a        	ld	21082,a
3860                     ; 1128 }
3863  000b 84            	pop	a
3864  000c 81            	ret	
3900                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3900                     ; 1141 {
3901                     .text:	section	.text,new
3902  0000               _TIM1_ForcedOC4Config:
3904  0000 88            	push	a
3905       00000000      OFST:	set	0
3908                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3910                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3910                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
3912  0001 c6525b        	ld	a,21083
3913  0004 a48f          	and	a,#143
3914  0006 1a01          	or	a,(OFST+1,sp)
3915  0008 c7525b        	ld	21083,a
3916                     ; 1148 }
3919  000b 84            	pop	a
3920  000c 81            	ret	
3956                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3956                     ; 1158 {
3957                     .text:	section	.text,new
3958  0000               _TIM1_ARRPreloadConfig:
3962                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3964                     ; 1163     if (NewState != DISABLE)
3966  0000 4d            	tnz	a
3967  0001 2705          	jreq	L3102
3968                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
3970  0003 721e5250      	bset	21072,#7
3973  0007 81            	ret	
3974  0008               L3102:
3975                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
3977  0008 721f5250      	bres	21072,#7
3978                     ; 1171 }
3981  000c 81            	ret	
4016                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
4016                     ; 1181 {
4017                     .text:	section	.text,new
4018  0000               _TIM1_SelectCOM:
4022                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4024                     ; 1186     if (NewState != DISABLE)
4026  0000 4d            	tnz	a
4027  0001 2705          	jreq	L5302
4028                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4030  0003 72145251      	bset	21073,#2
4033  0007 81            	ret	
4034  0008               L5302:
4035                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4037  0008 72155251      	bres	21073,#2
4038                     ; 1194 }
4041  000c 81            	ret	
4077                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
4077                     ; 1203 {
4078                     .text:	section	.text,new
4079  0000               _TIM1_CCPreloadControl:
4083                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4085                     ; 1208     if (NewState != DISABLE)
4087  0000 4d            	tnz	a
4088  0001 2705          	jreq	L7502
4089                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
4091  0003 72105251      	bset	21073,#0
4094  0007 81            	ret	
4095  0008               L7502:
4096                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4098  0008 72115251      	bres	21073,#0
4099                     ; 1216 }
4102  000c 81            	ret	
4138                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4138                     ; 1226 {
4139                     .text:	section	.text,new
4140  0000               _TIM1_OC1PreloadConfig:
4144                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4146                     ; 1231     if (NewState != DISABLE)
4148  0000 4d            	tnz	a
4149  0001 2705          	jreq	L1012
4150                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4152  0003 72165258      	bset	21080,#3
4155  0007 81            	ret	
4156  0008               L1012:
4157                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4159  0008 72175258      	bres	21080,#3
4160                     ; 1239 }
4163  000c 81            	ret	
4199                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4199                     ; 1249 {
4200                     .text:	section	.text,new
4201  0000               _TIM1_OC2PreloadConfig:
4205                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4207                     ; 1254     if (NewState != DISABLE)
4209  0000 4d            	tnz	a
4210  0001 2705          	jreq	L3212
4211                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4213  0003 72165259      	bset	21081,#3
4216  0007 81            	ret	
4217  0008               L3212:
4218                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4220  0008 72175259      	bres	21081,#3
4221                     ; 1262 }
4224  000c 81            	ret	
4260                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4260                     ; 1272 {
4261                     .text:	section	.text,new
4262  0000               _TIM1_OC3PreloadConfig:
4266                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4268                     ; 1277     if (NewState != DISABLE)
4270  0000 4d            	tnz	a
4271  0001 2705          	jreq	L5412
4272                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4274  0003 7216525a      	bset	21082,#3
4277  0007 81            	ret	
4278  0008               L5412:
4279                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4281  0008 7217525a      	bres	21082,#3
4282                     ; 1285 }
4285  000c 81            	ret	
4321                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4321                     ; 1296 {
4322                     .text:	section	.text,new
4323  0000               _TIM1_OC4PreloadConfig:
4327                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4329                     ; 1301     if (NewState != DISABLE)
4331  0000 4d            	tnz	a
4332  0001 2705          	jreq	L7612
4333                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4335  0003 7216525b      	bset	21083,#3
4338  0007 81            	ret	
4339  0008               L7612:
4340                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4342  0008 7217525b      	bres	21083,#3
4343                     ; 1309 }
4346  000c 81            	ret	
4381                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
4381                     ; 1318 {
4382                     .text:	section	.text,new
4383  0000               _TIM1_OC1FastConfig:
4387                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4389                     ; 1323     if (NewState != DISABLE)
4391  0000 4d            	tnz	a
4392  0001 2705          	jreq	L1122
4393                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4395  0003 72145258      	bset	21080,#2
4398  0007 81            	ret	
4399  0008               L1122:
4400                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4402  0008 72155258      	bres	21080,#2
4403                     ; 1331 }
4406  000c 81            	ret	
4441                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
4441                     ; 1342 {
4442                     .text:	section	.text,new
4443  0000               _TIM1_OC2FastConfig:
4447                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4449                     ; 1347     if (NewState != DISABLE)
4451  0000 4d            	tnz	a
4452  0001 2705          	jreq	L3322
4453                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4455  0003 72145259      	bset	21081,#2
4458  0007 81            	ret	
4459  0008               L3322:
4460                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4462  0008 72155259      	bres	21081,#2
4463                     ; 1355 }
4466  000c 81            	ret	
4501                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
4501                     ; 1365 {
4502                     .text:	section	.text,new
4503  0000               _TIM1_OC3FastConfig:
4507                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4509                     ; 1370     if (NewState != DISABLE)
4511  0000 4d            	tnz	a
4512  0001 2705          	jreq	L5522
4513                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4515  0003 7214525a      	bset	21082,#2
4518  0007 81            	ret	
4519  0008               L5522:
4520                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4522  0008 7215525a      	bres	21082,#2
4523                     ; 1378 }
4526  000c 81            	ret	
4561                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
4561                     ; 1388 {
4562                     .text:	section	.text,new
4563  0000               _TIM1_OC4FastConfig:
4567                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4569                     ; 1393     if (NewState != DISABLE)
4571  0000 4d            	tnz	a
4572  0001 2705          	jreq	L7722
4573                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4575  0003 7214525b      	bset	21083,#2
4578  0007 81            	ret	
4579  0008               L7722:
4580                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4582  0008 7215525b      	bres	21083,#2
4583                     ; 1401 }
4586  000c 81            	ret	
4691                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4691                     ; 1419 {
4692                     .text:	section	.text,new
4693  0000               _TIM1_GenerateEvent:
4697                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4699                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
4701  0000 c75257        	ld	21079,a
4702                     ; 1425 }
4705  0003 81            	ret	
4741                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4741                     ; 1437 {
4742                     .text:	section	.text,new
4743  0000               _TIM1_OC1PolarityConfig:
4747                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4749                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4751  0000 4d            	tnz	a
4752  0001 2705          	jreq	L3632
4753                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4755  0003 7212525c      	bset	21084,#1
4758  0007 81            	ret	
4759  0008               L3632:
4760                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4762  0008 7213525c      	bres	21084,#1
4763                     ; 1450 }
4766  000c 81            	ret	
4802                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4802                     ; 1462 {
4803                     .text:	section	.text,new
4804  0000               _TIM1_OC1NPolarityConfig:
4808                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4810                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4812  0000 4d            	tnz	a
4813  0001 2705          	jreq	L5042
4814                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4816  0003 7216525c      	bset	21084,#3
4819  0007 81            	ret	
4820  0008               L5042:
4821                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4823  0008 7217525c      	bres	21084,#3
4824                     ; 1475 }
4827  000c 81            	ret	
4863                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4863                     ; 1487 {
4864                     .text:	section	.text,new
4865  0000               _TIM1_OC2PolarityConfig:
4869                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4871                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4873  0000 4d            	tnz	a
4874  0001 2705          	jreq	L7242
4875                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4877  0003 721a525c      	bset	21084,#5
4880  0007 81            	ret	
4881  0008               L7242:
4882                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4884  0008 721b525c      	bres	21084,#5
4885                     ; 1500 }
4888  000c 81            	ret	
4924                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4924                     ; 1511 {
4925                     .text:	section	.text,new
4926  0000               _TIM1_OC2NPolarityConfig:
4930                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4932                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4934  0000 4d            	tnz	a
4935  0001 2705          	jreq	L1542
4936                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4938  0003 721e525c      	bset	21084,#7
4941  0007 81            	ret	
4942  0008               L1542:
4943                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
4945  0008 721f525c      	bres	21084,#7
4946                     ; 1524 }
4949  000c 81            	ret	
4985                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4985                     ; 1536 {
4986                     .text:	section	.text,new
4987  0000               _TIM1_OC3PolarityConfig:
4991                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4993                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4995  0000 4d            	tnz	a
4996  0001 2705          	jreq	L3742
4997                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
4999  0003 7212525d      	bset	21085,#1
5002  0007 81            	ret	
5003  0008               L3742:
5004                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5006  0008 7213525d      	bres	21085,#1
5007                     ; 1549 }
5010  000c 81            	ret	
5046                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5046                     ; 1561 {
5047                     .text:	section	.text,new
5048  0000               _TIM1_OC3NPolarityConfig:
5052                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5054                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5056  0000 4d            	tnz	a
5057  0001 2705          	jreq	L5152
5058                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5060  0003 7216525d      	bset	21085,#3
5063  0007 81            	ret	
5064  0008               L5152:
5065                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5067  0008 7217525d      	bres	21085,#3
5068                     ; 1574 }
5071  000c 81            	ret	
5107                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5107                     ; 1585 {
5108                     .text:	section	.text,new
5109  0000               _TIM1_OC4PolarityConfig:
5113                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5115                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5117  0000 4d            	tnz	a
5118  0001 2705          	jreq	L7352
5119                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5121  0003 721a525d      	bset	21085,#5
5124  0007 81            	ret	
5125  0008               L7352:
5126                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5128  0008 721b525d      	bres	21085,#5
5129                     ; 1598 }
5132  000c 81            	ret	
5177                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5177                     ; 1614 {
5178                     .text:	section	.text,new
5179  0000               _TIM1_CCxCmd:
5181  0000 89            	pushw	x
5182       00000000      OFST:	set	0
5185                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5187                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5189                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
5191  0001 9e            	ld	a,xh
5192  0002 4d            	tnz	a
5193  0003 2610          	jrne	L5652
5194                     ; 1622         if (NewState != DISABLE)
5196  0005 9f            	ld	a,xl
5197  0006 4d            	tnz	a
5198  0007 2706          	jreq	L7652
5199                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5201  0009 7210525c      	bset	21084,#0
5203  000d 203e          	jra	L3752
5204  000f               L7652:
5205                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5207  000f 7211525c      	bres	21084,#0
5208  0013 2038          	jra	L3752
5209  0015               L5652:
5210                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
5212  0015 7b01          	ld	a,(OFST+1,sp)
5213  0017 a101          	cp	a,#1
5214  0019 2610          	jrne	L5752
5215                     ; 1635         if (NewState != DISABLE)
5217  001b 7b02          	ld	a,(OFST+2,sp)
5218  001d 2706          	jreq	L7752
5219                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5221  001f 7218525c      	bset	21084,#4
5223  0023 2028          	jra	L3752
5224  0025               L7752:
5225                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5227  0025 7219525c      	bres	21084,#4
5228  0029 2022          	jra	L3752
5229  002b               L5752:
5230                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
5232  002b a102          	cp	a,#2
5233  002d 2610          	jrne	L5062
5234                     ; 1647         if (NewState != DISABLE)
5236  002f 7b02          	ld	a,(OFST+2,sp)
5237  0031 2706          	jreq	L7062
5238                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5240  0033 7210525d      	bset	21085,#0
5242  0037 2014          	jra	L3752
5243  0039               L7062:
5244                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5246  0039 7211525d      	bres	21085,#0
5247  003d 200e          	jra	L3752
5248  003f               L5062:
5249                     ; 1659         if (NewState != DISABLE)
5251  003f 7b02          	ld	a,(OFST+2,sp)
5252  0041 2706          	jreq	L5162
5253                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5255  0043 7218525d      	bset	21085,#4
5257  0047 2004          	jra	L3752
5258  0049               L5162:
5259                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5261  0049 7219525d      	bres	21085,#4
5262  004d               L3752:
5263                     ; 1668 }
5266  004d 85            	popw	x
5267  004e 81            	ret	
5312                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5312                     ; 1682 {
5313                     .text:	section	.text,new
5314  0000               _TIM1_CCxNCmd:
5316  0000 89            	pushw	x
5317       00000000      OFST:	set	0
5320                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5322                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5324                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
5326  0001 9e            	ld	a,xh
5327  0002 4d            	tnz	a
5328  0003 2610          	jrne	L3462
5329                     ; 1690         if (NewState != DISABLE)
5331  0005 9f            	ld	a,xl
5332  0006 4d            	tnz	a
5333  0007 2706          	jreq	L5462
5334                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5336  0009 7214525c      	bset	21084,#2
5338  000d 2029          	jra	L1562
5339  000f               L5462:
5340                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5342  000f 7215525c      	bres	21084,#2
5343  0013 2023          	jra	L1562
5344  0015               L3462:
5345                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
5347  0015 7b01          	ld	a,(OFST+1,sp)
5348  0017 4a            	dec	a
5349  0018 2610          	jrne	L3562
5350                     ; 1702         if (NewState != DISABLE)
5352  001a 7b02          	ld	a,(OFST+2,sp)
5353  001c 2706          	jreq	L5562
5354                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5356  001e 721c525c      	bset	21084,#6
5358  0022 2014          	jra	L1562
5359  0024               L5562:
5360                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5362  0024 721d525c      	bres	21084,#6
5363  0028 200e          	jra	L1562
5364  002a               L3562:
5365                     ; 1714         if (NewState != DISABLE)
5367  002a 7b02          	ld	a,(OFST+2,sp)
5368  002c 2706          	jreq	L3662
5369                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5371  002e 7214525d      	bset	21085,#2
5373  0032 2004          	jra	L1562
5374  0034               L3662:
5375                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5377  0034 7215525d      	bres	21085,#2
5378  0038               L1562:
5379                     ; 1723 }
5382  0038 85            	popw	x
5383  0039 81            	ret	
5428                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5428                     ; 1748 {
5429                     .text:	section	.text,new
5430  0000               _TIM1_SelectOCxM:
5432  0000 89            	pushw	x
5433       00000000      OFST:	set	0
5436                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5438                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5440                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
5442  0001 9e            	ld	a,xh
5443  0002 4d            	tnz	a
5444  0003 2610          	jrne	L1172
5445                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5447  0005 7211525c      	bres	21084,#0
5448                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5448                     ; 1760                                 | (uint8_t)TIM1_OCMode);
5450  0009 c65258        	ld	a,21080
5451  000c a48f          	and	a,#143
5452  000e 1a02          	or	a,(OFST+2,sp)
5453  0010 c75258        	ld	21080,a
5455  0013 2038          	jra	L3172
5456  0015               L1172:
5457                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
5459  0015 7b01          	ld	a,(OFST+1,sp)
5460  0017 a101          	cp	a,#1
5461  0019 2610          	jrne	L5172
5462                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5464  001b 7219525c      	bres	21084,#4
5465                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5465                     ; 1769                                 | (uint8_t)TIM1_OCMode);
5467  001f c65259        	ld	a,21081
5468  0022 a48f          	and	a,#143
5469  0024 1a02          	or	a,(OFST+2,sp)
5470  0026 c75259        	ld	21081,a
5472  0029 2022          	jra	L3172
5473  002b               L5172:
5474                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
5476  002b a102          	cp	a,#2
5477  002d 2610          	jrne	L1272
5478                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5480  002f 7211525d      	bres	21085,#0
5481                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5481                     ; 1778                                 | (uint8_t)TIM1_OCMode);
5483  0033 c6525a        	ld	a,21082
5484  0036 a48f          	and	a,#143
5485  0038 1a02          	or	a,(OFST+2,sp)
5486  003a c7525a        	ld	21082,a
5488  003d 200e          	jra	L3172
5489  003f               L1272:
5490                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5492  003f 7219525d      	bres	21085,#4
5493                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5493                     ; 1787                                 | (uint8_t)TIM1_OCMode);
5495  0043 c6525b        	ld	a,21083
5496  0046 a48f          	and	a,#143
5497  0048 1a02          	or	a,(OFST+2,sp)
5498  004a c7525b        	ld	21083,a
5499  004d               L3172:
5500                     ; 1789 }
5503  004d 85            	popw	x
5504  004e 81            	ret	
5536                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
5536                     ; 1799 {
5537                     .text:	section	.text,new
5538  0000               _TIM1_SetCounter:
5542                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
5544  0000 9e            	ld	a,xh
5545  0001 c7525e        	ld	21086,a
5546                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
5548  0004 9f            	ld	a,xl
5549  0005 c7525f        	ld	21087,a
5550                     ; 1804 }
5553  0008 81            	ret	
5585                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
5585                     ; 1814 {
5586                     .text:	section	.text,new
5587  0000               _TIM1_SetAutoreload:
5591                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5593  0000 9e            	ld	a,xh
5594  0001 c75262        	ld	21090,a
5595                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
5597  0004 9f            	ld	a,xl
5598  0005 c75263        	ld	21091,a
5599                     ; 1820 }
5602  0008 81            	ret	
5634                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
5634                     ; 1830 {
5635                     .text:	section	.text,new
5636  0000               _TIM1_SetCompare1:
5640                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5642  0000 9e            	ld	a,xh
5643  0001 c75265        	ld	21093,a
5644                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
5646  0004 9f            	ld	a,xl
5647  0005 c75266        	ld	21094,a
5648                     ; 1835 }
5651  0008 81            	ret	
5683                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
5683                     ; 1845 {
5684                     .text:	section	.text,new
5685  0000               _TIM1_SetCompare2:
5689                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5691  0000 9e            	ld	a,xh
5692  0001 c75267        	ld	21095,a
5693                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
5695  0004 9f            	ld	a,xl
5696  0005 c75268        	ld	21096,a
5697                     ; 1850 }
5700  0008 81            	ret	
5732                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
5732                     ; 1860 {
5733                     .text:	section	.text,new
5734  0000               _TIM1_SetCompare3:
5738                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5740  0000 9e            	ld	a,xh
5741  0001 c75269        	ld	21097,a
5742                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
5744  0004 9f            	ld	a,xl
5745  0005 c7526a        	ld	21098,a
5746                     ; 1865 }
5749  0008 81            	ret	
5781                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
5781                     ; 1875 {
5782                     .text:	section	.text,new
5783  0000               _TIM1_SetCompare4:
5787                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5789  0000 9e            	ld	a,xh
5790  0001 c7526b        	ld	21099,a
5791                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
5793  0004 9f            	ld	a,xl
5794  0005 c7526c        	ld	21100,a
5795                     ; 1879 }
5798  0008 81            	ret	
5834                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5834                     ; 1893 {
5835                     .text:	section	.text,new
5836  0000               _TIM1_SetIC1Prescaler:
5838  0000 88            	push	a
5839       00000000      OFST:	set	0
5842                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5844                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5844                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
5846  0001 c65258        	ld	a,21080
5847  0004 a4f3          	and	a,#243
5848  0006 1a01          	or	a,(OFST+1,sp)
5849  0008 c75258        	ld	21080,a
5850                     ; 1901 }
5853  000b 84            	pop	a
5854  000c 81            	ret	
5890                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5890                     ; 1914 {
5891                     .text:	section	.text,new
5892  0000               _TIM1_SetIC2Prescaler:
5894  0000 88            	push	a
5895       00000000      OFST:	set	0
5898                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5900                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5900                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
5902  0001 c65259        	ld	a,21081
5903  0004 a4f3          	and	a,#243
5904  0006 1a01          	or	a,(OFST+1,sp)
5905  0008 c75259        	ld	21081,a
5906                     ; 1922 }
5909  000b 84            	pop	a
5910  000c 81            	ret	
5946                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
5946                     ; 1936 {
5947                     .text:	section	.text,new
5948  0000               _TIM1_SetIC3Prescaler:
5950  0000 88            	push	a
5951       00000000      OFST:	set	0
5954                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
5956                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
5956                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
5958  0001 c6525a        	ld	a,21082
5959  0004 a4f3          	and	a,#243
5960  0006 1a01          	or	a,(OFST+1,sp)
5961  0008 c7525a        	ld	21082,a
5962                     ; 1944 }
5965  000b 84            	pop	a
5966  000c 81            	ret	
6002                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6002                     ; 1957 {
6003                     .text:	section	.text,new
6004  0000               _TIM1_SetIC4Prescaler:
6006  0000 88            	push	a
6007       00000000      OFST:	set	0
6010                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6012                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6012                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
6014  0001 c6525b        	ld	a,21083
6015  0004 a4f3          	and	a,#243
6016  0006 1a01          	or	a,(OFST+1,sp)
6017  0008 c7525b        	ld	21083,a
6018                     ; 1965 }
6021  000b 84            	pop	a
6022  000c 81            	ret	
6068                     ; 1972 uint16_t TIM1_GetCapture1(void)
6068                     ; 1973 {
6069                     .text:	section	.text,new
6070  0000               _TIM1_GetCapture1:
6072  0000 5204          	subw	sp,#4
6073       00000004      OFST:	set	4
6076                     ; 1976     uint16_t tmpccr1 = 0;
6078                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
6082                     ; 1979     tmpccr1h = TIM1->CCR1H;
6084  0002 c65265        	ld	a,21093
6085  0005 6b02          	ld	(OFST-2,sp),a
6086                     ; 1980     tmpccr1l = TIM1->CCR1L;
6088  0007 c65266        	ld	a,21094
6089  000a 6b01          	ld	(OFST-3,sp),a
6090                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
6092  000c 5f            	clrw	x
6093  000d 97            	ld	xl,a
6094  000e 1f03          	ldw	(OFST-1,sp),x
6095                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6097  0010 5f            	clrw	x
6098  0011 7b02          	ld	a,(OFST-2,sp)
6099  0013 97            	ld	xl,a
6100  0014 7b04          	ld	a,(OFST+0,sp)
6101  0016 01            	rrwa	x,a
6102  0017 1a03          	or	a,(OFST-1,sp)
6103  0019 01            	rrwa	x,a
6104                     ; 1985     return (uint16_t)tmpccr1;
6108  001a 5b04          	addw	sp,#4
6109  001c 81            	ret	
6155                     ; 1993 uint16_t TIM1_GetCapture2(void)
6155                     ; 1994 {
6156                     .text:	section	.text,new
6157  0000               _TIM1_GetCapture2:
6159  0000 5204          	subw	sp,#4
6160       00000004      OFST:	set	4
6163                     ; 1997     uint16_t tmpccr2 = 0;
6165                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
6169                     ; 2000     tmpccr2h = TIM1->CCR2H;
6171  0002 c65267        	ld	a,21095
6172  0005 6b02          	ld	(OFST-2,sp),a
6173                     ; 2001     tmpccr2l = TIM1->CCR2L;
6175  0007 c65268        	ld	a,21096
6176  000a 6b01          	ld	(OFST-3,sp),a
6177                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
6179  000c 5f            	clrw	x
6180  000d 97            	ld	xl,a
6181  000e 1f03          	ldw	(OFST-1,sp),x
6182                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6184  0010 5f            	clrw	x
6185  0011 7b02          	ld	a,(OFST-2,sp)
6186  0013 97            	ld	xl,a
6187  0014 7b04          	ld	a,(OFST+0,sp)
6188  0016 01            	rrwa	x,a
6189  0017 1a03          	or	a,(OFST-1,sp)
6190  0019 01            	rrwa	x,a
6191                     ; 2006     return (uint16_t)tmpccr2;
6195  001a 5b04          	addw	sp,#4
6196  001c 81            	ret	
6242                     ; 2014 uint16_t TIM1_GetCapture3(void)
6242                     ; 2015 {
6243                     .text:	section	.text,new
6244  0000               _TIM1_GetCapture3:
6246  0000 5204          	subw	sp,#4
6247       00000004      OFST:	set	4
6250                     ; 2017     uint16_t tmpccr3 = 0;
6252                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
6256                     ; 2020     tmpccr3h = TIM1->CCR3H;
6258  0002 c65269        	ld	a,21097
6259  0005 6b02          	ld	(OFST-2,sp),a
6260                     ; 2021     tmpccr3l = TIM1->CCR3L;
6262  0007 c6526a        	ld	a,21098
6263  000a 6b01          	ld	(OFST-3,sp),a
6264                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
6266  000c 5f            	clrw	x
6267  000d 97            	ld	xl,a
6268  000e 1f03          	ldw	(OFST-1,sp),x
6269                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6271  0010 5f            	clrw	x
6272  0011 7b02          	ld	a,(OFST-2,sp)
6273  0013 97            	ld	xl,a
6274  0014 7b04          	ld	a,(OFST+0,sp)
6275  0016 01            	rrwa	x,a
6276  0017 1a03          	or	a,(OFST-1,sp)
6277  0019 01            	rrwa	x,a
6278                     ; 2026     return (uint16_t)tmpccr3;
6282  001a 5b04          	addw	sp,#4
6283  001c 81            	ret	
6329                     ; 2034 uint16_t TIM1_GetCapture4(void)
6329                     ; 2035 {
6330                     .text:	section	.text,new
6331  0000               _TIM1_GetCapture4:
6333  0000 5204          	subw	sp,#4
6334       00000004      OFST:	set	4
6337                     ; 2037     uint16_t tmpccr4 = 0;
6339                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
6343                     ; 2040     tmpccr4h = TIM1->CCR4H;
6345  0002 c6526b        	ld	a,21099
6346  0005 6b02          	ld	(OFST-2,sp),a
6347                     ; 2041     tmpccr4l = TIM1->CCR4L;
6349  0007 c6526c        	ld	a,21100
6350  000a 6b01          	ld	(OFST-3,sp),a
6351                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
6353  000c 5f            	clrw	x
6354  000d 97            	ld	xl,a
6355  000e 1f03          	ldw	(OFST-1,sp),x
6356                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6358  0010 5f            	clrw	x
6359  0011 7b02          	ld	a,(OFST-2,sp)
6360  0013 97            	ld	xl,a
6361  0014 7b04          	ld	a,(OFST+0,sp)
6362  0016 01            	rrwa	x,a
6363  0017 1a03          	or	a,(OFST-1,sp)
6364  0019 01            	rrwa	x,a
6365                     ; 2046     return (uint16_t)tmpccr4;
6369  001a 5b04          	addw	sp,#4
6370  001c 81            	ret	
6402                     ; 2054 uint16_t TIM1_GetCounter(void)
6402                     ; 2055 {
6403                     .text:	section	.text,new
6404  0000               _TIM1_GetCounter:
6406  0000 89            	pushw	x
6407       00000002      OFST:	set	2
6410                     ; 2056   uint16_t tmpcntr = 0;
6412                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6414  0001 c6525e        	ld	a,21086
6415  0004 97            	ld	xl,a
6416  0005 4f            	clr	a
6417  0006 02            	rlwa	x,a
6418  0007 1f01          	ldw	(OFST-1,sp),x
6419                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6421  0009 5f            	clrw	x
6422  000a c6525f        	ld	a,21087
6423  000d 97            	ld	xl,a
6424  000e 01            	rrwa	x,a
6425  000f 1a02          	or	a,(OFST+0,sp)
6426  0011 01            	rrwa	x,a
6427  0012 1a01          	or	a,(OFST-1,sp)
6428  0014 01            	rrwa	x,a
6431  0015 5b02          	addw	sp,#2
6432  0017 81            	ret	
6464                     ; 2069 uint16_t TIM1_GetPrescaler(void)
6464                     ; 2070 {
6465                     .text:	section	.text,new
6466  0000               _TIM1_GetPrescaler:
6468  0000 89            	pushw	x
6469       00000002      OFST:	set	2
6472                     ; 2071    uint16_t temp = 0;
6474                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
6476  0001 c65260        	ld	a,21088
6477  0004 97            	ld	xl,a
6478  0005 4f            	clr	a
6479  0006 02            	rlwa	x,a
6480  0007 1f01          	ldw	(OFST-1,sp),x
6481                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6483  0009 5f            	clrw	x
6484  000a c65261        	ld	a,21089
6485  000d 97            	ld	xl,a
6486  000e 01            	rrwa	x,a
6487  000f 1a02          	or	a,(OFST+0,sp)
6488  0011 01            	rrwa	x,a
6489  0012 1a01          	or	a,(OFST-1,sp)
6490  0014 01            	rrwa	x,a
6493  0015 5b02          	addw	sp,#2
6494  0017 81            	ret	
6664                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6664                     ; 2098 {
6665                     .text:	section	.text,new
6666  0000               _TIM1_GetFlagStatus:
6668  0000 89            	pushw	x
6669  0001 89            	pushw	x
6670       00000002      OFST:	set	2
6673                     ; 2099     FlagStatus bitstatus = RESET;
6675                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6679                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6681                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6683  0002 9f            	ld	a,xl
6684  0003 c45255        	and	a,21077
6685  0006 6b01          	ld	(OFST-1,sp),a
6686                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6688  0008 7b03          	ld	a,(OFST+1,sp)
6689  000a 6b02          	ld	(OFST+0,sp),a
6690                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6692  000c c45256        	and	a,21078
6693  000f 1a01          	or	a,(OFST-1,sp)
6694  0011 2702          	jreq	L7433
6695                     ; 2110         bitstatus = SET;
6697  0013 a601          	ld	a,#1
6699  0015               L7433:
6700                     ; 2114         bitstatus = RESET;
6702                     ; 2116     return (FlagStatus)(bitstatus);
6706  0015 5b04          	addw	sp,#4
6707  0017 81            	ret	
6742                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6742                     ; 2138 {
6743                     .text:	section	.text,new
6744  0000               _TIM1_ClearFlag:
6746  0000 89            	pushw	x
6747       00000000      OFST:	set	0
6750                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6752                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6754  0001 9f            	ld	a,xl
6755  0002 43            	cpl	a
6756  0003 c75255        	ld	21077,a
6757                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6757                     ; 2145                           (uint8_t)0x1E);
6759  0006 7b01          	ld	a,(OFST+1,sp)
6760  0008 43            	cpl	a
6761  0009 a41e          	and	a,#30
6762  000b c75256        	ld	21078,a
6763                     ; 2146 }
6766  000e 85            	popw	x
6767  000f 81            	ret	
6827                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6827                     ; 2163 {
6828                     .text:	section	.text,new
6829  0000               _TIM1_GetITStatus:
6831  0000 88            	push	a
6832  0001 89            	pushw	x
6833       00000002      OFST:	set	2
6836                     ; 2164     ITStatus bitstatus = RESET;
6838                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
6842                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6844                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
6846  0002 c45255        	and	a,21077
6847  0005 6b01          	ld	(OFST-1,sp),a
6848                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
6850  0007 c65254        	ld	a,21076
6851  000a 1403          	and	a,(OFST+1,sp)
6852  000c 6b02          	ld	(OFST+0,sp),a
6853                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
6855  000e 7b01          	ld	a,(OFST-1,sp)
6856  0010 2708          	jreq	L7143
6858  0012 7b02          	ld	a,(OFST+0,sp)
6859  0014 2704          	jreq	L7143
6860                     ; 2176         bitstatus = SET;
6862  0016 a601          	ld	a,#1
6864  0018 2001          	jra	L1243
6865  001a               L7143:
6866                     ; 2180         bitstatus = RESET;
6868  001a 4f            	clr	a
6869  001b               L1243:
6870                     ; 2182     return (ITStatus)(bitstatus);
6874  001b 5b03          	addw	sp,#3
6875  001d 81            	ret	
6911                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
6911                     ; 2200 {
6912                     .text:	section	.text,new
6913  0000               _TIM1_ClearITPendingBit:
6917                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
6919                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
6921  0000 43            	cpl	a
6922  0001 c75255        	ld	21077,a
6923                     ; 2206 }
6926  0004 81            	ret	
6972                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
6972                     ; 2225                        uint8_t TIM1_ICSelection,
6972                     ; 2226                        uint8_t TIM1_ICFilter)
6972                     ; 2227 {
6973                     .text:	section	.text,new
6974  0000               L3_TI1_Config:
6976  0000 89            	pushw	x
6977       00000001      OFST:	set	1
6980                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6982  0001 7211525c      	bres	21084,#0
6983  0005 88            	push	a
6984                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
6984                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
6986  0006 7b06          	ld	a,(OFST+5,sp)
6987  0008 97            	ld	xl,a
6988  0009 a610          	ld	a,#16
6989  000b 42            	mul	x,a
6990  000c 9f            	ld	a,xl
6991  000d 1a03          	or	a,(OFST+2,sp)
6992  000f 6b01          	ld	(OFST+0,sp),a
6993  0011 c65258        	ld	a,21080
6994  0014 a40c          	and	a,#12
6995  0016 1a01          	or	a,(OFST+0,sp)
6996  0018 c75258        	ld	21080,a
6997                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
6999  001b 7b02          	ld	a,(OFST+1,sp)
7000  001d 2706          	jreq	L1643
7001                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7003  001f 7212525c      	bset	21084,#1
7005  0023 2004          	jra	L3643
7006  0025               L1643:
7007                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7009  0025 7213525c      	bres	21084,#1
7010  0029               L3643:
7011                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7013  0029 7210525c      	bset	21084,#0
7014                     ; 2248 }
7017  002d 5b03          	addw	sp,#3
7018  002f 81            	ret	
7064                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
7064                     ; 2267                        uint8_t TIM1_ICSelection,
7064                     ; 2268                        uint8_t TIM1_ICFilter)
7064                     ; 2269 {
7065                     .text:	section	.text,new
7066  0000               L5_TI2_Config:
7068  0000 89            	pushw	x
7069       00000001      OFST:	set	1
7072                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7074  0001 7219525c      	bres	21084,#4
7075  0005 88            	push	a
7076                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7076                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7078  0006 7b06          	ld	a,(OFST+5,sp)
7079  0008 97            	ld	xl,a
7080  0009 a610          	ld	a,#16
7081  000b 42            	mul	x,a
7082  000c 9f            	ld	a,xl
7083  000d 1a03          	or	a,(OFST+2,sp)
7084  000f 6b01          	ld	(OFST+0,sp),a
7085  0011 c65259        	ld	a,21081
7086  0014 a40c          	and	a,#12
7087  0016 1a01          	or	a,(OFST+0,sp)
7088  0018 c75259        	ld	21081,a
7089                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7091  001b 7b02          	ld	a,(OFST+1,sp)
7092  001d 2706          	jreq	L5053
7093                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7095  001f 721a525c      	bset	21084,#5
7097  0023 2004          	jra	L7053
7098  0025               L5053:
7099                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7101  0025 721b525c      	bres	21084,#5
7102  0029               L7053:
7103                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7105  0029 7218525c      	bset	21084,#4
7106                     ; 2287 }
7109  002d 5b03          	addw	sp,#3
7110  002f 81            	ret	
7156                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
7156                     ; 2306                        uint8_t TIM1_ICSelection,
7156                     ; 2307                        uint8_t TIM1_ICFilter)
7156                     ; 2308 {
7157                     .text:	section	.text,new
7158  0000               L7_TI3_Config:
7160  0000 89            	pushw	x
7161       00000001      OFST:	set	1
7164                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7166  0001 7211525d      	bres	21085,#0
7167  0005 88            	push	a
7168                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7168                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7170  0006 7b06          	ld	a,(OFST+5,sp)
7171  0008 97            	ld	xl,a
7172  0009 a610          	ld	a,#16
7173  000b 42            	mul	x,a
7174  000c 9f            	ld	a,xl
7175  000d 1a03          	or	a,(OFST+2,sp)
7176  000f 6b01          	ld	(OFST+0,sp),a
7177  0011 c6525a        	ld	a,21082
7178  0014 a40c          	and	a,#12
7179  0016 1a01          	or	a,(OFST+0,sp)
7180  0018 c7525a        	ld	21082,a
7181                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7183  001b 7b02          	ld	a,(OFST+1,sp)
7184  001d 2706          	jreq	L1353
7185                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7187  001f 7212525d      	bset	21085,#1
7189  0023 2004          	jra	L3353
7190  0025               L1353:
7191                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7193  0025 7213525d      	bres	21085,#1
7194  0029               L3353:
7195                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7197  0029 7210525d      	bset	21085,#0
7198                     ; 2327 }
7201  002d 5b03          	addw	sp,#3
7202  002f 81            	ret	
7248                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
7248                     ; 2347                        uint8_t TIM1_ICSelection,
7248                     ; 2348                        uint8_t TIM1_ICFilter)
7248                     ; 2349 {
7249                     .text:	section	.text,new
7250  0000               L11_TI4_Config:
7252  0000 89            	pushw	x
7253       00000001      OFST:	set	1
7256                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7258  0001 7219525d      	bres	21085,#4
7259  0005 88            	push	a
7260                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7260                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7262  0006 7b06          	ld	a,(OFST+5,sp)
7263  0008 97            	ld	xl,a
7264  0009 a610          	ld	a,#16
7265  000b 42            	mul	x,a
7266  000c 9f            	ld	a,xl
7267  000d 1a03          	or	a,(OFST+2,sp)
7268  000f 6b01          	ld	(OFST+0,sp),a
7269  0011 c6525b        	ld	a,21083
7270  0014 a40c          	and	a,#12
7271  0016 1a01          	or	a,(OFST+0,sp)
7272  0018 c7525b        	ld	21083,a
7273                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7275  001b 7b02          	ld	a,(OFST+1,sp)
7276  001d 2706          	jreq	L5553
7277                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7279  001f 721a525d      	bset	21085,#5
7281  0023 2004          	jra	L7553
7282  0025               L5553:
7283                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7285  0025 721b525d      	bres	21085,#5
7286  0029               L7553:
7287                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7289  0029 7218525d      	bset	21085,#4
7290                     ; 2370 }
7293  002d 5b03          	addw	sp,#3
7294  002f 81            	ret	
7307                     	xdef	_TIM1_ClearITPendingBit
7308                     	xdef	_TIM1_GetITStatus
7309                     	xdef	_TIM1_ClearFlag
7310                     	xdef	_TIM1_GetFlagStatus
7311                     	xdef	_TIM1_GetPrescaler
7312                     	xdef	_TIM1_GetCounter
7313                     	xdef	_TIM1_GetCapture4
7314                     	xdef	_TIM1_GetCapture3
7315                     	xdef	_TIM1_GetCapture2
7316                     	xdef	_TIM1_GetCapture1
7317                     	xdef	_TIM1_SetIC4Prescaler
7318                     	xdef	_TIM1_SetIC3Prescaler
7319                     	xdef	_TIM1_SetIC2Prescaler
7320                     	xdef	_TIM1_SetIC1Prescaler
7321                     	xdef	_TIM1_SetCompare4
7322                     	xdef	_TIM1_SetCompare3
7323                     	xdef	_TIM1_SetCompare2
7324                     	xdef	_TIM1_SetCompare1
7325                     	xdef	_TIM1_SetAutoreload
7326                     	xdef	_TIM1_SetCounter
7327                     	xdef	_TIM1_SelectOCxM
7328                     	xdef	_TIM1_CCxNCmd
7329                     	xdef	_TIM1_CCxCmd
7330                     	xdef	_TIM1_OC4PolarityConfig
7331                     	xdef	_TIM1_OC3NPolarityConfig
7332                     	xdef	_TIM1_OC3PolarityConfig
7333                     	xdef	_TIM1_OC2NPolarityConfig
7334                     	xdef	_TIM1_OC2PolarityConfig
7335                     	xdef	_TIM1_OC1NPolarityConfig
7336                     	xdef	_TIM1_OC1PolarityConfig
7337                     	xdef	_TIM1_GenerateEvent
7338                     	xdef	_TIM1_OC4FastConfig
7339                     	xdef	_TIM1_OC3FastConfig
7340                     	xdef	_TIM1_OC2FastConfig
7341                     	xdef	_TIM1_OC1FastConfig
7342                     	xdef	_TIM1_OC4PreloadConfig
7343                     	xdef	_TIM1_OC3PreloadConfig
7344                     	xdef	_TIM1_OC2PreloadConfig
7345                     	xdef	_TIM1_OC1PreloadConfig
7346                     	xdef	_TIM1_CCPreloadControl
7347                     	xdef	_TIM1_SelectCOM
7348                     	xdef	_TIM1_ARRPreloadConfig
7349                     	xdef	_TIM1_ForcedOC4Config
7350                     	xdef	_TIM1_ForcedOC3Config
7351                     	xdef	_TIM1_ForcedOC2Config
7352                     	xdef	_TIM1_ForcedOC1Config
7353                     	xdef	_TIM1_CounterModeConfig
7354                     	xdef	_TIM1_PrescalerConfig
7355                     	xdef	_TIM1_EncoderInterfaceConfig
7356                     	xdef	_TIM1_SelectMasterSlaveMode
7357                     	xdef	_TIM1_SelectSlaveMode
7358                     	xdef	_TIM1_SelectOutputTrigger
7359                     	xdef	_TIM1_SelectOnePulseMode
7360                     	xdef	_TIM1_SelectHallSensor
7361                     	xdef	_TIM1_UpdateRequestConfig
7362                     	xdef	_TIM1_UpdateDisableConfig
7363                     	xdef	_TIM1_SelectInputTrigger
7364                     	xdef	_TIM1_TIxExternalClockConfig
7365                     	xdef	_TIM1_ETRConfig
7366                     	xdef	_TIM1_ETRClockMode2Config
7367                     	xdef	_TIM1_ETRClockMode1Config
7368                     	xdef	_TIM1_InternalClockConfig
7369                     	xdef	_TIM1_ITConfig
7370                     	xdef	_TIM1_CtrlPWMOutputs
7371                     	xdef	_TIM1_Cmd
7372                     	xdef	_TIM1_PWMIConfig
7373                     	xdef	_TIM1_ICInit
7374                     	xdef	_TIM1_BDTRConfig
7375                     	xdef	_TIM1_OC4Init
7376                     	xdef	_TIM1_OC3Init
7377                     	xdef	_TIM1_OC2Init
7378                     	xdef	_TIM1_OC1Init
7379                     	xdef	_TIM1_TimeBaseInit
7380                     	xdef	_TIM1_DeInit
7399                     	end
