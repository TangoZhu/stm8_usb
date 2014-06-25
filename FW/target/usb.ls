   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  20                     .const:	section	.text
  21  0000               _usb_device_descriptor:
  22  0000 12            	dc.b	18
  23  0001 01            	dc.b	1
  24  0002 10            	dc.b	16
  25  0003 01            	dc.b	1
  26  0004 00            	dc.b	0
  27  0005 00            	dc.b	0
  28  0006 00            	dc.b	0
  29  0007 08            	dc.b	8
  30  0008 11            	dc.b	17
  31  0009 22            	dc.b	34
  32  000a 33            	dc.b	51
  33  000b 44            	dc.b	68
  34  000c 55            	dc.b	85
  35  000d 66            	dc.b	102
  36  000e 00            	dc.b	0
  37  000f 00            	dc.b	0
  38  0010 00            	dc.b	0
  39  0011 01            	dc.b	1
  40  0012               _usb_configuration_descriptor:
  41  0012 09            	dc.b	9
  42  0013 02            	dc.b	2
  43  0014 22            	dc.b	34
  44  0015 00            	dc.b	0
  45  0016 01            	dc.b	1
  46  0017 01            	dc.b	1
  47  0018 00            	dc.b	0
  48  0019 80            	dc.b	128
  49  001a 32            	dc.b	50
  50  001b 09            	dc.b	9
  51  001c 04            	dc.b	4
  52  001d 00            	dc.b	0
  53  001e 00            	dc.b	0
  54  001f 01            	dc.b	1
  55  0020 03            	dc.b	3
  56  0021 01            	dc.b	1
  57  0022 02            	dc.b	2
  58  0023 00            	dc.b	0
  59  0024 09            	dc.b	9
  60  0025 21            	dc.b	33
  61  0026 10            	dc.b	16
  62  0027 01            	dc.b	1
  63  0028 21            	dc.b	33
  64  0029 01            	dc.b	1
  65  002a 22            	dc.b	34
  66  002b 34            	dc.b	52
  67  002c 00            	dc.b	0
  68  002d 07            	dc.b	7
  69  002e 05            	dc.b	5
  70  002f 81            	dc.b	129
  71  0030 03            	dc.b	3
  72  0031 04            	dc.b	4
  73  0032 00            	dc.b	0
  74  0033 0a            	dc.b	10
  75  0034               _usb_report_descriptor:
  76  0034 05            	dc.b	5
  77  0035 01            	dc.b	1
  78  0036 09            	dc.b	9
  79  0037 02            	dc.b	2
  80  0038 a1            	dc.b	161
  81  0039 01            	dc.b	1
  82  003a 09            	dc.b	9
  83  003b 01            	dc.b	1
  84  003c a1            	dc.b	161
  85  003d 00            	dc.b	0
  86  003e 05            	dc.b	5
  87  003f 09            	dc.b	9
  88  0040 19            	dc.b	25
  89  0041 01            	dc.b	1
  90  0042 29            	dc.b	41
  91  0043 03            	dc.b	3
  92  0044 15            	dc.b	21
  93  0045 00            	dc.b	0
  94  0046 25            	dc.b	37
  95  0047 01            	dc.b	1
  96  0048 95            	dc.b	149
  97  0049 03            	dc.b	3
  98  004a 75            	dc.b	117
  99  004b 01            	dc.b	1
 100  004c 81            	dc.b	129
 101  004d 02            	dc.b	2
 102  004e 95            	dc.b	149
 103  004f 01            	dc.b	1
 104  0050 75            	dc.b	117
 105  0051 05            	dc.b	5
 106  0052 81            	dc.b	129
 107  0053 03            	dc.b	3
 108  0054 05            	dc.b	5
 109  0055 01            	dc.b	1
 110  0056 09            	dc.b	9
 111  0057 30            	dc.b	48
 112  0058 09            	dc.b	9
 113  0059 31            	dc.b	49
 114  005a 09            	dc.b	9
 115  005b 38            	dc.b	56
 116  005c 15            	dc.b	21
 117  005d 81            	dc.b	129
 118  005e 25            	dc.b	37
 119  005f 7f            	dc.b	127
 120  0060 75            	dc.b	117
 121  0061 08            	dc.b	8
 122  0062 95            	dc.b	149
 123  0063 03            	dc.b	3
 124  0064 81            	dc.b	129
 125  0065 06            	dc.b	6
 126  0066 c0            	dc.b	192
 127  0067 c0            	dc.b	192
 159                     ; 218 void usb_init(void)
 159                     ; 219 {
 161                     .text:	section	.text,new
 162  0000               _usb_init:
 166                     ; 220 	usb.state = USB_STATE_IDLE;
 168  0000 725f0000      	clr	_usb
 169                     ; 221 	usb.event = USB_EVENT_NO;
 171  0004 725f0001      	clr	_usb+1
 172                     ; 222 	usb.device_address = 0;
 174  0008 725f0002      	clr	_usb+2
 175                     ; 223 	usb.setup_address  = 0;
 177  000c 725f0004      	clr	_usb+4
 178                     ; 224 	usb.tx_is_all = TRUE;
 180  0010 35010028      	mov	_usb+40,#1
 181                     ; 225 	usb_ready = 0;
 183  0014 725f003e      	clr	_usb_ready
 184                     ; 226 	usb_ready_reg = 0;
 186  0018 725f003d      	clr	_usb_ready_reg
 187                     ; 227 }
 190  001c 81            	ret	
 233                     ; 229 void usb_send_nack(void)
 233                     ; 230 {
 234                     .text:	section	.text,new
 235  0000               _usb_send_nack:
 237  0000 89            	pushw	x
 238       00000002      OFST:	set	2
 241                     ; 233 	GPIOC->ODR = 0x40;
 243  0001 3540500a      	mov	20490,#64
 244                     ; 234 	GPIOC->CR1 = 0xFF;
 246  0005 35ff500d      	mov	20493,#255
 247                     ; 235 	GPIOC->CR2 = 0xFF;
 249  0009 35ff500e      	mov	20494,#255
 250                     ; 236 	GPIOC->DDR = 0xFF;
 252  000d 35ff500c      	mov	20492,#255
 253                     ; 238 	data[0] = 0x80;
 255  0011 a680          	ld	a,#128
 256  0013 6b01          	ld	(OFST-1,sp),a
 257                     ; 239 	data[1] = USB_PID_NACK;
 259  0015 a65a          	ld	a,#90
 260  0017 6b02          	ld	(OFST+0,sp),a
 261                     ; 241 	usb_tx_count = 2;
 263  0019 3502003f      	mov	_usb_tx_count,#2
 264                     ; 242 	usb_tx_buffer_pointer = &data[0];
 266  001d 96            	ldw	x,sp
 267  001e 5c            	incw	x
 268  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 269                     ; 244 	usb_tx();
 271  0022 cd0000        	call	_usb_tx
 273                     ; 246 	nop();
 276  0025 9d            	nop	
 278                     ; 247 	nop();
 282  0026 9d            	nop	
 284                     ; 248 	nop();
 288  0027 9d            	nop	
 290                     ; 249 	nop();
 294  0028 9d            	nop	
 296                     ; 250 	nop();
 300  0029 9d            	nop	
 302                     ; 252 	GPIOC->CR2 = 0x00;
 305  002a 725f500e      	clr	20494
 306                     ; 253 	GPIOC->CR1 = 0x00;
 308  002e 725f500d      	clr	20493
 309                     ; 254 	GPIOC->DDR = 0x3F;
 311  0032 353f500c      	mov	20492,#63
 312                     ; 255 }
 315  0036 85            	popw	x
 316  0037 81            	ret	
 359                     ; 257 void usb_send_ack(void)
 359                     ; 258 {
 360                     .text:	section	.text,new
 361  0000               _usb_send_ack:
 363  0000 89            	pushw	x
 364       00000002      OFST:	set	2
 367                     ; 261 	GPIOC->ODR = 0x40;
 369  0001 3540500a      	mov	20490,#64
 370                     ; 262 	GPIOC->DDR = 0xFF;
 372  0005 35ff500c      	mov	20492,#255
 373                     ; 263 	GPIOC->CR1 = 0xFF;
 375  0009 35ff500d      	mov	20493,#255
 376                     ; 264 	GPIOC->CR2 = 0xFF;
 378  000d 35ff500e      	mov	20494,#255
 379                     ; 266 	data[0] = 0x80;
 381  0011 a680          	ld	a,#128
 382  0013 6b01          	ld	(OFST-1,sp),a
 383                     ; 267 	data[1] = USB_PID_ACK;
 385  0015 a6d2          	ld	a,#210
 386  0017 6b02          	ld	(OFST+0,sp),a
 387                     ; 269 	usb_tx_count = 2;
 389  0019 3502003f      	mov	_usb_tx_count,#2
 390                     ; 270 	usb_tx_buffer_pointer = &data[0];
 392  001d 96            	ldw	x,sp
 393  001e 5c            	incw	x
 394  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 395                     ; 273 	usb_tx();
 397  0022 cd0000        	call	_usb_tx
 399                     ; 275 	nop();
 402  0025 9d            	nop	
 404                     ; 276 	nop();
 408  0026 9d            	nop	
 410                     ; 277 	nop();
 414  0027 9d            	nop	
 416                     ; 278 	nop();
 420  0028 9d            	nop	
 422                     ; 279 	nop();
 426  0029 9d            	nop	
 428                     ; 281 	GPIOC->CR2 = 0x00;
 431  002a 725f500e      	clr	20494
 432                     ; 282 	GPIOC->CR1 = 0x00;
 434  002e 725f500d      	clr	20493
 435                     ; 283 	GPIOC->DDR = 0x7F;
 437  0032 357f500c      	mov	20492,#127
 438                     ; 284 	GPIOC->DDR = 0x3F;
 440  0036 353f500c      	mov	20492,#63
 441                     ; 285 }
 444  003a 85            	popw	x
 445  003b 81            	ret	
 448                     	switch	.data
 449  0000               _count:
 450  0000 00            	dc.b	0
 496                     ; 320 void usb_rx_ok(void)
 496                     ; 321 {
 497                     .text:	section	.text,new
 498  0000               _usb_rx_ok:
 500  0000 88            	push	a
 501       00000001      OFST:	set	1
 504                     ; 322 	switch (usb_rx_buffer[1])
 506  0001 c6002d        	ld	a,_usb_rx_buffer+1
 508                     ; 403 			break;
 509  0004 a02d          	sub	a,#45
 510  0006 2728          	jreq	L55
 511  0008 a01e          	sub	a,#30
 512  000a 2603cc00c3    	jreq	L331
 513  000f a00f          	sub	a,#15
 514  0011 2603cc00d1    	jreq	L63
 515  0016 a00f          	sub	a,#15
 516  0018 2724          	jreq	L16
 517  001a a05a          	sub	a,#90
 518  001c 2603cc00a1    	jreq	L56
 519  0021 a00f          	sub	a,#15
 520  0023 27ee          	jreq	L63
 521  0025 a00f          	sub	a,#15
 522  0027 270e          	jreq	L75
 523                     ; 401 			usb.state = USB_STATE_IDLE;
 525  0029 725f0000      	clr	_usb
 526                     ; 403 			break;
 528  002d cc00d1        	jra	L63
 529  0030               L55:
 530                     ; 326 			usb.state = USB_STATE_SETUP;
 532  0030 35010000      	mov	_usb,#1
 533                     ; 327 			break;
 535  0034 cc00d1        	jra	L63
 536  0037               L75:
 537                     ; 331 			usb.state = USB_STATE_OUT;
 539  0037 35030000      	mov	_usb,#3
 540                     ; 333 			break;
 542  003b cc00d1        	jra	L63
 543  003e               L16:
 544                     ; 337 			if((usb_rx_buffer[2]&0x7F)==usb.device_address) // It's our address
 546  003e c6002e        	ld	a,_usb_rx_buffer+2
 547  0041 a47f          	and	a,#127
 548  0043 c10002        	cp	a,_usb+2
 549  0046 26f3          	jrne	L63
 550                     ; 340 				if(usb.setup_address!=0)	//需要找个更好的地方
 552  0048 c60004        	ld	a,_usb+4
 553  004b 2705          	jreq	L321
 554                     ; 342 					usb.device_address=usb.setup_address;
 556  004d 5500040002    	mov	_usb+2,_usb+4
 557  0052               L321:
 558                     ; 345 				if(usb_ready_reg==1)			
 560  0052 c6003d        	ld	a,_usb_ready_reg
 561  0055 4a            	dec	a
 562  0056 2604          	jrne	L521
 563                     ; 346 					usb_ready=1;
 565  0058 3501003e      	mov	_usb_ready,#1
 566  005c               L521:
 567                     ; 348 				if (usb.event == USB_EVENT_READY_DATA_IN)
 569  005c c60001        	ld	a,_usb+1
 570  005f a102          	cp	a,#2
 571  0061 2639          	jrne	L721
 572                     ; 291 	GPIOC->ODR = 0x40;
 575  0063 3540500a      	mov	20490,#64
 576                     ; 292 	GPIOC->CR1 = 0xFF;
 578  0067 35ff500d      	mov	20493,#255
 579                     ; 293 	GPIOC->CR2 = 0xFF;
 581  006b 35ff500e      	mov	20494,#255
 582                     ; 294 	GPIOC->DDR = 0xFF;
 584  006f 35ff500c      	mov	20492,#255
 585                     ; 296 	usb_tx_count = usb.tx_lenght;
 587                     ; 297 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 589  0073 ae0017        	ldw	x,#_usb+23
 590  0076 550027003f    	mov	_usb_tx_count,_usb+39
 591  007b cf002a        	ldw	_usb_tx_buffer_pointer,x
 592                     ; 299 	usb_tx();
 594  007e cd0000        	call	_usb_tx
 596                     ; 301 	nop();
 599  0081 9d            	nop	
 601                     ; 302 	nop();
 605  0082 9d            	nop	
 607                     ; 303 	nop();
 611  0083 9d            	nop	
 613                     ; 304 	nop();
 617  0084 9d            	nop	
 619                     ; 305 	nop();
 623  0085 9d            	nop	
 625                     ; 307 	GPIOC->CR2 = 0x00;
 628  0086 725f500e      	clr	20494
 629                     ; 308 	GPIOC->CR1 = 0x00;
 631  008a 725f500d      	clr	20493
 632                     ; 309 	GPIOC->DDR = 0x3F;
 634  008e 353f500c      	mov	20492,#63
 635                     ; 351 					usb.state = USB_STATE_IN;
 638  0092 35020000      	mov	_usb,#2
 639                     ; 352 					usb.event = USB_EVENT_WAIT_DATA_IN;
 641  0096 35030001      	mov	_usb+1,#3
 643  009a 2035          	jra	L63
 644  009c               L721:
 645                     ; 356 					usb_send_nack();
 647  009c cd0000        	call	_usb_send_nack
 649  009f 2030          	jra	L63
 650  00a1               L56:
 651                     ; 364 			if (usb.state == USB_STATE_SETUP)
 653  00a1 c60000        	ld	a,_usb
 654  00a4 4a            	dec	a
 655  00a5 261c          	jrne	L331
 656                     ; 366 				usb_send_ack();
 658  00a7 cd0000        	call	_usb_send_ack
 660                     ; 314 	uint8_t index = 0;
 663                     ; 316 	for (index = 0; index < 16; index++)
 665  00aa 4f            	clr	a
 666  00ab 6b01          	ld	(OFST+0,sp),a
 667  00ad               L531:
 668                     ; 317 		usb.rx_buffer[index] = usb_rx_buffer[index];
 670  00ad 5f            	clrw	x
 671  00ae 97            	ld	xl,a
 672  00af d6002c        	ld	a,(_usb_rx_buffer,x)
 673  00b2 d70006        	ld	(_usb+6,x),a
 674                     ; 316 	for (index = 0; index < 16; index++)
 676  00b5 0c01          	inc	(OFST+0,sp)
 679  00b7 7b01          	ld	a,(OFST+0,sp)
 680  00b9 a110          	cp	a,#16
 681  00bb 25f0          	jrult	L531
 682                     ; 369 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 685  00bd 35010001      	mov	_usb+1,#1
 687  00c1 200e          	jra	L63
 688  00c3               L331:
 689                     ; 371 			else if (usb.state == USB_STATE_OUT)
 690                     ; 373 				usb_send_ack();
 692                     ; 375 				usb.event == USB_EVENT_NO;
 693                     ; 382 			if (usb.state == USB_STATE_OUT)
 695                     ; 384 				usb_send_ack();
 698                     ; 386 				usb.event == USB_EVENT_NO;
 701  00c3 c60000        	ld	a,_usb
 702  00c6 a103          	cp	a,#3
 703  00c8 2607          	jrne	L63
 705  00ca cd0000        	call	_usb_send_ack
 707  00cd 725d0001      	tnz	_usb+1
 708  00d1               L63:
 709                     ; 406 }
 712  00d1 84            	pop	a
 713  00d2 81            	ret	
 776                     ; 408 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 776                     ; 409 {
 777                     .text:	section	.text,new
 778  0000               _usb_calc_crc16:
 780  0000 89            	pushw	x
 781  0001 5204          	subw	sp,#4
 782       00000004      OFST:	set	4
 785                     ; 410 	uint16_t crc = 0xFFFF;
 787  0003 aeffff        	ldw	x,#65535
 788  0006 1f03          	ldw	(OFST-1,sp),x
 789                     ; 414 	for (index = 0; index < lenght; index++)
 791  0008 0f01          	clr	(OFST-3,sp)
 793  000a 203c          	jra	L302
 794  000c               L771:
 795                     ; 416 		crc ^= *buffer++;
 797  000c 1e05          	ldw	x,(OFST+1,sp)
 798  000e f6            	ld	a,(x)
 799  000f 5c            	incw	x
 800  0010 1f05          	ldw	(OFST+1,sp),x
 801  0012 5f            	clrw	x
 802  0013 97            	ld	xl,a
 803  0014 01            	rrwa	x,a
 804  0015 1804          	xor	a,(OFST+0,sp)
 805  0017 01            	rrwa	x,a
 806  0018 1803          	xor	a,(OFST-1,sp)
 807  001a 01            	rrwa	x,a
 808  001b 1f03          	ldw	(OFST-1,sp),x
 809                     ; 418 		for (i = 8; i--;)
 811  001d a608          	ld	a,#8
 812  001f 6b02          	ld	(OFST-2,sp),a
 814  0021 201c          	jra	L312
 815  0023               L702:
 816                     ; 420 			if ((crc & BIT(0)) != 0)
 818  0023 7b04          	ld	a,(OFST+0,sp)
 819  0025 a501          	bcp	a,#1
 820  0027 2712          	jreq	L712
 821                     ; 422 				crc >>= 1;
 823  0029 0403          	srl	(OFST-1,sp)
 824  002b 0604          	rrc	(OFST+0,sp)
 825                     ; 423 				crc ^= 0xA001;
 827  002d 7b04          	ld	a,(OFST+0,sp)
 828  002f a801          	xor	a,#1
 829  0031 6b04          	ld	(OFST+0,sp),a
 830  0033 7b03          	ld	a,(OFST-1,sp)
 831  0035 a8a0          	xor	a,#160
 832  0037 6b03          	ld	(OFST-1,sp),a
 834  0039 2004          	jra	L312
 835  003b               L712:
 836                     ; 427 				crc >>= 1;
 838  003b 0403          	srl	(OFST-1,sp)
 839  003d 0604          	rrc	(OFST+0,sp)
 840  003f               L312:
 841                     ; 418 		for (i = 8; i--;)
 843  003f 7b02          	ld	a,(OFST-2,sp)
 844  0041 0a02          	dec	(OFST-2,sp)
 845  0043 4d            	tnz	a
 846  0044 26dd          	jrne	L702
 847                     ; 414 	for (index = 0; index < lenght; index++)
 849  0046 0c01          	inc	(OFST-3,sp)
 850  0048               L302:
 853  0048 7b01          	ld	a,(OFST-3,sp)
 854  004a 1109          	cp	a,(OFST+5,sp)
 855  004c 25be          	jrult	L771
 856                     ; 432 	crc = ~crc;
 858  004e 1e03          	ldw	x,(OFST-1,sp)
 859  0050 53            	cplw	x
 860  0051 1f03          	ldw	(OFST-1,sp),x
 861                     ; 434 	*buffer++ = (uint8_t) crc;
 863  0053 1e05          	ldw	x,(OFST+1,sp)
 864  0055 7b04          	ld	a,(OFST+0,sp)
 865  0057 f7            	ld	(x),a
 866  0058 5c            	incw	x
 867  0059 1f05          	ldw	(OFST+1,sp),x
 868                     ; 435 	*buffer = (uint8_t) (crc >> 8);
 870  005b 7b03          	ld	a,(OFST-1,sp)
 871  005d f7            	ld	(x),a
 872                     ; 436 }
 875  005e 5b06          	addw	sp,#6
 876  0060 81            	ret	
 935                     ; 438 void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode)
 935                     ; 439 {
 936                     .text:	section	.text,new
 937  0000               _usb_send_data:
 939  0000 89            	pushw	x
 940  0001 88            	push	a
 941       00000001      OFST:	set	1
 944                     ; 442 	if(mode)
 946  0002 7b07          	ld	a,(OFST+6,sp)
 947  0004 2603cc00b6    	jreq	L352
 948                     ; 443 		data_sync = USB_PID_DATA1;
 950  0009 354b003c      	mov	_data_sync,#75
 951  000d cc00b6        	jra	L352
 952  0010               L152:
 953                     ; 447 		if (lenght >= 8)
 955  0010 a108          	cp	a,#8
 956  0012 2546          	jrult	L752
 957                     ; 449 			usb.tx_lenght = 12;
 959  0014 350c0027      	mov	_usb+39,#12
 960                     ; 451 			usb.tx_buffer[0] = 0x80;
 962  0018 35800017      	mov	_usb+23,#128
 963                     ; 452 			usb.tx_buffer[1] = data_sync;
 965                     ; 454 			for (index = 2; index < 10; index++)
 967  001c a602          	ld	a,#2
 968  001e 55003c0018    	mov	_usb+24,_data_sync
 969  0023 6b01          	ld	(OFST+0,sp),a
 970  0025               L162:
 971                     ; 455 				usb.tx_buffer[index] = *buffer++;
 973  0025 5f            	clrw	x
 974  0026 1602          	ldw	y,(OFST+1,sp)
 975  0028 97            	ld	xl,a
 976  0029 90f6          	ld	a,(y)
 977  002b 905c          	incw	y
 978  002d 1702          	ldw	(OFST+1,sp),y
 979  002f d70017        	ld	(_usb+23,x),a
 980                     ; 454 			for (index = 2; index < 10; index++)
 982  0032 0c01          	inc	(OFST+0,sp)
 985  0034 7b01          	ld	a,(OFST+0,sp)
 986  0036 a10a          	cp	a,#10
 987  0038 25eb          	jrult	L162
 988                     ; 457 			lenght -= 8;
 990  003a 7b06          	ld	a,(OFST+5,sp)
 991  003c a008          	sub	a,#8
 992  003e 6b06          	ld	(OFST+5,sp),a
 994  0040               L762:
 995                     ; 473 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
 997  0040 c60027        	ld	a,_usb+39
 998  0043 a004          	sub	a,#4
 999  0045 88            	push	a
1000  0046 ae0019        	ldw	x,#_usb+25
1001  0049 cd0000        	call	_usb_calc_crc16
1003  004c 84            	pop	a
1004                     ; 476 		if (data_sync == USB_PID_DATA1)
1006  004d c6003c        	ld	a,_data_sync
1007  0050 a14b          	cp	a,#75
1008  0052 2644          	jrne	L103
1009                     ; 477 			data_sync = USB_PID_DATA0;
1011  0054 35c3003c      	mov	_data_sync,#195
1013  0058 2042          	jra	L303
1014  005a               L752:
1015                     ; 461 			usb.tx_lenght = (uint8_t) (4 + lenght);
1017  005a ab04          	add	a,#4
1018  005c c70027        	ld	_usb+39,a
1019                     ; 463 			usb.tx_buffer[0] = 0x80;
1021  005f 35800017      	mov	_usb+23,#128
1022                     ; 464 			usb.tx_buffer[1] = data_sync;
1024                     ; 466 			for (index = 2; index < 2 + lenght; index++)
1026  0063 a602          	ld	a,#2
1027  0065 55003c0018    	mov	_usb+24,_data_sync
1028  006a 6b01          	ld	(OFST+0,sp),a
1030  006c 2013          	jra	L572
1031  006e               L172:
1032                     ; 467 				usb.tx_buffer[index] = *buffer++;
1034  006e 7b01          	ld	a,(OFST+0,sp)
1035  0070 5f            	clrw	x
1036  0071 1602          	ldw	y,(OFST+1,sp)
1037  0073 97            	ld	xl,a
1038  0074 90f6          	ld	a,(y)
1039  0076 905c          	incw	y
1040  0078 1702          	ldw	(OFST+1,sp),y
1041  007a d70017        	ld	(_usb+23,x),a
1042                     ; 466 			for (index = 2; index < 2 + lenght; index++)
1044  007d 0c01          	inc	(OFST+0,sp)
1045  007f 7b01          	ld	a,(OFST+0,sp)
1046  0081               L572:
1049  0081 5f            	clrw	x
1050  0082 97            	ld	xl,a
1051  0083 7b06          	ld	a,(OFST+5,sp)
1052  0085 905f          	clrw	y
1053  0087 9097          	ld	yl,a
1054  0089 bf00          	ldw	c_x,x
1055  008b 72a90002      	addw	y,#2
1056  008f 90b300        	cpw	y,c_x
1057  0092 2cda          	jrsgt	L172
1058                     ; 469 			lenght = 0;
1060  0094 0f06          	clr	(OFST+5,sp)
1061  0096 20a8          	jra	L762
1062  0098               L103:
1063                     ; 479 			data_sync = USB_PID_DATA1;
1065  0098 354b003c      	mov	_data_sync,#75
1066  009c               L303:
1067                     ; 482 		usb.event = USB_EVENT_READY_DATA_IN;
1069  009c 35020001      	mov	_usb+1,#2
1071  00a0 200d          	jra	L113
1072  00a2               L503:
1073                     ; 486 			if ((usb.state != USB_STATE_IN)&&(usb.state != USB_STATE_SETUP))
1075  00a2 c60000        	ld	a,_usb
1076  00a5 a102          	cp	a,#2
1077  00a7 2706          	jreq	L113
1079  00a9 c60000        	ld	a,_usb
1080  00ac 4a            	dec	a
1081  00ad 2607          	jrne	L352
1082                     ; 487 				break;
1084  00af               L113:
1085                     ; 484 		while (usb.event == USB_EVENT_READY_DATA_IN)
1087  00af c60001        	ld	a,_usb+1
1088  00b2 a102          	cp	a,#2
1089  00b4 27ec          	jreq	L503
1090  00b6               L352:
1091                     ; 445 	while (lenght > 0)
1093  00b6 7b06          	ld	a,(OFST+5,sp)
1094  00b8 2703cc0010    	jrne	L152
1095                     ; 490 }
1098  00bd 5b03          	addw	sp,#3
1099  00bf 81            	ret	
1123                     ; 492 void usb_send_null_data(void)
1123                     ; 493 {
1124                     .text:	section	.text,new
1125  0000               _usb_send_null_data:
1129                     ; 494 	usb.tx_lenght = 4;
1131  0000 35040027      	mov	_usb+39,#4
1132                     ; 495 	usb.tx_buffer[0] = 0x80;
1134  0004 35800017      	mov	_usb+23,#128
1135                     ; 496 	usb.tx_buffer[1] = USB_PID_DATA1;
1137  0008 354b0018      	mov	_usb+24,#75
1138                     ; 497 	usb.tx_buffer[2] = 0;
1140  000c 725f0019      	clr	_usb+25
1141                     ; 498 	usb.tx_buffer[3] = 0;
1143  0010 725f001a      	clr	_usb+26
1144                     ; 500 	usb.event = USB_EVENT_READY_DATA_IN;
1146  0014 35020001      	mov	_usb+1,#2
1147                     ; 501 }
1150  0018 81            	ret	
1174                     ; 503 void usb_send_stall(void)
1174                     ; 504 {
1175                     .text:	section	.text,new
1176  0000               _usb_send_stall:
1180                     ; 505 	usb.tx_lenght = 2;
1182  0000 35020027      	mov	_usb+39,#2
1183                     ; 506 	usb.tx_buffer[0] = 0x80;
1185  0004 35800017      	mov	_usb+23,#128
1186                     ; 507 	usb.tx_buffer[1] = USB_PID_STALL;
1188  0008 351e0018      	mov	_usb+24,#30
1189                     ; 509 	usb.event = USB_EVENT_READY_DATA_IN;
1191  000c 35020001      	mov	_usb+1,#2
1192                     ; 510 }
1195  0010 81            	ret	
1198                     	switch	.data
1199  0001               _counter_a:
1200  0001 00            	dc.b	0
1201  0002               _counter_b:
1202  0002 00            	dc.b	0
1203  0003               _counter_all:
1204  0003 00            	dc.b	0
1205  0004               _tx_counter:
1206  0004 00            	dc.b	0
1235                     ; 518 void usb_process(void)
1235                     ; 519 {
1236                     .text:	section	.text,new
1237  0000               _usb_process:
1241                     ; 520 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1243  0000 c60001        	ld	a,_usb+1
1244  0003 4a            	dec	a
1245  0004 2673          	jrne	L573
1246                     ; 522 		switch (usb.rx_buffer[2])
1248  0006 c60008        	ld	a,_usb+8
1250                     ; 593 				break;
1251  0009 2740          	jreq	L743
1252  000b a021          	sub	a,#33
1253  000d 2767          	jreq	L363
1254  000f a05f          	sub	a,#95
1255  0011 2704          	jreq	L733
1256  0013 4a            	dec	a
1257  0014 2749          	jreq	L553
1259  0016 81            	ret	
1260  0017               L733:
1261                     ; 526 				switch (usb.rx_buffer[3])
1263  0017 c60009        	ld	a,_usb+9
1264  001a a106          	cp	a,#6
1265  001c 265b          	jrne	L573
1268                     ; 530 						switch (usb.rx_buffer[5])
1270  001e c6000b        	ld	a,_usb+11
1272                     ; 543 								break;
1273  0021 4a            	dec	a
1274  0022 2704          	jreq	L343
1275  0024 4a            	dec	a
1276  0025 270a          	jreq	L543
1278  0027 81            	ret	
1279  0028               L343:
1280                     ; 534 								usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor), 1);
1282  0028 4b01          	push	#1
1283  002a 4b12          	push	#18
1284  002c ae0000        	ldw	x,#_usb_device_descriptor
1286                     ; 535 								break;
1288  002f 2015          	jp	LC003
1289  0031               L543:
1290                     ; 539 								if(usb.rx_buffer[8]<ARRAY_LENGHT(usb_configuration_descriptor))
1292  0031 c6000e        	ld	a,_usb+14
1293  0034 a122          	cp	a,#34
1294  0036 2407          	jruge	L314
1295                     ; 540 									usb_send_data(&usb_configuration_descriptor[0],usb.rx_buffer[8], 1);
1297  0038 4b01          	push	#1
1298  003a 3b000e        	push	_usb+14
1301  003d 2004          	jp	LC004
1302  003f               L314:
1303                     ; 542 									usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor), 1);
1305  003f 4b01          	push	#1
1306  0041 4b22          	push	#34
1307  0043               LC004:
1308  0043 ae0012        	ldw	x,#_usb_configuration_descriptor
1309  0046               LC003:
1310  0046 cd0000        	call	_usb_send_data
1312  0049 2029          	jp	LC002
1313                     ; 552 						break;
1315  004b               L743:
1316                     ; 560 				switch (usb.rx_buffer[3])
1318  004b c60009        	ld	a,_usb+9
1320                     ; 571 						break;
1321  004e a005          	sub	a,#5
1322  0050 2705          	jreq	L153
1323  0052 a004          	sub	a,#4
1324  0054 2706          	jreq	LC005
1326  0056 81            	ret	
1327  0057               L153:
1328                     ; 564 						usb.setup_address = usb.rx_buffer[4];
1330  0057 55000a0004    	mov	_usb+4,_usb+10
1331                     ; 565 						usb_send_null_data();
1333  005c               LC005:
1336                     ; 566 						break;
1339  005c cc0000        	jp	_usb_send_null_data
1340                     ; 570 						usb_send_null_data();
1342                     ; 571 						break;
1344                     ; 574 				break;
1346  005f               L553:
1347                     ; 578 				switch (usb.rx_buffer[3])
1349  005f c60009        	ld	a,_usb+9
1350  0062 a106          	cp	a,#6
1351  0064 2613          	jrne	L573
1354                     ; 582 						usb_send_data(&usb_report_descriptor[0], ARRAY_LENGHT(usb_report_descriptor), 1);
1356  0066 4b01          	push	#1
1357  0068 4b34          	push	#52
1358  006a ae0034        	ldw	x,#_usb_report_descriptor
1359  006d cd0000        	call	_usb_send_data
1361  0070 3501003d      	mov	_usb_ready_reg,#1
1362  0074               LC002:
1363  0074 85            	popw	x
1364                     ; 583 						usb_ready_reg=1;
1366                     ; 584 						break;
1369  0075 81            	ret	
1370                     ; 586 					default: break;
1372  0076               L363:
1373                     ; 592 				usb_send_stall();
1375  0076 cd0000        	call	_usb_send_stall
1377                     ; 593 				break;
1379  0079               L573:
1380                     ; 597 }
1383  0079 81            	ret	
1628                     	xdef	_tx_counter
1629                     	xdef	_counter_all
1630                     	xdef	_counter_b
1631                     	xdef	_counter_a
1632                     	xdef	_usb_send_stall
1633                     	xdef	_usb_send_null_data
1634                     	xdef	_usb_calc_crc16
1635                     	xdef	_usb_rx_ok
1636                     	xdef	_count
1637                     	xdef	_usb_send_ack
1638                     	xdef	_usb_send_nack
1639                     	switch	.bss
1640  0000               _usb:
1641  0000 000000000000  	ds.b	41
1642                     	xdef	_usb
1643                     	xdef	_usb_report_descriptor
1644                     	xdef	_usb_configuration_descriptor
1645                     	xdef	_usb_device_descriptor
1646  0029               _usb_rx_count:
1647  0029 00            	ds.b	1
1648                     	xdef	_usb_rx_count
1649  002a               _usb_tx_buffer_pointer:
1650  002a 0000          	ds.b	2
1651                     	xdef	_usb_tx_buffer_pointer
1652  002c               _usb_rx_buffer:
1653  002c 000000000000  	ds.b	16
1654                     	xdef	_usb_rx_buffer
1655  003c               _data_sync:
1656  003c 00            	ds.b	1
1657                     	xdef	_data_sync
1658  003d               _usb_ready_reg:
1659  003d 00            	ds.b	1
1660                     	xdef	_usb_ready_reg
1661  003e               _usb_ready:
1662  003e 00            	ds.b	1
1663                     	xdef	_usb_ready
1664                     	xref	_usb_tx
1665                     	xdef	_usb_send_data
1666                     	xdef	_usb_process
1667                     	xdef	_usb_init
1668  003f               _usb_tx_count:
1669  003f 00            	ds.b	1
1670                     	xdef	_usb_tx_count
1671                     	xref.b	c_x
1691                     	end
