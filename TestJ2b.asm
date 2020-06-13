; Programa Test Joystick 2b+
; Por Abel Carrasco
;------------------------------
; Atariware.cl 01/05/2019
; 06/04/2019 - Cambio gráficos

RTCLOK = $14
ATRACT = $4d
VDSLST = $200
SDLSTL = $230
PADDL0 = $270
PADDL1 = $271
STICK0 = $278
COLOR1 = $2c5
COLOR2 = $2c6
STRIG0 = $d010
COLPF0 = $d016
COLBK  = $d01a
AUDF1  = $d200
AUDC1  = $d201
AUDF2  = $d202
AUDC2  = $d203
AUDF3  = $d204
AUDC3  = $d205
AUDF4  = $d206
AUDC4  = $d207
AUDCTL = $d208
PORTA  = $d300
WSYNC  = $d40a
NMIEN  = $d40e

	org $2000
	
; Inicio del programa
inicio
	mva #0 AUDCTL
	mva #40 AUDF1
	mva #50 AUDF2
	mva #60 AUDF3
	mva #70 AUDF4
	mwa #dl SDLSTL
	mwa #dli VDSLST
	mva #$c0 NMIEN
	mva #$30 COLOR2
	mva #$f COLOR1
	
; Valida Joystick 2b+
joy2b
	lda PADDL0
	cmp #$e4
	bne existe
no_joystick 
	mensaje error
	jmp joy2b
existe 
	mensaje ok

; Control del joystick 
joystick
	mva #0 ATRACT
	lda STICK0
	pha
derecha
	pla
	pha
	and #8
	bne izquierda
	anima 95,linea2+12,AUDC1
izquierda
	pla
	pha
	and #4
	bne abajo	
	anima 94,linea2+10,AUDC1	
abajo
	pla
	pha
	and #2
	bne arriba
	anima 93,linea3+11,AUDC1	
arriba
	pla
	pha
	and #1
	bne boton1
	anima 92,linea1+11,AUDC1	
boton1
	lda STRIG0
	bne boton2
	anima 145,linea2+18,AUDC2
boton2
	lda PADDL0
	cmp #$e4
	bne boton3
	anima 146,linea2+23,AUDC3
boton3
	lda PADDL1
	cmp #$e4
	bne fin_joystick
	anima 147,linea2+28,AUDC4
fin_joystick
	jmp joystick

; Macro que anima el caracter 
.macro anima :caract :linea :tono
	mva #:1-128 :2
	mva #$af :3
	lda:cmp:req 20
	mva #0 :3
	mva #:1 :2
.endm

.macro mensaje :texto
	ldx #0
lee_texto
	lda :1,x
	sta mensajes,x
	inx
	cpx #39
	bne lee_texto
.endm

; Diseño DL (Display list)
dl
:3	.byte $70
	.byte $70+$80
	.byte $47
	.word title
	.byte $40,$46
	.word author
	.byte $70,$70
	.byte $42
	.word linea
	.byte $42
	.word linea1
	.byte $42
	.word linea2
	.byte $42
	.word linea3
	.byte $42	
	.word linea
	.byte $70,$70,$42
	.word mensajes
	.byte $41
	.word dl

; Diseño de textos	
title
	.byte "   TESTER JOY 2B+   "
author
	.byte "  POR ASCRNET 2019  "

linea
:40	.byte " "
		
linea1
:10	.byte " "
	.byte 0,92,0
:4	.byte " "
	.byte 72," "*,74
:2	.byte " "
	.byte 72," "*,74
:2	.byte " "
	.byte 72," "*,74
:10	.byte " "

linea2
:10	.byte " "
	.byte 94,"O",95
:4	.byte " "
	.byte " "*,"1"*," "*
:2	.byte " "
	.byte " "*,"2"*," "*
:2	.byte " "
	.byte " "*,"3"*," "*
:10	.byte " "

linea3
:10	.byte " "
	.byte 0,93,0
:4	.byte " "
	.byte 202," "*,200
:2	.byte " "
	.byte 202," "*,200
:2	.byte " "
	.byte 202," "*,200
:10	.byte " "

mensajes
:39 .byte " " 


ok
:8	.byte " "
	.byte "http://www.atariware.cl"
:9	.byte " "

error
	.byte "   Joystick 2B+ ","NO CONECTADO"*," al ATARI  "

; Diseño del DLI (Display list interrupts)
dli
	phr
	ldx #$0
dli_color1
	lda dli_colores1,x
	sta COLPF0
	sta WSYNC
	inx
	cpx #16
	bne dli_color1
	ldx #0
dli_color2
	lda dli_colores2,x
	sta COLBK
	sta WSYNC
	inx
	cpx #18
	bne dli_color2
	plr
	rti

; Colores de DLIs
dli_colores1
	.byte $b0,$b0,$b0,$bf,$bf,$bc,$bc,$ba,$ba,$b8,$b8,$b6,$b6,$b4,$b4,$f
dli_colores2
	.byte $0,$0,$0,$2a,$28,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$28,$2a,$0

	run inicio