;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_useFirstHalfTilesforSprites_False
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$3$0$0	= .
	.globl	C$main.c$3$0$0
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1$38	= .
	.globl	C$main.c$5$1$38
;main.c:5: devkit_SMS_init();
	call	_devkit_SMS_init
	C$main.c$6$1$38	= .
	.globl	C$main.c$6$1$38
;main.c:6: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$main.c$9$1$38	= .
	.globl	C$main.c$9$1$38
;main.c:9: devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	call	_devkit_SPRITEMODE_NORMAL
	ld	b, l
	push	bc
	inc	sp
	call	_devkit_SMS_setSpriteMode
	inc	sp
	C$main.c$10$1$38	= .
	.globl	C$main.c$10$1$38
;main.c:10: devkit_SMS_useFirstHalfTilesforSprites_False();
	call	_devkit_SMS_useFirstHalfTilesforSprites_False
	C$main.c$11$1$38	= .
	.globl	C$main.c$11$1$38
;main.c:11: devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	call	_devkit_VDPFEATURE_HIDEFIRSTCOL
	push	hl
	call	_devkit_SMS_VDPturnOnFeature
	pop	af
	C$main.c$16$1$38	= .
	.globl	C$main.c$16$1$38
;main.c:16: devkit_SMS_setSpritePaletteColor( 0, 3, 3, 3 );
	ld	hl, #0x0303
	push	hl
	ld	l, #0x00
	push	hl
	call	_devkit_SMS_setSpritePaletteColor
	pop	af
	pop	af
	C$main.c$18$1$38	= .
	.globl	C$main.c$18$1$38
;main.c:18: devkit_SMS_displayOn();
	call	_devkit_SMS_displayOn
00102$:
	C$main.c$26$3$40	= .
	.globl	C$main.c$26$3$40
;main.c:26: devkit_SMS_waitForVBlank();
	call	_devkit_SMS_waitForVBlank
	C$main.c$29$2$39	= .
	.globl	C$main.c$29$2$39
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
