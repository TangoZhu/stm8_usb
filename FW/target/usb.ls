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
 187                     ; 230 }
 190  001c 81            	ret	
 233                     ; 232 void usb_send_nack(void)
 233                     ; 233 {
 234                     .text:	section	.text,new
 235  0000               _usb_send_nack:
 237  0000 89            	pushw	x
 238       00000002      OFST:	set	2
 241                     ; 236 	GPIOC->ODR = 0x40;
 243  0001 3540500a      	mov	20490,#64
 244                     ; 237 	GPIOC->CR1 = 0xFF;
 246  0005 35ff500d      	mov	20493,#255
 247                     ; 238 	GPIOC->CR2 = 0xFF;
 249  0009 35ff500e      	mov	20494,#255
 250                     ; 239 	GPIOC->DDR = 0xFF;
 252  000d 35ff500c      	mov	20492,#255
 253                     ; 241 	data[0] = 0x80;
 255  0011 a680          	ld	a,#128
 256  0013 6b01          	ld	(OFST-1,sp),a
 257                     ; 242 	data[1] = USB_PID_NACK;
 259  0015 a65a          	ld	a,#90
 260  0017 6b02          	ld	(OFST+0,sp),a
 261                     ; 244 	usb_tx_count = 2;
 263  0019 3502003f      	mov	_usb_tx_count,#2
 264                     ; 245 	usb_tx_buffer_pointer = &data[0];
 266  001d 96            	ldw	x,sp
 267  001e 5c            	incw	x
 268  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 269                     ; 247 	usb_tx();
 271  0022 cd0000        	call	_usb_tx
 273                     ; 249 	nop();
 276  0025 9d            	nop	
 278                     ; 250 	nop();
 282  0026 9d            	nop	
 284                     ; 251 	nop();
 288  0027 9d            	nop	
 290                     ; 252 	nop();
 294  0028 9d            	nop	
 296                     ; 253 	nop();
 300  0029 9d            	nop	
 302                     ; 255 	GPIOC->CR2 = 0x00;
 305  002a 725f500e      	clr	20494
 306                     ; 256 	GPIOC->CR1 = 0x00;
 308  002e 725f500d      	clr	20493
 309                     ; 257 	GPIOC->DDR = 0x3F;
 311  0032 353f500c      	mov	20492,#63
 312                     ; 258 }
 315  0036 85            	popw	x
 316  0037 81            	ret	
 319                     	switch	.data
 320  0000               _count:
 321  0000 00            	dc.b	0
 412                     ; 323 void usb_rx_ok(void)
 412                     ; 324 {
 413                     .text:	section	.text,new
 414  0000               _usb_rx_ok:
 416  0000 89            	pushw	x
 417       00000002      OFST:	set	2
 420                     ; 325 	switch (usb_rx_buffer[1])
 422  0001 c6002d        	ld	a,_usb_rx_buffer+1
 424                     ; 406 			break;
 425  0004 a02d          	sub	a,#45
 426  0006 2728          	jreq	L73
 427  0008 a01e          	sub	a,#30
 428  000a 2603cc00fb    	jreq	L731
 429  000f a00f          	sub	a,#15
 430  0011 2603cc013f    	jreq	L23
 431  0016 a00f          	sub	a,#15
 432  0018 2724          	jreq	L34
 433  001a a05a          	sub	a,#90
 434  001c 2603cc00a3    	jreq	L74
 435  0021 a00f          	sub	a,#15
 436  0023 27ee          	jreq	L23
 437  0025 a00f          	sub	a,#15
 438  0027 270e          	jreq	L14
 439                     ; 404 			usb.state = USB_STATE_IDLE;
 441  0029 725f0000      	clr	_usb
 442                     ; 406 			break;
 444  002d cc013f        	jra	L23
 445  0030               L73:
 446                     ; 329 			usb.state = USB_STATE_SETUP;
 448  0030 35010000      	mov	_usb,#1
 449                     ; 330 			break;
 451  0034 cc013f        	jra	L23
 452  0037               L14:
 453                     ; 334 			usb.state = USB_STATE_OUT;
 455  0037 35030000      	mov	_usb,#3
 456                     ; 336 			break;
 458  003b cc013f        	jra	L23
 459  003e               L34:
 460                     ; 340 			if((usb_rx_buffer[2]&0x7F)==usb.device_address) // It's our address
 462  003e c6002e        	ld	a,_usb_rx_buffer+2
 463  0041 a47f          	and	a,#127
 464  0043 c10002        	cp	a,_usb+2
 465  0046 26f3          	jrne	L23
 466                     ; 343 				if(usb.setup_address!=0)	//需要找个更好的地方
 468  0048 c60004        	ld	a,_usb+4
 469  004b 2705          	jreq	L721
 470                     ; 345 					usb.device_address=usb.setup_address;
 472  004d 5500040002    	mov	_usb+2,_usb+4
 473  0052               L721:
 474                     ; 348 				if(usb_ready_reg==1)			
 476  0052 c6003d        	ld	a,_usb_ready_reg
 477  0055 4a            	dec	a
 478  0056 2604          	jrne	L131
 479                     ; 349 					usb_ready=1;
 481  0058 3501003e      	mov	_usb_ready,#1
 482  005c               L131:
 483                     ; 351 				if (usb.event == USB_EVENT_READY_DATA_IN)
 485  005c c60001        	ld	a,_usb+1
 486  005f a102          	cp	a,#2
 487  0061 263a          	jrne	L331
 488                     ; 294 	GPIOC->ODR = 0x40;
 491  0063 3540500a      	mov	20490,#64
 492                     ; 295 	GPIOC->CR1 = 0xFF;
 494  0067 35ff500d      	mov	20493,#255
 495                     ; 296 	GPIOC->CR2 = 0xFF;
 497  006b 35ff500e      	mov	20494,#255
 498                     ; 297 	GPIOC->DDR = 0xFF;
 500  006f 35ff500c      	mov	20492,#255
 501                     ; 299 	usb_tx_count = usb.tx_lenght;
 503                     ; 300 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 505  0073 ae0017        	ldw	x,#_usb+23
 506  0076 550027003f    	mov	_usb_tx_count,_usb+39
 507  007b cf002a        	ldw	_usb_tx_buffer_pointer,x
 508                     ; 302 	usb_tx();
 510  007e cd0000        	call	_usb_tx
 512                     ; 304 	nop();
 515  0081 9d            	nop	
 517                     ; 305 	nop();
 521  0082 9d            	nop	
 523                     ; 306 	nop();
 527  0083 9d            	nop	
 529                     ; 307 	nop();
 533  0084 9d            	nop	
 535                     ; 308 	nop();
 539  0085 9d            	nop	
 541                     ; 310 	GPIOC->CR2 = 0x00;
 544  0086 725f500e      	clr	20494
 545                     ; 311 	GPIOC->CR1 = 0x00;
 547  008a 725f500d      	clr	20493
 548                     ; 312 	GPIOC->DDR = 0x3F;
 550  008e 353f500c      	mov	20492,#63
 551                     ; 354 					usb.state = USB_STATE_IN;
 554  0092 35020000      	mov	_usb,#2
 555                     ; 355 					usb.event = USB_EVENT_WAIT_DATA_IN;
 557  0096 35030001      	mov	_usb+1,#3
 559  009a cc013f        	jra	L23
 560  009d               L331:
 561                     ; 359 					usb_send_nack();
 563  009d cd0000        	call	_usb_send_nack
 565  00a0 cc013f        	jra	L23
 566  00a3               L74:
 567                     ; 367 			if (usb.state == USB_STATE_SETUP)
 569  00a3 c60000        	ld	a,_usb
 570  00a6 4a            	dec	a
 571  00a7 2652          	jrne	L731
 572                     ; 264 	GPIOC->ODR = 0x40;
 575  00a9 3540500a      	mov	20490,#64
 576                     ; 265 	GPIOC->CR1 = 0xFF;
 578  00ad 35ff500d      	mov	20493,#255
 579                     ; 266 	GPIOC->CR2 = 0xFF;
 581  00b1 35ff500e      	mov	20494,#255
 582                     ; 267 	GPIOC->DDR = 0xFF;
 584  00b5 35ff500c      	mov	20492,#255
 585                     ; 269 	data[0] = 0x80;
 587  00b9 a680          	ld	a,#128
 588  00bb 6b01          	ld	(OFST-1,sp),a
 589                     ; 270 	data[1] = USB_PID_ACK;
 591  00bd a6d2          	ld	a,#210
 592  00bf 6b02          	ld	(OFST+0,sp),a
 593                     ; 272 	usb_tx_count = 2;
 595  00c1 3502003f      	mov	_usb_tx_count,#2
 596                     ; 273 	usb_tx_buffer_pointer = &data[0];
 598  00c5 96            	ldw	x,sp
 599  00c6 5c            	incw	x
 600  00c7 cf002a        	ldw	_usb_tx_buffer_pointer,x
 601                     ; 276 	usb_tx();
 603  00ca cd0000        	call	_usb_tx
 605                     ; 278 	nop();
 608  00cd 9d            	nop	
 610                     ; 279 	nop();
 614  00ce 9d            	nop	
 616                     ; 280 	nop();
 620  00cf 9d            	nop	
 622                     ; 281 	nop();
 626  00d0 9d            	nop	
 628                     ; 282 	nop();
 632  00d1 9d            	nop	
 634                     ; 284 	GPIOC->CR2 = 0x00;
 637  00d2 725f500e      	clr	20494
 638                     ; 285 	GPIOC->CR1 = 0x00;
 640  00d6 725f500d      	clr	20493
 641                     ; 286 	GPIOC->DDR = 0x7F;
 643  00da 357f500c      	mov	20492,#127
 644                     ; 287 	GPIOC->DDR = 0x3F;
 646  00de 353f500c      	mov	20492,#63
 647                     ; 317 	uint8_t index = 0;
 651                     ; 319 	for (index = 0; index < 16; index++)
 653  00e2 4f            	clr	a
 654  00e3 6b02          	ld	(OFST+0,sp),a
 655  00e5               L141:
 656                     ; 320 		usb.rx_buffer[index] = usb_rx_buffer[index];
 658  00e5 5f            	clrw	x
 659  00e6 97            	ld	xl,a
 660  00e7 d6002c        	ld	a,(_usb_rx_buffer,x)
 661  00ea d70006        	ld	(_usb+6,x),a
 662                     ; 319 	for (index = 0; index < 16; index++)
 664  00ed 0c02          	inc	(OFST+0,sp)
 667  00ef 7b02          	ld	a,(OFST+0,sp)
 668  00f1 a110          	cp	a,#16
 669  00f3 25f0          	jrult	L141
 670                     ; 372 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 673  00f5 35010001      	mov	_usb+1,#1
 675  00f9 2044          	jra	L23
 676  00fb               L731:
 677                     ; 374 			else if (usb.state == USB_STATE_OUT)
 678                     ; 264 	GPIOC->ODR = 0x40;
 680                     ; 265 	GPIOC->CR1 = 0xFF;
 681                     ; 266 	GPIOC->CR2 = 0xFF;
 682                     ; 267 	GPIOC->DDR = 0xFF;
 683                     ; 269 	data[0] = 0x80;
 684                     ; 270 	data[1] = USB_PID_ACK;
 685                     ; 272 	usb_tx_count = 2;
 686                     ; 273 	usb_tx_buffer_pointer = &data[0];
 687                     ; 276 	usb_tx();
 689                     ; 278 	nop();
 693                     ; 279 	nop();
 698                     ; 280 	nop();
 703                     ; 281 	nop();
 708                     ; 282 	nop();
 713                     ; 284 	GPIOC->CR2 = 0x00;
 715                     ; 285 	GPIOC->CR1 = 0x00;
 716                     ; 286 	GPIOC->DDR = 0x7F;
 717                     ; 287 	GPIOC->DDR = 0x3F;
 718                     ; 378 				usb.event == USB_EVENT_NO;
 720                     ; 385 			if (usb.state == USB_STATE_OUT)
 722                     ; 264 	GPIOC->ODR = 0x40;
 725                     ; 265 	GPIOC->CR1 = 0xFF;
 727                     ; 266 	GPIOC->CR2 = 0xFF;
 729                     ; 267 	GPIOC->DDR = 0xFF;
 731                     ; 269 	data[0] = 0x80;
 733                     ; 270 	data[1] = USB_PID_ACK;
 735                     ; 272 	usb_tx_count = 2;
 737                     ; 273 	usb_tx_buffer_pointer = &data[0];
 739                     ; 276 	usb_tx();
 742                     ; 278 	nop();
 746                     ; 279 	nop();
 751                     ; 280 	nop();
 756                     ; 281 	nop();
 761                     ; 282 	nop();
 766                     ; 284 	GPIOC->CR2 = 0x00;
 769                     ; 285 	GPIOC->CR1 = 0x00;
 771                     ; 286 	GPIOC->DDR = 0x7F;
 773                     ; 287 	GPIOC->DDR = 0x3F;
 775                     ; 389 				usb.event == USB_EVENT_NO;
 779  00fb c60000        	ld	a,_usb
 780  00fe a103          	cp	a,#3
 781  0100 263d          	jrne	L23
 783  0102 3540500a      	mov	20490,#64
 785  0106 35ff500d      	mov	20493,#255
 787  010a 35ff500e      	mov	20494,#255
 789  010e 35ff500c      	mov	20492,#255
 791  0112 a680          	ld	a,#128
 792  0114 6b01          	ld	(OFST-1,sp),a
 794  0116 a6d2          	ld	a,#210
 795  0118 6b02          	ld	(OFST+0,sp),a
 797  011a 3502003f      	mov	_usb_tx_count,#2
 799  011e 96            	ldw	x,sp
 800  011f 5c            	incw	x
 801  0120 cf002a        	ldw	_usb_tx_buffer_pointer,x
 803  0123 cd0000        	call	_usb_tx
 804  0126 9d            	nop	
 805  0127 9d            	nop	
 806  0128 9d            	nop	
 807  0129 9d            	nop	
 808  012a 9d            	nop	
 810  012b 725f500e      	clr	20494
 812  012f 725f500d      	clr	20493
 814  0133 357f500c      	mov	20492,#127
 816  0137 353f500c      	mov	20492,#63
 818  013b 725d0001      	tnz	_usb+1
 819  013f               L23:
 820                     ; 409 }
 823  013f 85            	popw	x
 824  0140 81            	ret	
 887                     ; 411 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 887                     ; 412 {
 888                     .text:	section	.text,new
 889  0000               _usb_calc_crc16:
 891  0000 89            	pushw	x
 892  0001 5204          	subw	sp,#4
 893       00000004      OFST:	set	4
 896                     ; 413 	uint16_t crc = 0xFFFF;
 898  0003 aeffff        	ldw	x,#65535
 899  0006 1f03          	ldw	(OFST-1,sp),x
 900                     ; 417 	for (index = 0; index < lenght; index++)
 902  0008 0f01          	clr	(OFST-3,sp)
 904  000a 203c          	jra	L702
 905  000c               L302:
 906                     ; 419 		crc ^= *buffer++;
 908  000c 1e05          	ldw	x,(OFST+1,sp)
 909  000e f6            	ld	a,(x)
 910  000f 5c            	incw	x
 911  0010 1f05          	ldw	(OFST+1,sp),x
 912  0012 5f            	clrw	x
 913  0013 97            	ld	xl,a
 914  0014 01            	rrwa	x,a
 915  0015 1804          	xor	a,(OFST+0,sp)
 916  0017 01            	rrwa	x,a
 917  0018 1803          	xor	a,(OFST-1,sp)
 918  001a 01            	rrwa	x,a
 919  001b 1f03          	ldw	(OFST-1,sp),x
 920                     ; 421 		for (i = 8; i--;)
 922  001d a608          	ld	a,#8
 923  001f 6b02          	ld	(OFST-2,sp),a
 925  0021 201c          	jra	L712
 926  0023               L312:
 927                     ; 423 			if ((crc & BIT(0)) != 0)
 929  0023 7b04          	ld	a,(OFST+0,sp)
 930  0025 a501          	bcp	a,#1
 931  0027 2712          	jreq	L322
 932                     ; 425 				crc >>= 1;
 934  0029 0403          	srl	(OFST-1,sp)
 935  002b 0604          	rrc	(OFST+0,sp)
 936                     ; 426 				crc ^= 0xA001;
 938  002d 7b04          	ld	a,(OFST+0,sp)
 939  002f a801          	xor	a,#1
 940  0031 6b04          	ld	(OFST+0,sp),a
 941  0033 7b03          	ld	a,(OFST-1,sp)
 942  0035 a8a0          	xor	a,#160
 943  0037 6b03          	ld	(OFST-1,sp),a
 945  0039 2004          	jra	L712
 946  003b               L322:
 947                     ; 430 				crc >>= 1;
 949  003b 0403          	srl	(OFST-1,sp)
 950  003d 0604          	rrc	(OFST+0,sp)
 951  003f               L712:
 952                     ; 421 		for (i = 8; i--;)
 954  003f 7b02          	ld	a,(OFST-2,sp)
 955  0041 0a02          	dec	(OFST-2,sp)
 956  0043 4d            	tnz	a
 957  0044 26dd          	jrne	L312
 958                     ; 417 	for (index = 0; index < lenght; index++)
 960  0046 0c01          	inc	(OFST-3,sp)
 961  0048               L702:
 964  0048 7b01          	ld	a,(OFST-3,sp)
 965  004a 1109          	cp	a,(OFST+5,sp)
 966  004c 25be          	jrult	L302
 967                     ; 435 	crc = ~crc;
 969  004e 1e03          	ldw	x,(OFST-1,sp)
 970  0050 53            	cplw	x
 971  0051 1f03          	ldw	(OFST-1,sp),x
 972                     ; 437 	*buffer++ = (uint8_t) crc;
 974  0053 1e05          	ldw	x,(OFST+1,sp)
 975  0055 7b04          	ld	a,(OFST+0,sp)
 976  0057 f7            	ld	(x),a
 977  0058 5c            	incw	x
 978  0059 1f05          	ldw	(OFST+1,sp),x
 979                     ; 438 	*buffer = (uint8_t) (crc >> 8);
 981  005b 7b03          	ld	a,(OFST-1,sp)
 982  005d f7            	ld	(x),a
 983                     ; 439 }
 986  005e 5b06          	addw	sp,#6
 987  0060 81            	ret	
