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
  50  001b               _usb_interface_descriptor:
  51  001b 09            	dc.b	9
  52  001c 04            	dc.b	4
  53  001d 01            	dc.b	1
  54  001e 00            	dc.b	0
  55  001f 01            	dc.b	1
  56  0020 00            	dc.b	0
  57  0021 00            	dc.b	0
  58  0022 00            	dc.b	0
  59  0023 00            	dc.b	0
  60  0024               _usb_endpoint_descriptor:
  61  0024 07            	dc.b	7
  62  0025 05            	dc.b	5
  63  0026 81            	dc.b	129
  64  0027 03            	dc.b	3
  65  0028 08            	dc.b	8
  66  0029 00            	dc.b	0
  67  002a 0a            	dc.b	10
  97                     ; 142 void usb_init(void)
  97                     ; 143 {
  99                     .text:	section	.text,new
 100  0000               _usb_init:
 104                     ; 144 	usb.state = USB_STATE_IDLE;
 106  0000 725f0000      	clr	_usb
 107                     ; 145 	usb.event = USB_EVENT_NO;
 109  0004 725f0001      	clr	_usb+1
 110                     ; 146 	usb.device_address = 0;
 112  0008 725f0002      	clr	_usb+2
 113                     ; 147 	usb.tx_is_all = TRUE;
 115  000c 35010028      	mov	_usb+40,#1
 116                     ; 148 }
 119  0010 81            	ret	
 163                     ; 150 void usb_send_nack(void)
 163                     ; 151 {
 164                     .text:	section	.text,new
 165  0000               _usb_send_nack:
 167  0000 89            	pushw	x
 168       00000002      OFST:	set	2
 171                     ; 154 	GPIOC->ODR = 0x80;
 173  0001 3580500a      	mov	20490,#128
 174                     ; 155 	GPIOC->CR1 = 0xFF;
 176  0005 35ff500d      	mov	20493,#255
 177                     ; 156 	GPIOC->CR2 = 0xFF;
 179  0009 35ff500e      	mov	20494,#255
 180                     ; 157 	GPIOC->DDR = 0xFF;
 182  000d 35ff500c      	mov	20492,#255
 183                     ; 159 	data[0] = 0x80;
 185  0011 a680          	ld	a,#128
 186  0013 6b01          	ld	(OFST-1,sp),a
 187                     ; 160 	data[1] = USB_PID_NACK;
 189  0015 a65a          	ld	a,#90
 190  0017 6b02          	ld	(OFST+0,sp),a
 191                     ; 162 	usb_tx_count = 2;
 193  0019 3502003c      	mov	_usb_tx_count,#2
 194                     ; 163 	usb_tx_buffer_pointer = &data[0];
 196  001d 96            	ldw	x,sp
 197  001e 5c            	incw	x
 198  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 199                     ; 165 	usb_tx();
 201  0022 cd0000        	call	_usb_tx
 203                     ; 167 	nop();
 206  0025 9d            	nop	
 208                     ; 168 	nop();
 212  0026 9d            	nop	
 214                     ; 169 	nop();
 218  0027 9d            	nop	
 220                     ; 170 	nop();
 224  0028 9d            	nop	
 226                     ; 171 	nop();
 230  0029 9d            	nop	
 232                     ; 172 	nop();
 236  002a 9d            	nop	
 238                     ; 174 	GPIOC->CR2 = 0x00;
 241  002b 725f500e      	clr	20494
 242                     ; 175 	GPIOC->CR1 = 0x00;
 244  002f 725f500d      	clr	20493
 245                     ; 176 	GPIOC->DDR = 0x3F;
 247  0033 353f500c      	mov	20492,#63
 248                     ; 177 }
 251  0037 85            	popw	x
 252  0038 81            	ret	
 296                     ; 179 void usb_send_ack(void)
 296                     ; 180 {
 297                     .text:	section	.text,new
 298  0000               _usb_send_ack:
 300  0000 89            	pushw	x
 301       00000002      OFST:	set	2
 304                     ; 183 	GPIOC->ODR = 0x80;
 306  0001 3580500a      	mov	20490,#128
 307                     ; 184 	GPIOC->CR1 = 0xFF;
 309  0005 35ff500d      	mov	20493,#255
 310                     ; 185 	GPIOC->CR2 = 0xFF;
 312  0009 35ff500e      	mov	20494,#255
 313                     ; 186 	GPIOC->DDR = 0xFF;
 315  000d 35ff500c      	mov	20492,#255
 316                     ; 188 	data[0] = 0x80;
 318  0011 a680          	ld	a,#128
 319  0013 6b01          	ld	(OFST-1,sp),a
 320                     ; 189 	data[1] = USB_PID_ACK;
 322  0015 a6d2          	ld	a,#210
 323  0017 6b02          	ld	(OFST+0,sp),a
 324                     ; 191 	usb_tx_count = 2;
 326  0019 3502003c      	mov	_usb_tx_count,#2
 327                     ; 192 	usb_tx_buffer_pointer = &data[0];
 329  001d 96            	ldw	x,sp
 330  001e 5c            	incw	x
 331  001f cf002a        	ldw	_usb_tx_buffer_pointer,x
 332                     ; 194 	usb_tx();
 334  0022 cd0000        	call	_usb_tx
 336                     ; 196 	nop();
 339  0025 9d            	nop	
 341                     ; 197 	nop();
 345  0026 9d            	nop	
 347                     ; 198 	nop();
 351  0027 9d            	nop	
 353                     ; 199 	nop();
 357  0028 9d            	nop	
 359                     ; 200 	nop();
 363  0029 9d            	nop	
 365                     ; 201 	nop();
 369  002a 9d            	nop	
 371                     ; 203 	GPIOC->CR2 = 0x00;
 374  002b 725f500e      	clr	20494
 375                     ; 204 	GPIOC->CR1 = 0x00;
 377  002f 725f500d      	clr	20493
 378                     ; 205 	GPIOC->DDR = 0x3F;
 380  0033 353f500c      	mov	20492,#63
 381                     ; 206 }
 384  0037 85            	popw	x
 385  0038 81            	ret	
 388                     	switch	.data
 389  0000               _count:
 390  0000 00            	dc.b	0
 435                     ; 242 void usb_rx_ok(void)
 435                     ; 243 {
 436                     .text:	section	.text,new
 437  0000               _usb_rx_ok:
 439  0000 88            	push	a
 440       00000001      OFST:	set	1
 443                     ; 244 	switch (usb_rx_buffer[1])
 445  0001 c6002d        	ld	a,_usb_rx_buffer+1
 447                     ; 317 			break;
 448  0004 a02d          	sub	a,#45
 449  0006 2725          	jreq	L55
 450  0008 a01e          	sub	a,#30
 451  000a 2603cc00a1    	jreq	L521
 452  000f a00f          	sub	a,#15
 453  0011 2603cc00af    	jreq	L63
 454  0016 a00f          	sub	a,#15
 455  0018 271f          	jreq	L16
 456  001a a05a          	sub	a,#90
 457  001c 2761          	jreq	L56
 458  001e a00f          	sub	a,#15
 459  0020 27f1          	jreq	L63
 460  0022 a00f          	sub	a,#15
 461  0024 270d          	jreq	L75
 462                     ; 315 			usb.state = USB_STATE_IDLE;
 464  0026 725f0000      	clr	_usb
 465                     ; 317 			break;
 467  002a cc00af        	jra	L63
 468  002d               L55:
 469                     ; 248 			usb.state = USB_STATE_SETUP;
 471  002d 35010000      	mov	_usb,#1
 472                     ; 250 			break;
 474  0031 207c          	jra	L63
 475  0033               L75:
 476                     ; 254 			usb.state = USB_STATE_OUT;
 478  0033 35030000      	mov	_usb,#3
 479                     ; 256 			break;
 481  0037 2076          	jra	L63
 482  0039               L16:
 483                     ; 260 			if (usb.event == USB_EVENT_READY_DATA_IN)
 485  0039 c60001        	ld	a,_usb+1
 486  003c a102          	cp	a,#2
 487  003e 2636          	jrne	L121
 488                     ; 212 	GPIOC->ODR = 0x80;
 491  0040 3580500a      	mov	20490,#128
 492                     ; 213 	GPIOC->CR1 = 0xFF;
 494  0044 35ff500d      	mov	20493,#255
 495                     ; 214 	GPIOC->CR2 = 0xFF;
 497  0048 35ff500e      	mov	20494,#255
 498                     ; 215 	GPIOC->DDR = 0xFF;
 500  004c 35ff500c      	mov	20492,#255
 501                     ; 217 	usb_tx_count = usb.tx_lenght;
 503                     ; 218 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 505  0050 ae0017        	ldw	x,#_usb+23
 506  0053 550027003c    	mov	_usb_tx_count,_usb+39
 507  0058 cf002a        	ldw	_usb_tx_buffer_pointer,x
 508                     ; 220 	usb_tx();
 510  005b cd0000        	call	_usb_tx
 512                     ; 222 	nop();
 515  005e 9d            	nop	
 517                     ; 223 	nop();
 521  005f 9d            	nop	
 523                     ; 224 	nop();
 527  0060 9d            	nop	
 529                     ; 225 	nop();
 533  0061 9d            	nop	
 535                     ; 226 	nop();
 539  0062 9d            	nop	
 541                     ; 227 	nop();
 545  0063 9d            	nop	
 547                     ; 229 	GPIOC->CR2 = 0x00;
 550  0064 725f500e      	clr	20494
 551                     ; 230 	GPIOC->CR1 = 0x00;
 553  0068 725f500d      	clr	20493
 554                     ; 231 	GPIOC->DDR = 0x3F;
 556  006c 353f500c      	mov	20492,#63
 557                     ; 264 				usb.event = USB_EVENT_WAIT_DATA_IN;
 560  0070 35030001      	mov	_usb+1,#3
 562  0074 2003          	jra	L321
 563  0076               L121:
 564                     ; 268 				usb_send_nack();
 566  0076 cd0000        	call	_usb_send_nack
 568  0079               L321:
 569                     ; 271 			usb.state = USB_STATE_IN;
 571  0079 35020000      	mov	_usb,#2
 572                     ; 273 			break;
 574  007d 2030          	jra	L63
 575  007f               L56:
 576                     ; 277 			if (usb.state == USB_STATE_SETUP)
 578  007f c60000        	ld	a,_usb
 579  0082 4a            	dec	a
 580  0083 261c          	jrne	L521
 581                     ; 279 				usb_send_ack();
 583  0085 cd0000        	call	_usb_send_ack
 585                     ; 236 	uint8_t index = 0;
 588                     ; 238 	for (index = 0; index < ARRAY_LENGHT(usb_rx_buffer); index++)
 590  0088 4f            	clr	a
 591  0089 6b01          	ld	(OFST+0,sp),a
 592  008b               L721:
 593                     ; 239 		usb.rx_buffer[index] = usb_rx_buffer[index];
 595  008b 5f            	clrw	x
 596  008c 97            	ld	xl,a
 597  008d d6002c        	ld	a,(_usb_rx_buffer,x)
 598  0090 d70006        	ld	(_usb+6,x),a
 599                     ; 238 	for (index = 0; index < ARRAY_LENGHT(usb_rx_buffer); index++)
 601  0093 0c01          	inc	(OFST+0,sp)
 604  0095 7b01          	ld	a,(OFST+0,sp)
 605  0097 a110          	cp	a,#16
 606  0099 25f0          	jrult	L721
 607                     ; 283 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 610  009b 35010001      	mov	_usb+1,#1
 612  009f 200e          	jra	L63
 613  00a1               L521:
 614                     ; 285 			else if (usb.state == USB_STATE_OUT)
 615                     ; 287 				usb_send_ack();
 617                     ; 289 				usb.event == USB_EVENT_NO;
 618                     ; 296 			if (usb.state == USB_STATE_OUT)
 620                     ; 298 				usb_send_ack();
 623                     ; 300 				usb.event == USB_EVENT_NO;
 626  00a1 c60000        	ld	a,_usb
 627  00a4 a103          	cp	a,#3
 628  00a6 2607          	jrne	L63
 630  00a8 cd0000        	call	_usb_send_ack
 632  00ab 725d0001      	tnz	_usb+1
 633  00af               L63:
 634                     ; 320 }
 637  00af 84            	pop	a
 638  00b0 81            	ret	
 701                     ; 322 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 701                     ; 323 {
 702                     .text:	section	.text,new
 703  0000               _usb_calc_crc16:
 705  0000 89            	pushw	x
 706  0001 5204          	subw	sp,#4
 707       00000004      OFST:	set	4
 710                     ; 324 	uint16_t crc = 0xFFFF;
 712  0003 aeffff        	ldw	x,#65535
 713  0006 1f03          	ldw	(OFST-1,sp),x
 714                     ; 328 	for (index = 0; index < lenght; index++)
 716  0008 0f01          	clr	(OFST-3,sp)
 718  000a 203c          	jra	L571
 719  000c               L171:
 720                     ; 330 		crc ^= *buffer++;
 722  000c 1e05          	ldw	x,(OFST+1,sp)
 723  000e f6            	ld	a,(x)
 724  000f 5c            	incw	x
 725  0010 1f05          	ldw	(OFST+1,sp),x
 726  0012 5f            	clrw	x
 727  0013 97            	ld	xl,a
 728  0014 01            	rrwa	x,a
 729  0015 1804          	xor	a,(OFST+0,sp)
 730  0017 01            	rrwa	x,a
 731  0018 1803          	xor	a,(OFST-1,sp)
 732  001a 01            	rrwa	x,a
 733  001b 1f03          	ldw	(OFST-1,sp),x
 734                     ; 332 		for (i = 8; i--;)
 736  001d a608          	ld	a,#8
 737  001f 6b02          	ld	(OFST-2,sp),a
 739  0021 201c          	jra	L502
 740  0023               L102:
 741                     ; 334 			if ((crc & BIT(0)) != 0)
 743  0023 7b04          	ld	a,(OFST+0,sp)
 744  0025 a501          	bcp	a,#1
 745  0027 2712          	jreq	L112
 746                     ; 336 				crc >>= 1;
 748  0029 0403          	srl	(OFST-1,sp)
 749  002b 0604          	rrc	(OFST+0,sp)
 750                     ; 337 				crc ^= 0xA001;
 752  002d 7b04          	ld	a,(OFST+0,sp)
 753  002f a801          	xor	a,#1
 754  0031 6b04          	ld	(OFST+0,sp),a
 755  0033 7b03          	ld	a,(OFST-1,sp)
 756  0035 a8a0          	xor	a,#160
 757  0037 6b03          	ld	(OFST-1,sp),a
 759  0039 2004          	jra	L502
 760  003b               L112:
 761                     ; 341 				crc >>= 1;
 763  003b 0403          	srl	(OFST-1,sp)
 764  003d 0604          	rrc	(OFST+0,sp)
 765  003f               L502:
 766                     ; 332 		for (i = 8; i--;)
 768  003f 7b02          	ld	a,(OFST-2,sp)
 769  0041 0a02          	dec	(OFST-2,sp)
 770  0043 4d            	tnz	a
 771  0044 26dd          	jrne	L102
 772                     ; 328 	for (index = 0; index < lenght; index++)
 774  0046 0c01          	inc	(OFST-3,sp)
 775  0048               L571:
 778  0048 7b01          	ld	a,(OFST-3,sp)
 779  004a 1109          	cp	a,(OFST+5,sp)
 780  004c 25be          	jrult	L171
 781                     ; 346 	crc = ~crc;
 783  004e 1e03          	ldw	x,(OFST-1,sp)
 784  0050 53            	cplw	x
 785  0051 1f03          	ldw	(OFST-1,sp),x
 786                     ; 348 	*buffer++ = (uint8_t) crc;
 788  0053 1e05          	ldw	x,(OFST+1,sp)
 789  0055 7b04          	ld	a,(OFST+0,sp)
 790  0057 f7            	ld	(x),a
 791  0058 5c            	incw	x
 792  0059 1f05          	ldw	(OFST+1,sp),x
 793                     ; 349 	*buffer = (uint8_t) (crc >> 8);
 795  005b 7b03          	ld	a,(OFST-1,sp)
 796  005d f7            	ld	(x),a
 797                     ; 350 }
 800  005e 5b06          	addw	sp,#6
 801  0060 81            	ret	
 859                     ; 352 void usb_send_data(uint8_t * buffer, uint8_t lenght)
 859                     ; 353 {
 860                     .text:	section	.text,new
 861  0000               _usb_send_data:
 863  0000 89            	pushw	x
 864  0001 89            	pushw	x
 865       00000002      OFST:	set	2
 868                     ; 354 	uint8_t data_sync = USB_PID_DATA1;
 870  0002 a64b          	ld	a,#75
 871  0004 6b01          	ld	(OFST-1,sp),a
 873  0006 cc00a6        	jra	L542
 874  0009               L142:
 875                     ; 359 		if (lenght >= 8)
 877  0009 a108          	cp	a,#8
 878  000b 252e          	jrult	L152
 879                     ; 361 			usb.tx_lenght = 12;
 881  000d 350c0027      	mov	_usb+39,#12
 882                     ; 363 			usb.tx_buffer[0] = 0x80;
 884  0011 35800017      	mov	_usb+23,#128
 885                     ; 364 			usb.tx_buffer[1] = data_sync;
 887  0015 7b01          	ld	a,(OFST-1,sp)
 888  0017 c70018        	ld	_usb+24,a
 889                     ; 366 			for (index = 2; index < 10; index++)
 891  001a a602          	ld	a,#2
 892  001c 6b02          	ld	(OFST+0,sp),a
 893  001e               L352:
 894                     ; 367 				usb.tx_buffer[index] = *buffer++;
 896  001e 5f            	clrw	x
 897  001f 1603          	ldw	y,(OFST+1,sp)
 898  0021 97            	ld	xl,a
 899  0022 90f6          	ld	a,(y)
 900  0024 905c          	incw	y
 901  0026 1703          	ldw	(OFST+1,sp),y
 902  0028 d70017        	ld	(_usb+23,x),a
 903                     ; 366 			for (index = 2; index < 10; index++)
 905  002b 0c02          	inc	(OFST+0,sp)
 908  002d 7b02          	ld	a,(OFST+0,sp)
 909  002f a10a          	cp	a,#10
 910  0031 25eb          	jrult	L352
 911                     ; 369 			lenght -= 8;
 913  0033 7b07          	ld	a,(OFST+5,sp)
 914  0035 a008          	sub	a,#8
 915  0037 6b07          	ld	(OFST+5,sp),a
 917  0039 203c          	jra	L162
 918  003b               L152:
 919                     ; 373 			usb.tx_lenght = (uint8_t) (4 + lenght);
 921  003b ab04          	add	a,#4
 922  003d c70027        	ld	_usb+39,a
 923                     ; 375 			usb.tx_buffer[0] = 0x80;
 925  0040 35800017      	mov	_usb+23,#128
 926                     ; 376 			usb.tx_buffer[1] = data_sync;
 928  0044 7b01          	ld	a,(OFST-1,sp)
 929  0046 c70018        	ld	_usb+24,a
 930                     ; 378 			for (index = 2; index < 2 + lenght; index++)
 932  0049 a602          	ld	a,#2
 933  004b 6b02          	ld	(OFST+0,sp),a
 935  004d 2013          	jra	L762
 936  004f               L362:
 937                     ; 379 				usb.tx_buffer[index] = *buffer++;
 939  004f 7b02          	ld	a,(OFST+0,sp)
 940  0051 5f            	clrw	x
 941  0052 1603          	ldw	y,(OFST+1,sp)
 942  0054 97            	ld	xl,a
 943  0055 90f6          	ld	a,(y)
 944  0057 905c          	incw	y
 945  0059 1703          	ldw	(OFST+1,sp),y
 946  005b d70017        	ld	(_usb+23,x),a
 947                     ; 378 			for (index = 2; index < 2 + lenght; index++)
 949  005e 0c02          	inc	(OFST+0,sp)
 950  0060 7b02          	ld	a,(OFST+0,sp)
 951  0062               L762:
 954  0062 5f            	clrw	x
 955  0063 97            	ld	xl,a
 956  0064 7b07          	ld	a,(OFST+5,sp)
 957  0066 905f          	clrw	y
 958  0068 9097          	ld	yl,a
 959  006a bf00          	ldw	c_x,x
 960  006c 72a90002      	addw	y,#2
 961  0070 90b300        	cpw	y,c_x
 962  0073 2cda          	jrsgt	L362
 963                     ; 381 			lenght = 0;
 965  0075 0f07          	clr	(OFST+5,sp)
 966  0077               L162:
 967                     ; 385 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
 969  0077 c60027        	ld	a,_usb+39
 970  007a a004          	sub	a,#4
 971  007c 88            	push	a
 972  007d ae0019        	ldw	x,#_usb+25
 973  0080 cd0000        	call	_usb_calc_crc16
 975  0083 84            	pop	a
 976                     ; 388 		if (data_sync == USB_PID_DATA1)
 978  0084 7b01          	ld	a,(OFST-1,sp)
 979  0086 a14b          	cp	a,#75
 980  0088 2604          	jrne	L372
 981                     ; 389 			data_sync = USB_PID_DATA0;
 983  008a a6c3          	ld	a,#195
 985  008c 2002          	jra	L572
 986  008e               L372:
 987                     ; 391 			data_sync = USB_PID_DATA1;
 989  008e a64b          	ld	a,#75
 990  0090               L572:
 991  0090 6b01          	ld	(OFST-1,sp),a
 992                     ; 394 		usb.event = USB_EVENT_READY_DATA_IN;
 994  0092 35020001      	mov	_usb+1,#2
 996  0096 2007          	jra	L303
 997  0098               L772:
 998                     ; 398 			if (usb.state != USB_STATE_IN)
1000  0098 c60000        	ld	a,_usb
1001  009b a102          	cp	a,#2
1002  009d 260e          	jrne	L05
1003                     ; 399 				return;
1005  009f               L303:
1006                     ; 396 		while (usb.event == USB_EVENT_READY_DATA_IN)
1008  009f c60001        	ld	a,_usb+1
1009  00a2 a102          	cp	a,#2
1010  00a4 27f2          	jreq	L772
1011  00a6               L542:
1012                     ; 357 	while (lenght > 0)
1014  00a6 7b07          	ld	a,(OFST+5,sp)
1015  00a8 2703cc0009    	jrne	L142
1016                     ; 402 }
1017  00ad               L05:
1020  00ad 5b04          	addw	sp,#4
1021  00af 81            	ret	
1024                     	switch	.data
1025  0001               _counter_a:
1026  0001 00            	dc.b	0
1027  0002               _counter_b:
1028  0002 00            	dc.b	0
1029  0003               _counter_all:
1030  0003 00            	dc.b	0
1031  0004               _tx_counter:
1032  0004 00            	dc.b	0
1057                     ; 410 void usb_process(void)
1057                     ; 411 {
1058                     .text:	section	.text,new
1059  0000               _usb_process:
1063                     ; 412 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1065  0000 c60001        	ld	a,_usb+1
1066  0003 4a            	dec	a
1067  0004 2650          	jrne	L133
1068                     ; 414 		switch (usb.rx_buffer[2])
1070  0006 c60008        	ld	a,_usb+8
1072                     ; 459 				break;
1073  0009 2727          	jreq	L513
1074  000b a080          	sub	a,#128
1075  000d 2647          	jrne	L133
1076                     ; 418 				switch (usb.rx_buffer[3])
1078  000f c60009        	ld	a,_usb+9
1079  0012 a106          	cp	a,#6
1080  0014 2640          	jrne	L133
1083                     ; 422 						if (usb.rx_buffer[5] == 1)
1085  0016 c6000b        	ld	a,_usb+11
1086  0019 a101          	cp	a,#1
1087  001b 2607          	jrne	L343
1088                     ; 423 							usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor));
1090  001d 4b12          	push	#18
1091  001f ae0000        	ldw	x,#_usb_device_descriptor
1094  0022 2009          	jp	LC002
1095  0024               L343:
1096                     ; 424 						else if (usb.rx_buffer[5] == 2)
1098  0024 a102          	cp	a,#2
1099  0026 262e          	jrne	L133
1100                     ; 425 							usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor));
1102  0028 4b09          	push	#9
1103  002a ae0012        	ldw	x,#_usb_configuration_descriptor
1105  002d               LC002:
1106  002d cd0000        	call	_usb_send_data
1107  0030 84            	pop	a
1109  0031 81            	ret	
1110  0032               L513:
1111                     ; 441 				switch (usb.rx_buffer[3])
1113  0032 c60009        	ld	a,_usb+9
1114  0035 a105          	cp	a,#5
1115  0037 261d          	jrne	L133
1118                     ; 445 						usb.device_address = usb.rx_buffer[4];
1120  0039 55000a0002    	mov	_usb+2,_usb+10
1121                     ; 447 						usb.tx_lenght = 4;
1123  003e 35040027      	mov	_usb+39,#4
1124                     ; 448 						usb.tx_buffer[0] = 0x80;
1126  0042 35800017      	mov	_usb+23,#128
1127                     ; 449 						usb.tx_buffer[1] = USB_PID_DATA1;
1129  0046 354b0018      	mov	_usb+24,#75
1130                     ; 450 						usb.tx_buffer[2] = 0;
1132  004a 725f0019      	clr	_usb+25
1133                     ; 451 						usb.tx_buffer[3] = 0;
1135  004e 725f001a      	clr	_usb+26
1136                     ; 453 						usb.event = USB_EVENT_READY_DATA_IN;
1138  0052 35020001      	mov	_usb+1,#2
1139                     ; 455 						break;
1141  0056               L133:
1142                     ; 463 }
1145  0056 81            	ret	
1380                     	xdef	_tx_counter
1381                     	xdef	_counter_all
1382                     	xdef	_counter_b
1383                     	xdef	_counter_a
1384                     	xdef	_usb_send_data
1385                     	xdef	_usb_calc_crc16
1386                     	xdef	_usb_rx_ok
1387                     	xdef	_count
1388                     	xdef	_usb_send_ack
1389                     	xdef	_usb_send_nack
1390                     	switch	.bss
1391  0000               _usb:
1392  0000 000000000000  	ds.b	41
1393                     	xdef	_usb
1394                     	xdef	_usb_endpoint_descriptor
1395                     	xdef	_usb_interface_descriptor
1396                     	xdef	_usb_configuration_descriptor
1397                     	xdef	_usb_device_descriptor
1398  0029               _usb_rx_count:
1399  0029 00            	ds.b	1
1400                     	xdef	_usb_rx_count
1401  002a               _usb_tx_buffer_pointer:
1402  002a 0000          	ds.b	2
1403                     	xdef	_usb_tx_buffer_pointer
1404  002c               _usb_rx_buffer:
1405  002c 000000000000  	ds.b	16
1406                     	xdef	_usb_rx_buffer
1407                     	xref	_usb_tx
1408                     	xdef	_usb_process
1409                     	xdef	_usb_init
1410  003c               _usb_tx_count:
1411  003c 00            	ds.b	1
1412                     	xdef	_usb_tx_count
1413                     	xref.b	c_x
1433                     	end
