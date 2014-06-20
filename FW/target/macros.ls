   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  20                     	switch	.bss
  21  0000               L31_counter_0_5_ms:
  22  0000 00            	ds.b	1
  62                     ; 14 void synchronization_10ms_refresh(void)
  62                     ; 15 {
  64                     .text:	section	.text,new
  65  0000               _synchronization_10ms_refresh:
  69                     ; 18 	if (is_ready == FALSE)
  71  0000 7200000013    	btjt	L11_is_ready,L73
  72                     ; 20 		if (++counter_0_5_ms >= 20)
  74  0005 725c0000      	inc	L31_counter_0_5_ms
  75  0009 c60000        	ld	a,L31_counter_0_5_ms
  76  000c a114          	cp	a,#20
  77  000e 2508          	jrult	L73
  78                     ; 22 			counter_0_5_ms = 0;
  80  0010 725f0000      	clr	L31_counter_0_5_ms
  81                     ; 23 			is_ready = TRUE;
  83  0014 72100000      	bset	L11_is_ready
  84  0018               L73:
  85                     ; 26 }
  88  0018 81            	ret	
 114                     ; 28 _Bool time_synchronization_10ms(void)
 114                     ; 29 {
 115                     .text:	section	.text,new
 116  0000               _time_synchronization_10ms:
 120                     ; 30 	if (is_ready == TRUE)
 122  0000 7201000007    	btjf	L11_is_ready,L35
 123                     ; 32 		is_ready = FALSE;
 125  0005 72110000      	bres	L11_is_ready
 126                     ; 33 		return TRUE;
 128  0009 a601          	ld	a,#1
 131  000b 81            	ret	
 132  000c               L35:
 133                     ; 36 	return FALSE;
 135  000c 4f            	clr	a
 138  000d 81            	ret	
 162                     ; 39 uint8_t get_random_byte(void)
 162                     ; 40 {
 163                     .text:	section	.text,new
 164  0000               _get_random_byte:
 168                     ; 41 	random *= 5;
 170  0000 ce0001        	ldw	x,L7_random
 171  0003 90ae0005      	ldw	y,#5
 172  0007 cd0000        	call	c_imul
 174  000a cf0001        	ldw	L7_random,x
 175                     ; 42 	random += 1;
 177  000d ce0001        	ldw	x,L7_random
 178  0010 5c            	incw	x
 179  0011 cf0001        	ldw	L7_random,x
 180                     ; 43 	random %= 256;
 182  0014 c60001        	ld	a,L7_random
 183  0017 c60002        	ld	a,L7_random+1
 184  001a 5f            	clrw	x
 185  001b c70002        	ld	L7_random+1,a
 186  001e 4f            	clr	a
 187  001f c70001        	ld	L7_random,a
 188                     ; 45 	return (uint8_t) random;
 190  0022 c60002        	ld	a,L7_random+1
 193  0025 81            	ret	
 229                     ; 48 void delay_ms(volatile uint16_t delay)
 229                     ; 49 {
 230                     .text:	section	.text,new
 231  0000               _delay_ms:
 235                     ; 50 	delay_count = delay << 1;
 237  0000 58            	sllw	x
 238  0001 cf0003        	ldw	L3_delay_count,x
 239                     ; 51 	delay_flag = TRUE;
 241  0004 72100001      	bset	L5_delay_flag
 243  0008               L701:
 244                     ; 53 	while (delay_flag == TRUE)
 246  0008 72000001fb    	btjt	L5_delay_flag,L701
 247                     ; 56 }
 250  000d 81            	ret	
 275                     ; 58 void delay_ms_refresh(void)
 275                     ; 59 {
 276                     .text:	section	.text,new
 277  0000               _delay_ms_refresh:
 281                     ; 60 	if (delay_flag == TRUE)
 283  0000 720100010d    	btjf	L5_delay_flag,L321
 284                     ; 62 		if (--delay_count == 0U)
 286  0005 ce0003        	ldw	x,L3_delay_count
 287  0008 5a            	decw	x
 288  0009 cf0003        	ldw	L3_delay_count,x
 289  000c 2604          	jrne	L321
 290                     ; 64 			delay_flag = FALSE;
 292  000e 72110001      	bres	L5_delay_flag
 293  0012               L321:
 294                     ; 67 }
 297  0012 81            	ret	
 350                     .bit:	section	.data,bit
 351  0000               L11_is_ready:
 352  0000 00            	ds.b	1
 353                     	switch	.bss
 354  0001               L7_random:
 355  0001 0000          	ds.b	2
 356                     	switch	.bit
 357  0001               L5_delay_flag:
 358  0001 00            	ds.b	1
 359                     	switch	.bss
 360  0003               L3_delay_count:
 361  0003 0000          	ds.b	2
 362                     	xdef	_time_synchronization_10ms
 363                     	xdef	_synchronization_10ms_refresh
 364                     	xdef	_get_random_byte
 365                     	xdef	_delay_ms
 366                     	xdef	_delay_ms_refresh
 367                     	xref.b	c_x
 387                     	xref	c_imul
 388                     	end