1046                     ; 441 void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode)
1046                     ; 442 {
1047                     .text:	section	.text,new
1048  0000               _usb_send_data:
1050  0000 89            	pushw	x
1051  0001 88            	push	a
1052       00000001      OFST:	set	1
1055                     ; 445 	if(mode)
1057  0002 7b07          	ld	a,(OFST+6,sp)
1058  0004 2603cc00a7    	jreq	L752
1059                     ; 446 		data_sync = USB_PID_DATA1;
1061  0009 354b003c      	mov	_data_sync,#75
1062  000d cc00a7        	jra	L752
1063  0010               L552:
1064                     ; 450 		usb.tx_buffer[0] = 0x80;
1066  0010 35800017      	mov	_usb+23,#128
1067                     ; 451 		usb.tx_buffer[1] = data_sync;
1069                     ; 453 		if (lenght >= 8)
1071  0014 a108          	cp	a,#8
1072  0016 55003c0018    	mov	_usb+24,_data_sync
1073  001b 253d          	jrult	L362
1074                     ; 455 			usb.tx_lenght = 12;
1076  001d 350c0027      	mov	_usb+39,#12
1077                     ; 457 			for (index = 2; index < 10; index++)
1079  0021 a602          	ld	a,#2
1080  0023 6b01          	ld	(OFST+0,sp),a
1081  0025               L562:
1082                     ; 458 				usb.tx_buffer[index] = *buffer++;
1084  0025 5f            	clrw	x
1085  0026 1602          	ldw	y,(OFST+1,sp)
1086  0028 97            	ld	xl,a
1087  0029 90f6          	ld	a,(y)
1088  002b 905c          	incw	y
1089  002d 1702          	ldw	(OFST+1,sp),y
1090  002f d70017        	ld	(_usb+23,x),a
1091                     ; 457 			for (index = 2; index < 10; index++)
1093  0032 0c01          	inc	(OFST+0,sp)
1096  0034 7b01          	ld	a,(OFST+0,sp)
1097  0036 a10a          	cp	a,#10
1098  0038 25eb          	jrult	L562
1099                     ; 460 			lenght -= 8;
1101  003a 7b06          	ld	a,(OFST+5,sp)
1102  003c a008          	sub	a,#8
1103  003e 6b06          	ld	(OFST+5,sp),a
1105  0040               L372:
1106                     ; 473 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
1108  0040 c60027        	ld	a,_usb+39
1109  0043 a004          	sub	a,#4
1110  0045 88            	push	a
1111  0046 ae0019        	ldw	x,#_usb+25
1112  0049 cd0000        	call	_usb_calc_crc16
1114  004c 84            	pop	a
1115                     ; 476 		if (data_sync == USB_PID_DATA1)
1117  004d c6003c        	ld	a,_data_sync
1118  0050 a14b          	cp	a,#75
1119  0052 263b          	jrne	L503
1120                     ; 477 			data_sync = USB_PID_DATA0;
1122  0054 35c3003c      	mov	_data_sync,#195
1124  0058 2039          	jra	L703
1125  005a               L362:
1126                     ; 464 			usb.tx_lenght = (uint8_t) (4 + lenght);
1128  005a ab04          	add	a,#4
1129  005c c70027        	ld	_usb+39,a
1130                     ; 466 			for (index = 2; index < 2 + lenght; index++)
1132  005f a602          	ld	a,#2
1133  0061 6b01          	ld	(OFST+0,sp),a
1135  0063 2013          	jra	L103
1136  0065               L572:
1137                     ; 467 				usb.tx_buffer[index] = *buffer++;
1139  0065 7b01          	ld	a,(OFST+0,sp)
1140  0067 5f            	clrw	x
1141  0068 1602          	ldw	y,(OFST+1,sp)
1142  006a 97            	ld	xl,a
1143  006b 90f6          	ld	a,(y)
1144  006d 905c          	incw	y
1145  006f 1702          	ldw	(OFST+1,sp),y
1146  0071 d70017        	ld	(_usb+23,x),a
1147                     ; 466 			for (index = 2; index < 2 + lenght; index++)
1149  0074 0c01          	inc	(OFST+0,sp)
1150  0076 7b01          	ld	a,(OFST+0,sp)
1151  0078               L103:
1154  0078 5f            	clrw	x
1155  0079 97            	ld	xl,a
1156  007a 7b06          	ld	a,(OFST+5,sp)
1157  007c 905f          	clrw	y
1158  007e 9097          	ld	yl,a
1159  0080 bf00          	ldw	c_x,x
1160  0082 72a90002      	addw	y,#2
1161  0086 90b300        	cpw	y,c_x
1162  0089 2cda          	jrsgt	L572
1163                     ; 469 			lenght = 0;
1165  008b 0f06          	clr	(OFST+5,sp)
1166  008d 20b1          	jra	L372
1167  008f               L503:
1168                     ; 479 			data_sync = USB_PID_DATA1;
1170  008f 354b003c      	mov	_data_sync,#75
1171  0093               L703:
1172                     ; 482 		usb.event = USB_EVENT_READY_DATA_IN;
1174  0093 35020001      	mov	_usb+1,#2
1176  0097 2007          	jra	L513
1177  0099               L113:
1178                     ; 488 			if (usb.event == USB_EVENT_WAIT_DATA_IN)
1180  0099 c60001        	ld	a,_usb+1
1181  009c a103          	cp	a,#3
1182  009e 2707          	jreq	L752
1183                     ; 489 				break;
1185  00a0               L513:
1186                     ; 485 		while (usb.event == USB_EVENT_READY_DATA_IN)
1188  00a0 c60001        	ld	a,_usb+1
1189  00a3 a102          	cp	a,#2
1190  00a5 27f2          	jreq	L113
1191  00a7               L752:
1192                     ; 448 	while (lenght > 0)
1194  00a7 7b06          	ld	a,(OFST+5,sp)
1195  00a9 2703cc0010    	jrne	L552
1196                     ; 492 }
1199  00ae 5b03          	addw	sp,#3
1200  00b0 81            	ret	
1224                     ; 494 void usb_send_null_data(void)
1224                     ; 495 {
1225                     .text:	section	.text,new
1226  0000               _usb_send_null_data:
1230                     ; 496 	usb.tx_lenght = 4;
1232  0000 35040027      	mov	_usb+39,#4
1233                     ; 497 	usb.tx_buffer[0] = 0x80;
1235  0004 35800017      	mov	_usb+23,#128
1236                     ; 498 	usb.tx_buffer[1] = USB_PID_DATA1;
1238  0008 354b0018      	mov	_usb+24,#75
1239                     ; 499 	usb.tx_buffer[2] = 0;
1241  000c 725f0019      	clr	_usb+25
1242                     ; 500 	usb.tx_buffer[3] = 0;
1244  0010 725f001a      	clr	_usb+26
1245                     ; 502 	usb.event = USB_EVENT_READY_DATA_IN;
1247  0014 35020001      	mov	_usb+1,#2
1248                     ; 503 }
1251  0018 81            	ret	
1275                     ; 505 void usb_send_stall(void)
1275                     ; 506 {
1276                     .text:	section	.text,new
1277  0000               _usb_send_stall:
1281                     ; 507 	usb.tx_lenght = 2;
1283  0000 35020027      	mov	_usb+39,#2
1284                     ; 508 	usb.tx_buffer[0] = 0x80;
1286  0004 35800017      	mov	_usb+23,#128
1287                     ; 509 	usb.tx_buffer[1] = USB_PID_STALL;
1289  0008 351e0018      	mov	_usb+24,#30
1290                     ; 511 	usb.event = USB_EVENT_READY_DATA_IN;
1292  000c 35020001      	mov	_usb+1,#2
1293                     ; 512 }
1296  0010 81            	ret	
1299                     	switch	.data
1300  0001               _counter_a:
1301  0001 00            	dc.b	0
1302  0002               _counter_b:
1303  0002 00            	dc.b	0
1304  0003               _counter_all:
1305  0003 00            	dc.b	0
1306  0004               _tx_counter:
1307  0004 00            	dc.b	0
1336                     ; 520 void usb_process(void)
1336                     ; 521 {
1337                     .text:	section	.text,new
1338  0000               _usb_process:
1342                     ; 522 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1344  0000 c60001        	ld	a,_usb+1
1345  0003 4a            	dec	a
1346  0004 2673          	jrne	L104
1347                     ; 524 		switch (usb.rx_buffer[2])
1349  0006 c60008        	ld	a,_usb+8
1351                     ; 595 				break;
1352  0009 2740          	jreq	L353
1353  000b a021          	sub	a,#33
1354  000d 2767          	jreq	L763
1355  000f a05f          	sub	a,#95
1356  0011 2704          	jreq	L343
1357  0013 4a            	dec	a
1358  0014 2749          	jreq	L163
1360  0016 81            	ret	
1361  0017               L343:
1362                     ; 528 				switch (usb.rx_buffer[3])
1364  0017 c60009        	ld	a,_usb+9
1365  001a a106          	cp	a,#6
1366  001c 265b          	jrne	L104
1369                     ; 532 						switch (usb.rx_buffer[5])
1371  001e c6000b        	ld	a,_usb+11
1373                     ; 545 								break;
1374  0021 4a            	dec	a
1375  0022 2704          	jreq	L743
1376  0024 4a            	dec	a
1377  0025 270a          	jreq	L153
1379  0027 81            	ret	
1380  0028               L743:
1381                     ; 536 								usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor), 1);
1383  0028 4b01          	push	#1
1384  002a 4b12          	push	#18
1385  002c ae0000        	ldw	x,#_usb_device_descriptor
1387                     ; 537 								break;
1389  002f 2015          	jp	LC003
1390  0031               L153:
1391                     ; 541 								if(usb.rx_buffer[8]<ARRAY_LENGHT(usb_configuration_descriptor))
1393  0031 c6000e        	ld	a,_usb+14
1394  0034 a122          	cp	a,#34
1395  0036 2407          	jruge	L714
1396                     ; 542 									usb_send_data(&usb_configuration_descriptor[0],usb.rx_buffer[8], 1);
1398  0038 4b01          	push	#1
1399  003a 3b000e        	push	_usb+14
1402  003d 2004          	jp	LC004
1403  003f               L714:
1404                     ; 544 									usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor), 1);
1406  003f 4b01          	push	#1
1407  0041 4b22          	push	#34
1408  0043               LC004:
1409  0043 ae0012        	ldw	x,#_usb_configuration_descriptor
1410  0046               LC003:
1411  0046 cd0000        	call	_usb_send_data
1413  0049 2029          	jp	LC002
1414                     ; 554 						break;
1416  004b               L353:
1417                     ; 562 				switch (usb.rx_buffer[3])
1419  004b c60009        	ld	a,_usb+9
1421                     ; 573 						break;
1422  004e a005          	sub	a,#5
1423  0050 2705          	jreq	L553
1424  0052 a004          	sub	a,#4
1425  0054 2706          	jreq	LC005
1427  0056 81            	ret	
1428  0057               L553:
1429                     ; 566 						usb.setup_address = usb.rx_buffer[4];
1431  0057 55000a0004    	mov	_usb+4,_usb+10
1432                     ; 567 						usb_send_null_data();
1434  005c               LC005:
1437                     ; 568 						break;
1440  005c cc0000        	jp	_usb_send_null_data
1441                     ; 572 						usb_send_null_data();
1443                     ; 573 						break;
1445                     ; 576 				break;
1447  005f               L163:
1448                     ; 580 				switch (usb.rx_buffer[3])
1450  005f c60009        	ld	a,_usb+9
1451  0062 a106          	cp	a,#6
1452  0064 2613          	jrne	L104
1455                     ; 584 						usb_send_data(&usb_report_descriptor[0], ARRAY_LENGHT(usb_report_descriptor), 1);
1457  0066 4b01          	push	#1
1458  0068 4b34          	push	#52
1459  006a ae0034        	ldw	x,#_usb_report_descriptor
1460  006d cd0000        	call	_usb_send_data
1462  0070 3501003d      	mov	_usb_ready_reg,#1
1463  0074               LC002:
1464  0074 85            	popw	x
1465                     ; 585 						usb_ready_reg=1;
1467                     ; 586 						break;
1470  0075 81            	ret	
1471                     ; 588 					default: break;
1473  0076               L763:
1474                     ; 594 				usb_send_stall();
1476  0076 cd0000        	call	_usb_send_stall
1478                     ; 595 				break;
1480  0079               L104:
1481                     ; 599 }
1484  0079 81            	ret	
1729                     	xdef	_tx_counter
1730                     	xdef	_counter_all
1731                     	xdef	_counter_b
1732                     	xdef	_counter_a
1733                     	xdef	_usb_send_stall
1734                     	xdef	_usb_send_null_data
1735                     	xdef	_usb_calc_crc16
1736                     	xdef	_usb_rx_ok
1737                     	xdef	_count
1738                     	xdef	_usb_send_nack
1739                     	switch	.bss
1740  0000               _usb:
1741  0000 000000000000  	ds.b	41
1742                     	xdef	_usb
1743                     	xdef	_usb_report_descriptor
1744                     	xdef	_usb_configuration_descriptor
1745                     	xdef	_usb_device_descriptor
1746  0029               _usb_rx_count:
1747  0029 00            	ds.b	1
1748                     	xdef	_usb_rx_count
1749  002a               _usb_tx_buffer_pointer:
1750  002a 0000          	ds.b	2
1751                     	xdef	_usb_tx_buffer_pointer
1752  002c               _usb_rx_buffer:
1753  002c 000000000000  	ds.b	16
1754                     	xdef	_usb_rx_buffer
1755  003c               _data_sync:
1756  003c 00            	ds.b	1
1757                     	xdef	_data_sync
1758  003d               _usb_ready_reg:
1759  003d 00            	ds.b	1
1760                     	xdef	_usb_ready_reg
1761  003e               _usb_ready:
1762  003e 00            	ds.b	1
1763                     	xdef	_usb_ready
1764                     	xref	_usb_tx
1765                     	xdef	_usb_send_data
1766                     	xdef	_usb_process
1767                     	xdef	_usb_init
1768  003f               _usb_tx_count:
1769  003f 00            	ds.b	1
1770                     	xdef	_usb_tx_count
1771                     	xref.b	c_x
1791                     	end
