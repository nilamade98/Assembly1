;
; UAS1.asm
;
; Created: 1/8/2018 11:01:58 PM
; Author : FX46
;


; Tuliskan program mengisi data "HELLO WORLD" di ROM mulai alamat 0x200


ldi ZH, high(data<<1)
ldi ZL, low(data<<1)

L1:		LPM r20, Z+
		cpi r20, 0
		breq stop
		rjmp L1

stop :	rjmp stop

.org 0x200
data : .db "HELLO WORLD",0