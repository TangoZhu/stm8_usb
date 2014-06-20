   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  20                     .const:	section	.text
  21  0000               _usb_device_descriptor:
  22  0000 12            	dc.b	18
  23  0001 01            	dc.b	1
  24  0002 00            	dc.b	0
  25  0003 01            	dc.b	1
  26  0004 ff            	dc.b	255
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
  43  0014 12            	dc.b	18
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
  54  001f 00            	dc.b	0
  55  0020 03            	dc.b	3
  56  0021 00            	dc.b	0
  57  0022 01            	dc.b	1
  58  0023 00            	dc.b	0
  59  0024               _usb_interface_descriptor:
  60  0024 09            	dc.b	9
  61  0025 04            	dc.b	4
  62  0026 01            	dc.b	1
  63  0027 00            	dc.b	0
  64  0028 01            	dc.b	1
  65  0029 00            	dc.b	0
  66  002a 00            	dc.b	0
  67  002b 00            	dc.b	0
  68  002c 00            	dc.b	0
  69  002d               _usb_endpoint_descriptor:
  70  002d 07            	dc.b	7
  71  002e 05            	dc.b	5
  72  002f 81            	dc.b	129
  73  0030 03            	dc.b	3
  74  0031 08            	dc.b	8
  75  0032 00            	dc.b	0
  76  0033 0a            	dc.b	10
 106                     ; 151 void usb_init(void)
 106                     ; 152 {
 108                     .text:	section	.text,new
 109  0000               _usb_init:
 113                     ; 153 	usb.state = USB_STATE_IDLE;
 115  0000 725f0000      	clr	_usb
 116                     ; 154 	usb.event = USB_EVENT_NO;
 118  0004 725f0001      	clr	_usb+1
 119                     ; 155 	usb.device_address = 0;
 121  0008 725f0002      	clr	_usb+2
 122                     ; 156 	usb.setup_address  = 0;
 124  000c 725f0004      	clr	_usb+4
 125                     ; 157 	usb.tx_is_all = TRUE;
 127  0010 35010028      	mov	_usb+40,#1
 128                     ; 158 }
 131  0014 81            	ret	
 175                     ; 160 void usb_send_nack(void)
 175                     ; 161 {
 176                     .text:	section	.text,new
 177  0000               _usb_send_nack:
 179  0000 89            	pushw	x
 180       00000002      OFST:	set	2
 183                     ; 164 	GPIOC->ODR = 0x40;
 185  0001 3540500a      	mov	20490,#64
 186                     ; 165 	GPIOC->CR1 = 0xFF;
 188  0005 35ff500d      	mov	20493,#255
 189                     ; 166 	GPIOC->CR2 = 0xFF;
 191  0009 35ff500e      	mov	20494,#255
 192                     ; 167 	GPIOC->DDR = 0xFF;
 194  000d 35ff500c      	mov	20492,#255
 195                     ; 169 	data[0] = 0x80;
 197  0011 a680          	ld	a,#128
 198  0013 6b01          	ld	(OFST-1,sp),a
 199                     ; 170 	data[1] = USB_PID_NACK;
 201  0015 a65a          	ld	a,#90
 202  0017 6b02          	ld	(OFST+0,sp),a
 203                     ; 172 	usb_tx_count = 2;
 205  0019 3502003c      	mov	_usb_tx_count,#2
 206                     ; 173 	usb_tx_buffer_pointer = &data[0];
 208  001d 96            	ldw	x,sp
 209  001e 5c            	incw	x
 210  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 211                     ; 175 	usb_tx();
 213  0022 cd0000        	call	_usb_tx
 215                     ; 177 	nop();
 218  0025 9d            	nop	
 220                     ; 178 	nop();
 224  0026 9d            	nop	
 226                     ; 179 	nop();
 230  0027 9d            	nop	
 232                     ; 180 	nop();
 236  0028 9d            	nop	
 238                     ; 181 	nop();
 242  0029 9d            	nop	
 244                     ; 182 	nop();
 248  002a 9d            	nop	
 250                     ; 184 	GPIOC->CR2 = 0x00;
 253  002b 725f500e      	clr	20494
 254                     ; 185 	GPIOC->CR1 = 0x00;
 256  002f 725f500d      	clr	20493
 257                     ; 186 	GPIOC->DDR = 0x3F;
 259  0033 353f500c      	mov	20492,#63
 260                     ; 187 }
 263  0037 85            	popw	x
 264  0038 81            	ret	
 308                     ; 189 void usb_send_ack(void)
 308                     ; 190 {
 309                     .text:	section	.text,new
 310  0000               _usb_send_ack:
 312  0000 89            	pushw	x
 313       00000002      OFST:	set	2
 316                     ; 193 	GPIOC->ODR = 0x40;
 318  0001 3540500a      	mov	20490,#64
 319                     ; 194 	GPIOC->DDR = 0xFF;
 321  0005 35ff500c      	mov	20492,#255
 322                     ; 195 	GPIOC->CR1 = 0xFF;
 324  0009 35ff500d      	mov	20493,#255
 325                     ; 196 	GPIOC->CR2 = 0xFF;
 327  000d 35ff500e      	mov	20494,#255
 328                     ; 198 	data[0] = 0x80;
 330  0011 a680          	ld	a,#128
 331  0013 6b01          	ld	(OFST-1,sp),a
 332                     ; 199 	data[1] = USB_PID_ACK;
 334  0015 a6d2          	ld	a,#210
 335  0017 6b02          	ld	(OFST+0,sp),a
 336                     ; 201 	usb_tx_count = 2;
 338  0019 3502003c      	mov	_usb_tx_count,#2
 339                     ; 202 	usb_tx_buffer_pointer = &data[0];
 341  001d 96            	ldw	x,sp
 342  001e 5c            	incw	x
 343  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 344                     ; 205 	usb_tx();
 346  0022 cd0000        	call	_usb_tx
 348                     ; 207 	nop();
 351  0025 9d            	nop	
 353                     ; 208 	nop();
 357  0026 9d            	nop	
 359                     ; 209 	nop();
 363  0027 9d            	nop	
 365                     ; 210 	nop();
 369  0028 9d            	nop	
 371                     ; 211 	nop();
 375  0029 9d            	nop	
 377                     ; 212 	nop();
 381  002a 9d            	nop	
 383                     ; 214 	GPIOC->CR2 = 0x00;
 386  002b 725f500e      	clr	20494
 387                     ; 215 	GPIOC->CR1 = 0x00;
 389  002f 725f500d      	clr	20493
 390                     ; 216 	GPIOC->DDR = 0x7F;
 392  0033 357f500c      	mov	20492,#127
 393                     ; 217 	GPIOC->DDR = 0x3F;
 395  0037 353f500c      	mov	20492,#63
 396                     ; 218 }
 399  003b 85            	popw	x
 400  003c 81            	ret	
 403                     	switch	.data
 404  0000               _count:
 405  0000 00            	dc.b	0
 449                     ; 254 void usb_rx_ok(void)
 449                     ; 255 {
 450                     .text:	section	.text,new
 451  0000               _usb_rx_ok:
 453  0000 88            	push	a
 454       00000001      OFST:	set	1
 457                     ; 256 	switch (usb_rx_buffer[1])
 459  0001 c6002d        	ld	a,_usb_rx_buffer+1
 461                     ; 331 			break;
 462  0004 a02d          	sub	a,#45
 463  0006 2725          	jreq	L55
 464  0008 a01e          	sub	a,#30
 465  000a 2603cc00b0    	jreq	L521
 466  000f a00f          	sub	a,#15
 467  0011 2603cc00be    	jreq	L43
 468  0016 a00f          	sub	a,#15
 469  0018 2721          	jreq	L16
 470  001a a05a          	sub	a,#90
 471  001c 2770          	jreq	L56
 472  001e a00f          	sub	a,#15
 473  0020 27f1          	jreq	L43
 474  0022 a00f          	sub	a,#15
 475  0024 270e          	jreq	L75
 476                     ; 329 			usb.state = USB_STATE_IDLE;
 478  0026 725f0000      	clr	_usb
 479                     ; 331 			break;
 481  002a cc00be        	jra	L43
 482  002d               L55:
 483                     ; 260 			usb.state = USB_STATE_SETUP;
 485  002d 35010000      	mov	_usb,#1
 486                     ; 261 			break;
 488  0031 cc00be        	jra	L43
 489  0034               L75:
 490                     ; 265 			usb.state = USB_STATE_OUT;
 492  0034 35030000      	mov	_usb,#3
 493                     ; 267 			break;
 495  0038 cc00be        	jra	L43
 496  003b               L16:
 497                     ; 273 			if ((usb.event == USB_EVENT_READY_DATA_IN)&&(usb_rx_buffer[2]==usb.device_address))
 499  003b c60001        	ld	a,_usb+1
 500  003e a102          	cp	a,#2
 501  0040 2640          	jrne	L121
 503  0042 c60002        	ld	a,_usb+2
 504  0045 c1002e        	cp	a,_usb_rx_buffer+2
 505  0048 2638          	jrne	L121
 506                     ; 224 	GPIOC->ODR = 0x40;
 509  004a 3540500a      	mov	20490,#64
 510                     ; 225 	GPIOC->CR1 = 0xFF;
 512  004e 35ff500d      	mov	20493,#255
 513                     ; 226 	GPIOC->CR2 = 0xFF;
 515  0052 35ff500e      	mov	20494,#255
 516                     ; 227 	GPIOC->DDR = 0xFF;
 518  0056 35ff500c      	mov	20492,#255
 519                     ; 229 	usb_tx_count = usb.tx_lenght;
 521                     ; 230 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 523  005a ae0017        	ldw	x,#_usb+23
 524  005d 550027003c    	mov	_usb_tx_count,_usb+39
 525  0062 cf002a        	ldw	_usb_tx_buffer_pointer,x
 526                     ; 232 	usb_tx();
 528  0065 cd0000        	call	_usb_tx
 530                     ; 234 	nop();
 533  0068 9d            	nop	
 535                     ; 235 	nop();
 539  0069 9d            	nop	
 541                     ; 236 	nop();
 545  006a 9d            	nop	
 547                     ; 237 	nop();
 551  006b 9d            	nop	
 553                     ; 238 	nop();
 557  006c 9d            	nop	
 559                     ; 239 	nop();
 563  006d 9d            	nop	
 565                     ; 241 	GPIOC->CR2 = 0x00;
 568  006e 725f500e      	clr	20494
 569                     ; 242 	GPIOC->CR1 = 0x00;
 571  0072 725f500d      	clr	20493
 572                     ; 243 	GPIOC->DDR = 0x3F;
 574  0076 353f500c      	mov	20492,#63
 575                     ; 276 				usb.event = USB_EVENT_WAIT_DATA_IN;
 578  007a 35030001      	mov	_usb+1,#3
 579                     ; 277 				usb.state = USB_STATE_IN;
 581  007e 35020000      	mov	_usb,#2
 582  0082               L121:
 583                     ; 284 			if(usb.setup_address!=0)
 585  0082 c60004        	ld	a,_usb+4
 586  0085 2737          	jreq	L43
 587                     ; 285 				usb.device_address=usb.setup_address;
 589  0087 5500040002    	mov	_usb+2,_usb+4
 590  008c 2030          	jra	L43
 591  008e               L56:
 592                     ; 291 			if (usb.state == USB_STATE_SETUP)
 594  008e c60000        	ld	a,_usb
 595  0091 4a            	dec	a
 596  0092 261c          	jrne	L521
 597                     ; 294 				usb_send_ack();
 599  0094 cd0000        	call	_usb_send_ack
 601                     ; 248 	uint8_t index = 0;
 604                     ; 250 	for (index = 0; index < ARRAY_LENGHT(usb_rx_buffer); index++)
 606  0097 4f            	clr	a
 607  0098 6b01          	ld	(OFST+0,sp),a
 608  009a               L721:
 609                     ; 251 		usb.rx_buffer[index] = usb_rx_buffer[index];
 611  009a 5f            	clrw	x
 612  009b 97            	ld	xl,a
 613  009c d6002c        	ld	a,(_usb_rx_buffer,x)
 614  009f d70006        	ld	(_usb+6,x),a
 615                     ; 250 	for (index = 0; index < ARRAY_LENGHT(usb_rx_buffer); index++)
 617  00a2 0c01          	inc	(OFST+0,sp)
 620  00a4 7b01          	ld	a,(OFST+0,sp)
 621  00a6 a110          	cp	a,#16
 622  00a8 25f0          	jrult	L721
 623                     ; 297 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 626  00aa 35010001      	mov	_usb+1,#1
 628  00ae 200e          	jra	L43
 629  00b0               L521:
 630                     ; 299 			else if (usb.state == USB_STATE_OUT)
 631                     ; 301 				usb_send_ack();
 633                     ; 303 				usb.event == USB_EVENT_NO;
 634                     ; 310 			if (usb.state == USB_STATE_OUT)
 636                     ; 312 				usb_send_ack();
 639                     ; 314 				usb.event == USB_EVENT_NO;
 642  00b0 c60000        	ld	a,_usb
 643  00b3 a103          	cp	a,#3
 644  00b5 2607          	jrne	L43
 646  00b7 cd0000        	call	_usb_send_ack
 648  00ba 725d0001      	tnz	_usb+1
 649  00be               L43:
 650                     ; 334 }
 653  00be 84            	pop	a
 654  00bf 81            	ret	
 717                     ; 336 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 717                     ; 337 {
 718                     .text:	section	.text,new
 719  0000               _usb_calc_crc16:
 721  0000 89            	pushw	x
 722  0001 5204          	subw	sp,#4
 723       00000004      OFST:	set	4
 726                     ; 338 	uint16_t crc = 0xFFFF;
 728  0003 aeffff        	ldw	x,#65535
 729  0006 1f03          	ldw	(OFST-1,sp),x
 730                     ; 342 	for (index = 0; index < lenght; index++)
 732  0008 0f01          	clr	(OFST-3,sp)
 734  000a 203c          	jra	L571
 735  000c               L171:
 736                     ; 344 		crc ^= *buffer++;
 738  000c 1e05          	ldw	x,(OFST+1,sp)
 739  000e f6            	ld	a,(x)
 740  000f 5c            	incw	x
 741  0010 1f05          	ldw	(OFST+1,sp),x
 742  0012 5f            	clrw	x
 743  0013 97            	ld	xl,a
 744  0014 01            	rrwa	x,a
 745  0015 1804          	xor	a,(OFST+0,sp)
 746  0017 01            	rrwa	x,a
 747  0018 1803          	xor	a,(OFST-1,sp)
 748  001a 01            	rrwa	x,a
 749  001b 1f03          	ldw	(OFST-1,sp),x
 750                     ; 346 		for (i = 8; i--;)
 752  001d a608          	ld	a,#8
 753  001f 6b02          	ld	(OFST-2,sp),a
 755  0021 201c          	jra	L502
 756  0023               L102:
 757                     ; 348 			if ((crc & BIT(0)) != 0)
 759  0023 7b04          	ld	a,(OFST+0,sp)
 760  0025 a501          	bcp	a,#1
 761  0027 2712          	jreq	L112
 762                     ; 350 				crc >>= 1;
 764  0029 0403          	srl	(OFST-1,sp)
 765  002b 0604          	rrc	(OFST+0,sp)
 766                     ; 351 				crc ^= 0xA001;
 768  002d 7b04          	ld	a,(OFST+0,sp)
 769  002f a801          	xor	a,#1
 770  0031 6b04          	ld	(OFST+0,sp),a
 771  0033 7b03          	ld	a,(OFST-1,sp)
 772  0035 a8a0          	xor	a,#160
 773  0037 6b03          	ld	(OFST-1,sp),a
 775  0039 2004          	jra	L502
 776  003b               L112:
 777                     ; 355 				crc >>= 1;
 779  003b 0403          	srl	(OFST-1,sp)
 780  003d 0604          	rrc	(OFST+0,sp)
 781  003f               L502:
 782                     ; 346 		for (i = 8; i--;)
 784  003f 7b02          	ld	a,(OFST-2,sp)
 785  0041 0a02          	dec	(OFST-2,sp)
 786  0043 4d            	tnz	a
 787  0044 26dd          	jrne	L102
 788                     ; 342 	for (index = 0; index < lenght; index++)
 790  0046 0c01          	inc	(OFST-3,sp)
 791  0048               L571:
 794  0048 7b01          	ld	a,(OFST-3,sp)
 795  004a 1109          	cp	a,(OFST+5,sp)
 796  004c 25be          	jrult	L171
 797                     ; 360 	crc = ~crc;
 799  004e 1e03          	ldw	x,(OFST-1,sp)
 800  0050 53            	cplw	x
 801  0051 1f03          	ldw	(OFST-1,sp),x
 802                     ; 362 	*buffer++ = (uint8_t) crc;
 804  0053 1e05          	ldw	x,(OFST+1,sp)
 805  0055 7b04          	ld	a,(OFST+0,sp)
 806  0057 f7            	ld	(x),a
 807  0058 5c            	incw	x
 808  0059 1f05          	ldw	(OFST+1,sp),x
 809                     ; 363 	*buffer = (uint8_t) (crc >> 8);
 811  005b 7b03          	ld	a,(OFST-1,sp)
 812  005d f7            	ld	(x),a
 813                     ; 364 }
 816  005e 5b06          	addw	sp,#6
 817  0060 81            	ret	
 875                     ; 366 void usb_send_data(uint8_t * buffer, uint8_t lenght)
 875                     ; 367 {
 876                     .text:	section	.text,new
 877  0000               _usb_send_data:
 879  0000 89            	pushw	x
 880  0001 89            	pushw	x
 881       00000002      OFST:	set	2
 884                     ; 368 	uint8_t data_sync = USB_PID_DATA1;
 886  0002 a64b          	ld	a,#75
 887  0004 6b01          	ld	(OFST-1,sp),a
 889  0006 cc00ac        	jra	L542
 890  0009               L142:
 891                     ; 373 		if (lenght >= 8)
 893  0009 a108          	cp	a,#8
 894  000b 252e          	jrult	L152
 895                     ; 375 			usb.tx_lenght = 12;
 897  000d 350c0027      	mov	_usb+39,#12
 898                     ; 377 			usb.tx_buffer[0] = 0x80;
 900  0011 35800017      	mov	_usb+23,#128
 901                     ; 378 			usb.tx_buffer[1] = data_sync;
 903  0015 7b01          	ld	a,(OFST-1,sp)
 904  0017 c70018        	ld	_usb+24,a
 905                     ; 380 			for (index = 2; index < 10; index++)
 907  001a a602          	ld	a,#2
 908  001c 6b02          	ld	(OFST+0,sp),a
 909  001e               L352:
 910                     ; 381 				usb.tx_buffer[index] = *buffer++;
 912  001e 5f            	clrw	x
 913  001f 1603          	ldw	y,(OFST+1,sp)
 914  0021 97            	ld	xl,a
 915  0022 90f6          	ld	a,(y)
 916  0024 905c          	incw	y
 917  0026 1703          	ldw	(OFST+1,sp),y
 918  0028 d70017        	ld	(_usb+23,x),a
 919                     ; 380 			for (index = 2; index < 10; index++)
 921  002b 0c02          	inc	(OFST+0,sp)
 924  002d 7b02          	ld	a,(OFST+0,sp)
 925  002f a10a          	cp	a,#10
 926  0031 25eb          	jrult	L352
 927                     ; 383 			lenght -= 8;
 929  0033 7b07          	ld	a,(OFST+5,sp)
 930  0035 a008          	sub	a,#8
 931  0037 6b07          	ld	(OFST+5,sp),a
 933  0039 203c          	jra	L162
 934  003b               L152:
 935                     ; 387 			usb.tx_lenght = (uint8_t) (4 + lenght);
 937  003b ab04          	add	a,#4
 938  003d c70027        	ld	_usb+39,a
 939                     ; 389 			usb.tx_buffer[0] = 0x80;
 941  0040 35800017      	mov	_usb+23,#128
 942                     ; 390 			usb.tx_buffer[1] = data_sync;
 944  0044 7b01          	ld	a,(OFST-1,sp)
 945  0046 c70018        	ld	_usb+24,a
 946                     ; 392 			for (index = 2; index < 2 + lenght; index++)
 948  0049 a602          	ld	a,#2
 949  004b 6b02          	ld	(OFST+0,sp),a
 951  004d 2013          	jra	L762
 952  004f               L362:
 953                     ; 393 				usb.tx_buffer[index] = *buffer++;
 955  004f 7b02          	ld	a,(OFST+0,sp)
 956  0051 5f            	clrw	x
 957  0052 1603          	ldw	y,(OFST+1,sp)
 958  0054 97            	ld	xl,a
 959  0055 90f6          	ld	a,(y)
 960  0057 905c          	incw	y
 961  0059 1703          	ldw	(OFST+1,sp),y
 962  005b d70017        	ld	(_usb+23,x),a
 963                     ; 392 			for (index = 2; index < 2 + lenght; index++)
 965  005e 0c02          	inc	(OFST+0,sp)
 966  0060 7b02          	ld	a,(OFST+0,sp)
 967  0062               L762:
 970  0062 5f            	clrw	x
 971  0063 97            	ld	xl,a
 972  0064 7b07          	ld	a,(OFST+5,sp)
 973  0066 905f          	clrw	y
 974  0068 9097          	ld	yl,a
 975  006a bf00          	ldw	c_x,x
 976  006c 72a90002      	addw	y,#2
 977  0070 90b300        	cpw	y,c_x
 978  0073 2cda          	jrsgt	L362
 979                     ; 395 			lenght = 0;
 981  0075 0f07          	clr	(OFST+5,sp)
 982  0077               L162:
 983                     ; 399 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
 985  0077 c60027        	ld	a,_usb+39
 986  007a a004          	sub	a,#4
 987  007c 88            	push	a
 988  007d ae0019        	ldw	x,#_usb+25
 989  0080 cd0000        	call	_usb_calc_crc16
 991  0083 84            	pop	a
 992                     ; 402 		if (data_sync == USB_PID_DATA1)
 994  0084 7b01          	ld	a,(OFST-1,sp)
 995  0086 a14b          	cp	a,#75
 996  0088 2604          	jrne	L372
 997                     ; 403 			data_sync = USB_PID_DATA0;
 999  008a a6c3          	ld	a,#195
1001  008c 2002          	jra	L572
1002  008e               L372:
1003                     ; 405 			data_sync = USB_PID_DATA1;
1005  008e a64b          	ld	a,#75
1006  0090               L572:
1007  0090 6b01          	ld	(OFST-1,sp),a
1008                     ; 408 		usb.event = USB_EVENT_READY_DATA_IN;
1010  0092 35020001      	mov	_usb+1,#2
1012  0096 200d          	jra	L303
1013  0098               L772:
1014                     ; 412 			if ((usb.state != USB_STATE_IN)&&(usb.state != USB_STATE_SETUP))
1016  0098 c60000        	ld	a,_usb
1017  009b a102          	cp	a,#2
1018  009d 2706          	jreq	L303
1020  009f c60000        	ld	a,_usb
1021  00a2 4a            	dec	a
1022  00a3 260e          	jrne	L64
1023                     ; 413 				return;
1025  00a5               L303:
1026                     ; 410 		while (usb.event == USB_EVENT_READY_DATA_IN)
1028  00a5 c60001        	ld	a,_usb+1
1029  00a8 a102          	cp	a,#2
1030  00aa 27ec          	jreq	L772
1031  00ac               L542:
1032                     ; 371 	while (lenght > 0)
1034  00ac 7b07          	ld	a,(OFST+5,sp)
1035  00ae 2703cc0009    	jrne	L142
1036                     ; 416 }
1037  00b3               L64:
1040  00b3 5b04          	addw	sp,#4
1041  00b5 81            	ret	
1044                     	switch	.data
1045  0001               _counter_a:
1046  0001 00            	dc.b	0
1047  0002               _counter_b:
1048  0002 00            	dc.b	0
1049  0003               _counter_all:
1050  0003 00            	dc.b	0
1051  0004               _tx_counter:
1052  0004 00            	dc.b	0
1077                     ; 424 void usb_process(void)
1077                     ; 425 {
1078                     .text:	section	.text,new
1079  0000               _usb_process:
1083                     ; 426 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1085  0000 c60001        	ld	a,_usb+1
1086  0003 4a            	dec	a
1087  0004 2650          	jrne	L133
1088                     ; 428 		switch (usb.rx_buffer[2])
1090  0006 c60008        	ld	a,_usb+8
1092                     ; 475 				break;
1093  0009 2727          	jreq	L513
1094  000b a080          	sub	a,#128
1095  000d 2647          	jrne	L133
1096                     ; 432 				switch (usb.rx_buffer[3])
1098  000f c60009        	ld	a,_usb+9
1099  0012 a106          	cp	a,#6
1100  0014 2640          	jrne	L133
1103                     ; 436 						if (usb.rx_buffer[5] == 1)
1105  0016 c6000b        	ld	a,_usb+11
1106  0019 a101          	cp	a,#1
1107  001b 2607          	jrne	L343
1108                     ; 438 							usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor));
1110  001d 4b12          	push	#18
1111  001f ae0000        	ldw	x,#_usb_device_descriptor
1114  0022 2009          	jp	LC002
1115  0024               L343:
1116                     ; 440 						else if (usb.rx_buffer[5] == 2)
1118  0024 a102          	cp	a,#2
1119  0026 262e          	jrne	L133
1120                     ; 441 							usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor));
1122  0028 4b12          	push	#18
1123  002a ae0012        	ldw	x,#_usb_configuration_descriptor
1125  002d               LC002:
1126  002d cd0000        	call	_usb_send_data
1127  0030 84            	pop	a
1129  0031 81            	ret	
1130  0032               L513:
1131                     ; 457 				switch (usb.rx_buffer[3])
1133  0032 c60009        	ld	a,_usb+9
1134  0035 a105          	cp	a,#5
1135  0037 261d          	jrne	L133
1138                     ; 461 						usb.setup_address = usb.rx_buffer[4];
1140  0039 55000a0004    	mov	_usb+4,_usb+10
1141                     ; 463 						usb.tx_lenght = 4;
1143  003e 35040027      	mov	_usb+39,#4
1144                     ; 464 						usb.tx_buffer[0] = 0x80;
1146  0042 35800017      	mov	_usb+23,#128
1147                     ; 465 						usb.tx_buffer[1] = USB_PID_DATA1;
1149  0046 354b0018      	mov	_usb+24,#75
1150                     ; 466 						usb.tx_buffer[2] = 0;
1152  004a 725f0019      	clr	_usb+25
1153                     ; 467 						usb.tx_buffer[3] = 0;
1155  004e 725f001a      	clr	_usb+26
1156                     ; 469 						usb.event = USB_EVENT_READY_DATA_IN;
1158  0052 35020001      	mov	_usb+1,#2
1159                     ; 471 						break;
1161  0056               L133:
1162                     ; 479 }
1165  0056 81            	ret	
1400                     	xdef	_tx_counter
1401                     	xdef	_counter_all
1402                     	xdef	_counter_b
1403                     	xdef	_counter_a
1404                     	xdef	_usb_send_data
1405                     	xdef	_usb_calc_crc16
1406                     	xdef	_usb_rx_ok
1407                     	xdef	_count
1408                     	xdef	_usb_send_ack
1409                     	xdef	_usb_send_nack
1410                     	switch	.bss
1411  0000               _usb:
1412  0000 000000000000  	ds.b	41
1413                     	xdef	_usb
1414                     	xdef	_usb_endpoint_descriptor
1415                     	xdef	_usb_interface_descriptor
1416                     	xdef	_usb_configuration_descriptor
1417                     	xdef	_usb_device_descriptor
1418  0029               _usb_rx_count:
1419  0029 00            	ds.b	1
1420                     	xdef	_usb_rx_count
1421  002a               _usb_tx_buffer_pointer:
1422  002a 0000          	ds.b	2
1423                     	xdef	_usb_tx_buffer_pointer
1424  002c               _usb_rx_buffer:
1425  002c 000000000000  	ds.b	16
1426                     	xdef	_usb_rx_buffer
1427                     	xref	_usb_tx
1428                     	xdef	_usb_process
1429                     	xdef	_usb_init
1430  003c               _usb_tx_count:
1431  003c 00            	ds.b	1
1432                     	xdef	_usb_tx_count
1433                     	xref.b	c_x
1453                     	end
