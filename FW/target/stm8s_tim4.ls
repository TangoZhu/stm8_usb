   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  48                     ; 43 void TIM4_DeInit(void)
  48                     ; 44 {
  50                     .text:	section	.text,new
  51  0000               _TIM4_DeInit:
  55                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  57  0000 725f5340      	clr	21312
  58                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  60  0004 725f5343      	clr	21315
  61                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  63  0008 725f5346      	clr	21318
  64                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  66  000c 725f5347      	clr	21319
  67                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  69  0010 35ff5348      	mov	21320,#255
  70                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  72  0014 725f5344      	clr	21316
  73                     ; 51 }
  76  0018 81            	ret	
 180                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 180                     ; 60 {
 181                     .text:	section	.text,new
 182  0000               _TIM4_TimeBaseInit:
 186                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 188                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 190  0000 9e            	ld	a,xh
 191  0001 c75347        	ld	21319,a
 192                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 194  0004 9f            	ld	a,xl
 195  0005 c75348        	ld	21320,a
 196                     ; 67 }
 199  0008 81            	ret	
 254                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 254                     ; 78 {
 255                     .text:	section	.text,new
 256  0000               _TIM4_Cmd:
 260                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 262                     ; 83     if (NewState != DISABLE)
 264  0000 4d            	tnz	a
 265  0001 2705          	jreq	L311
 266                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 268  0003 72105340      	bset	21312,#0
 271  0007 81            	ret	
 272  0008               L311:
 273                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 275  0008 72115340      	bres	21312,#0
 276                     ; 91 }
 279  000c 81            	ret	
 337                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 337                     ; 104 {
 338                     .text:	section	.text,new
 339  0000               _TIM4_ITConfig:
 341  0000 89            	pushw	x
 342       00000000      OFST:	set	0
 345                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 347                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 349                     ; 109     if (NewState != DISABLE)
 351  0001 9f            	ld	a,xl
 352  0002 4d            	tnz	a
 353  0003 2706          	jreq	L741
 354                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 356  0005 9e            	ld	a,xh
 357  0006 ca5343        	or	a,21315
 359  0009 2006          	jra	L151
 360  000b               L741:
 361                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 363  000b 7b01          	ld	a,(OFST+1,sp)
 364  000d 43            	cpl	a
 365  000e c45343        	and	a,21315
 366  0011               L151:
 367  0011 c75343        	ld	21315,a
 368                     ; 119 }
 371  0014 85            	popw	x
 372  0015 81            	ret	
 408                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 408                     ; 128 {
 409                     .text:	section	.text,new
 410  0000               _TIM4_UpdateDisableConfig:
 414                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 416                     ; 133     if (NewState != DISABLE)
 418  0000 4d            	tnz	a
 419  0001 2705          	jreq	L171
 420                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 422  0003 72125340      	bset	21312,#1
 425  0007 81            	ret	
 426  0008               L171:
 427                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 429  0008 72135340      	bres	21312,#1
 430                     ; 141 }
 433  000c 81            	ret	
 491                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 491                     ; 152 {
 492                     .text:	section	.text,new
 493  0000               _TIM4_UpdateRequestConfig:
 497                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 499                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 501  0000 4d            	tnz	a
 502  0001 2705          	jreq	L322
 503                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 505  0003 72145340      	bset	21312,#2
 508  0007 81            	ret	
 509  0008               L322:
 510                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 512  0008 72155340      	bres	21312,#2
 513                     ; 165 }
 516  000c 81            	ret	
 573                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 573                     ; 176 {
 574                     .text:	section	.text,new
 575  0000               _TIM4_SelectOnePulseMode:
 579                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 581                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 583  0000 4d            	tnz	a
 584  0001 2705          	jreq	L552
 585                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 587  0003 72165340      	bset	21312,#3
 590  0007 81            	ret	
 591  0008               L552:
 592                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 594  0008 72175340      	bres	21312,#3
 595                     ; 190 }
 598  000c 81            	ret	
 666                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 666                     ; 213 {
 667                     .text:	section	.text,new
 668  0000               _TIM4_PrescalerConfig:
 672                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 674                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 676                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 678  0000 9e            	ld	a,xh
 679  0001 c75347        	ld	21319,a
 680                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 682  0004 9f            	ld	a,xl
 683  0005 c75345        	ld	21317,a
 684                     ; 223 }
 687  0008 81            	ret	
 723                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 723                     ; 232 {
 724                     .text:	section	.text,new
 725  0000               _TIM4_ARRPreloadConfig:
 729                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 731                     ; 237     if (NewState != DISABLE)
 733  0000 4d            	tnz	a
 734  0001 2705          	jreq	L133
 735                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 737  0003 721e5340      	bset	21312,#7
 740  0007 81            	ret	
 741  0008               L133:
 742                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 744  0008 721f5340      	bres	21312,#7
 745                     ; 245 }
 748  000c 81            	ret	
 797                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 797                     ; 255 {
 798                     .text:	section	.text,new
 799  0000               _TIM4_GenerateEvent:
 803                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 805                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
 807  0000 c75345        	ld	21317,a
 808                     ; 261 }
 811  0003 81            	ret	
 843                     ; 270 void TIM4_SetCounter(uint8_t Counter)
 843                     ; 271 {
 844                     .text:	section	.text,new
 845  0000               _TIM4_SetCounter:
 849                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
 851  0000 c75346        	ld	21318,a
 852                     ; 274 }
 855  0003 81            	ret	
 887                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
 887                     ; 284 {
 888                     .text:	section	.text,new
 889  0000               _TIM4_SetAutoreload:
 893                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
 895  0000 c75348        	ld	21320,a
 896                     ; 287 }
 899  0003 81            	ret	
 922                     ; 294 uint8_t TIM4_GetCounter(void)
 922                     ; 295 {
 923                     .text:	section	.text,new
 924  0000               _TIM4_GetCounter:
 928                     ; 297     return (uint8_t)(TIM4->CNTR);
 930  0000 c65346        	ld	a,21318
 933  0003 81            	ret	
 957                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 957                     ; 306 {
 958                     .text:	section	.text,new
 959  0000               _TIM4_GetPrescaler:
 963                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
 965  0000 c65347        	ld	a,21319
 968  0003 81            	ret	
1047                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1047                     ; 319 {
1048                     .text:	section	.text,new
1049  0000               _TIM4_GetFlagStatus:
1051  0000 88            	push	a
1052       00000001      OFST:	set	1
1055                     ; 320     FlagStatus bitstatus = RESET;
1057                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1059                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1061  0001 c45344        	and	a,21316
1062  0004 2702          	jreq	L174
1063                     ; 327     bitstatus = SET;
1065  0006 a601          	ld	a,#1
1067  0008               L174:
1068                     ; 331     bitstatus = RESET;
1070                     ; 333   return ((FlagStatus)bitstatus);
1074  0008 5b01          	addw	sp,#1
1075  000a 81            	ret	
1110                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1110                     ; 344 {
1111                     .text:	section	.text,new
1112  0000               _TIM4_ClearFlag:
1116                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1118                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1120  0000 43            	cpl	a
1121  0001 c75344        	ld	21316,a
1122                     ; 351 }
1125  0004 81            	ret	
1185                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1185                     ; 361 {
1186                     .text:	section	.text,new
1187  0000               _TIM4_GetITStatus:
1189  0000 88            	push	a
1190  0001 89            	pushw	x
1191       00000002      OFST:	set	2
1194                     ; 362     ITStatus bitstatus = RESET;
1196                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1200                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1202                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1204  0002 c45344        	and	a,21316
1205  0005 6b01          	ld	(OFST-1,sp),a
1206                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1208  0007 c65343        	ld	a,21315
1209  000a 1403          	and	a,(OFST+1,sp)
1210  000c 6b02          	ld	(OFST+0,sp),a
1211                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1213  000e 7b01          	ld	a,(OFST-1,sp)
1214  0010 2708          	jreq	L145
1216  0012 7b02          	ld	a,(OFST+0,sp)
1217  0014 2704          	jreq	L145
1218                     ; 375     bitstatus = (ITStatus)SET;
1220  0016 a601          	ld	a,#1
1222  0018 2001          	jra	L345
1223  001a               L145:
1224                     ; 379     bitstatus = (ITStatus)RESET;
1226  001a 4f            	clr	a
1227  001b               L345:
1228                     ; 381   return ((ITStatus)bitstatus);
1232  001b 5b03          	addw	sp,#3
1233  001d 81            	ret	
1269                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1269                     ; 392 {
1270                     .text:	section	.text,new
1271  0000               _TIM4_ClearITPendingBit:
1275                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1277                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1279  0000 43            	cpl	a
1280  0001 c75344        	ld	21316,a
1281                     ; 398 }
1284  0004 81            	ret	
1297                     	xdef	_TIM4_ClearITPendingBit
1298                     	xdef	_TIM4_GetITStatus
1299                     	xdef	_TIM4_ClearFlag
1300                     	xdef	_TIM4_GetFlagStatus
1301                     	xdef	_TIM4_GetPrescaler
1302                     	xdef	_TIM4_GetCounter
1303                     	xdef	_TIM4_SetAutoreload
1304                     	xdef	_TIM4_SetCounter
1305                     	xdef	_TIM4_GenerateEvent
1306                     	xdef	_TIM4_ARRPreloadConfig
1307                     	xdef	_TIM4_PrescalerConfig
1308                     	xdef	_TIM4_SelectOnePulseMode
1309                     	xdef	_TIM4_UpdateRequestConfig
1310                     	xdef	_TIM4_UpdateDisableConfig
1311                     	xdef	_TIM4_ITConfig
1312                     	xdef	_TIM4_Cmd
1313                     	xdef	_TIM4_TimeBaseInit
1314                     	xdef	_TIM4_DeInit
1333                     	end
