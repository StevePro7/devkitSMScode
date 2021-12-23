;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module _sms_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_setBGPaletteColor
	.globl _SMS_finalizeSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_loadSTMcompressedTileMapArea
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _devkit_SMS_init
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_setBGScrollX
	.globl _devkit_SMS_setBGScrollY
	.globl _devkit_SMS_enableSRAM
	.globl _devkit_SMS_enableSRAMBank
	.globl _devkit_SMS_disableSRAM
	.globl _devkit_SMS_SRAM
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_useFirstHalfTilesforSprites_False
	.globl _devkit_SMS_useFirstHalfTilesforSprites_True
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_setBGPaletteColor
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_setTilePriority
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_copySpritestoSAT
	.globl _devkit_SMS_queryPauseRequested
	.globl _devkit_SMS_resetPauseRequest
	.globl _devkit_isCollisionDetected
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_PORT_A_KEY_UP
	.globl _devkit_PORT_A_KEY_DOWN
	.globl _devkit_PORT_A_KEY_LEFT
	.globl _devkit_PORT_A_KEY_RIGHT
	.globl _devkit_PORT_A_KEY_1
	.globl _devkit_PORT_A_KEY_2
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_TILE_PRIORITY
	.globl _devkit_TILE_USE_SPRITE_PALETTE
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0$0 == 0x8000
_SMS_SRAM	=	0x8000
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
	G$devkit_SMS_init$0$0	= .
	.globl	G$devkit_SMS_init$0$0
	C$_sms_manager.c$11$0$0	= .
	.globl	C$_sms_manager.c$11$0$0
;_sms_manager.c:11: void devkit_SMS_init()
;	---------------------------------
; Function devkit_SMS_init
; ---------------------------------
_devkit_SMS_init::
	C$_sms_manager.c$13$1$74	= .
	.globl	C$_sms_manager.c$13$1$74
;_sms_manager.c:13: SMS_init();
	C$_sms_manager.c$14$1$74	= .
	.globl	C$_sms_manager.c$14$1$74
	XG$devkit_SMS_init$0$0	= .
	.globl	XG$devkit_SMS_init$0$0
	jp  _SMS_init
	G$devkit_SMS_displayOn$0$0	= .
	.globl	G$devkit_SMS_displayOn$0$0
	C$_sms_manager.c$15$1$74	= .
	.globl	C$_sms_manager.c$15$1$74
;_sms_manager.c:15: void devkit_SMS_displayOn()
;	---------------------------------
; Function devkit_SMS_displayOn
; ---------------------------------
_devkit_SMS_displayOn::
	C$_sms_manager.c$17$1$75	= .
	.globl	C$_sms_manager.c$17$1$75
;_sms_manager.c:17: SMS_displayOn();
	ld	hl, #0x0140
	C$_sms_manager.c$18$1$75	= .
	.globl	C$_sms_manager.c$18$1$75
	XG$devkit_SMS_displayOn$0$0	= .
	.globl	XG$devkit_SMS_displayOn$0$0
	jp  _SMS_VDPturnOnFeature
	G$devkit_SMS_displayOff$0$0	= .
	.globl	G$devkit_SMS_displayOff$0$0
	C$_sms_manager.c$19$1$75	= .
	.globl	C$_sms_manager.c$19$1$75
;_sms_manager.c:19: void devkit_SMS_displayOff()
;	---------------------------------
; Function devkit_SMS_displayOff
; ---------------------------------
_devkit_SMS_displayOff::
	C$_sms_manager.c$21$1$76	= .
	.globl	C$_sms_manager.c$21$1$76
;_sms_manager.c:21: SMS_displayOff();
	ld	hl, #0x0140
	C$_sms_manager.c$22$1$76	= .
	.globl	C$_sms_manager.c$22$1$76
	XG$devkit_SMS_displayOff$0$0	= .
	.globl	XG$devkit_SMS_displayOff$0$0
	jp  _SMS_VDPturnOffFeature
	G$devkit_SMS_mapROMBank$0$0	= .
	.globl	G$devkit_SMS_mapROMBank$0$0
	C$_sms_manager.c$23$1$76	= .
	.globl	C$_sms_manager.c$23$1$76
;_sms_manager.c:23: void devkit_SMS_mapROMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_mapROMBank
; ---------------------------------
_devkit_SMS_mapROMBank::
	C$_sms_manager.c$25$1$78	= .
	.globl	C$_sms_manager.c$25$1$78
;_sms_manager.c:25: SMS_mapROMBank( n );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_ROM_bank_to_be_mapped_on_slot2 + 0),a
	C$_sms_manager.c$26$1$78	= .
	.globl	C$_sms_manager.c$26$1$78
	XG$devkit_SMS_mapROMBank$0$0	= .
	.globl	XG$devkit_SMS_mapROMBank$0$0
	ret
	G$devkit_SMS_setBGScrollX$0$0	= .
	.globl	G$devkit_SMS_setBGScrollX$0$0
	C$_sms_manager.c$28$1$78	= .
	.globl	C$_sms_manager.c$28$1$78
;_sms_manager.c:28: void devkit_SMS_setBGScrollX( unsigned char scrollX )
;	---------------------------------
; Function devkit_SMS_setBGScrollX
; ---------------------------------
_devkit_SMS_setBGScrollX::
	C$_sms_manager.c$30$1$80	= .
	.globl	C$_sms_manager.c$30$1$80
;_sms_manager.c:30: SMS_setBGScrollX( scrollX );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$31$1$80	= .
	.globl	C$_sms_manager.c$31$1$80
	XG$devkit_SMS_setBGScrollX$0$0	= .
	.globl	XG$devkit_SMS_setBGScrollX$0$0
	jp  _SMS_setBGScrollX
	G$devkit_SMS_setBGScrollY$0$0	= .
	.globl	G$devkit_SMS_setBGScrollY$0$0
	C$_sms_manager.c$32$1$80	= .
	.globl	C$_sms_manager.c$32$1$80
;_sms_manager.c:32: void devkit_SMS_setBGScrollY( unsigned char scrollY )
;	---------------------------------
; Function devkit_SMS_setBGScrollY
; ---------------------------------
_devkit_SMS_setBGScrollY::
	C$_sms_manager.c$34$1$82	= .
	.globl	C$_sms_manager.c$34$1$82
;_sms_manager.c:34: SMS_setBGScrollY( scrollY );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$35$1$82	= .
	.globl	C$_sms_manager.c$35$1$82
	XG$devkit_SMS_setBGScrollY$0$0	= .
	.globl	XG$devkit_SMS_setBGScrollY$0$0
	jp  _SMS_setBGScrollY
	G$devkit_SMS_enableSRAM$0$0	= .
	.globl	G$devkit_SMS_enableSRAM$0$0
	C$_sms_manager.c$37$1$82	= .
	.globl	C$_sms_manager.c$37$1$82
;_sms_manager.c:37: void devkit_SMS_enableSRAM()
;	---------------------------------
; Function devkit_SMS_enableSRAM
; ---------------------------------
_devkit_SMS_enableSRAM::
	C$_sms_manager.c$39$1$83	= .
	.globl	C$_sms_manager.c$39$1$83
;_sms_manager.c:39: SMS_enableSRAM();
	ld	hl,#_SRAM_bank_to_be_mapped_on_slot2 + 0
	ld	(hl), #0x08
	C$_sms_manager.c$40$1$83	= .
	.globl	C$_sms_manager.c$40$1$83
	XG$devkit_SMS_enableSRAM$0$0	= .
	.globl	XG$devkit_SMS_enableSRAM$0$0
	ret
	G$devkit_SMS_enableSRAMBank$0$0	= .
	.globl	G$devkit_SMS_enableSRAMBank$0$0
	C$_sms_manager.c$41$1$83	= .
	.globl	C$_sms_manager.c$41$1$83
;_sms_manager.c:41: void devkit_SMS_enableSRAMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_enableSRAMBank
; ---------------------------------
_devkit_SMS_enableSRAMBank::
	C$_sms_manager.c$43$1$85	= .
	.globl	C$_sms_manager.c$43$1$85
;_sms_manager.c:43: SMS_enableSRAMBank( n );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	set	3, a
	and	a, #0x0c
	ld	(#_SRAM_bank_to_be_mapped_on_slot2 + 0),a
	C$_sms_manager.c$44$1$85	= .
	.globl	C$_sms_manager.c$44$1$85
	XG$devkit_SMS_enableSRAMBank$0$0	= .
	.globl	XG$devkit_SMS_enableSRAMBank$0$0
	ret
	G$devkit_SMS_disableSRAM$0$0	= .
	.globl	G$devkit_SMS_disableSRAM$0$0
	C$_sms_manager.c$45$1$85	= .
	.globl	C$_sms_manager.c$45$1$85
;_sms_manager.c:45: void devkit_SMS_disableSRAM()
;	---------------------------------
; Function devkit_SMS_disableSRAM
; ---------------------------------
_devkit_SMS_disableSRAM::
	C$_sms_manager.c$47$1$86	= .
	.globl	C$_sms_manager.c$47$1$86
;_sms_manager.c:47: SMS_disableSRAM();
	ld	hl,#_SRAM_bank_to_be_mapped_on_slot2 + 0
	ld	(hl), #0x00
	C$_sms_manager.c$48$1$86	= .
	.globl	C$_sms_manager.c$48$1$86
	XG$devkit_SMS_disableSRAM$0$0	= .
	.globl	XG$devkit_SMS_disableSRAM$0$0
	ret
	G$devkit_SMS_SRAM$0$0	= .
	.globl	G$devkit_SMS_SRAM$0$0
	C$_sms_manager.c$49$1$86	= .
	.globl	C$_sms_manager.c$49$1$86
;_sms_manager.c:49: unsigned char* devkit_SMS_SRAM()
;	---------------------------------
; Function devkit_SMS_SRAM
; ---------------------------------
_devkit_SMS_SRAM::
	C$_sms_manager.c$51$1$87	= .
	.globl	C$_sms_manager.c$51$1$87
;_sms_manager.c:51: return SMS_SRAM;
	ld	hl, #_SMS_SRAM
	C$_sms_manager.c$52$1$87	= .
	.globl	C$_sms_manager.c$52$1$87
	XG$devkit_SMS_SRAM$0$0	= .
	.globl	XG$devkit_SMS_SRAM$0$0
	ret
	G$devkit_SMS_setSpriteMode$0$0	= .
	.globl	G$devkit_SMS_setSpriteMode$0$0
	C$_sms_manager.c$55$1$87	= .
	.globl	C$_sms_manager.c$55$1$87
;_sms_manager.c:55: void devkit_SMS_setSpriteMode( unsigned char mode )
;	---------------------------------
; Function devkit_SMS_setSpriteMode
; ---------------------------------
_devkit_SMS_setSpriteMode::
	C$_sms_manager.c$57$1$89	= .
	.globl	C$_sms_manager.c$57$1$89
;_sms_manager.c:57: SMS_setSpriteMode( mode );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$58$1$89	= .
	.globl	C$_sms_manager.c$58$1$89
	XG$devkit_SMS_setSpriteMode$0$0	= .
	.globl	XG$devkit_SMS_setSpriteMode$0$0
	jp  _SMS_setSpriteMode
	G$devkit_SMS_useFirstHalfTilesforSprites_False$0$0	= .
	.globl	G$devkit_SMS_useFirstHalfTilesforSprites_False$0$0
	C$_sms_manager.c$59$1$89	= .
	.globl	C$_sms_manager.c$59$1$89
;_sms_manager.c:59: void devkit_SMS_useFirstHalfTilesforSprites_False()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_False
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_False::
	C$_sms_manager.c$61$1$90	= .
	.globl	C$_sms_manager.c$61$1$90
;_sms_manager.c:61: SMS_useFirstHalfTilesforSprites( false );
	ld	l, #0x00
	C$_sms_manager.c$62$1$90	= .
	.globl	C$_sms_manager.c$62$1$90
	XG$devkit_SMS_useFirstHalfTilesforSprites_False$0$0	= .
	.globl	XG$devkit_SMS_useFirstHalfTilesforSprites_False$0$0
	jp  _SMS_useFirstHalfTilesforSprites
	G$devkit_SMS_useFirstHalfTilesforSprites_True$0$0	= .
	.globl	G$devkit_SMS_useFirstHalfTilesforSprites_True$0$0
	C$_sms_manager.c$63$1$90	= .
	.globl	C$_sms_manager.c$63$1$90
;_sms_manager.c:63: void devkit_SMS_useFirstHalfTilesforSprites_True()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_True
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_True::
	C$_sms_manager.c$65$1$91	= .
	.globl	C$_sms_manager.c$65$1$91
;_sms_manager.c:65: SMS_useFirstHalfTilesforSprites( true );
	ld	l, #0x01
	C$_sms_manager.c$66$1$91	= .
	.globl	C$_sms_manager.c$66$1$91
	XG$devkit_SMS_useFirstHalfTilesforSprites_True$0$0	= .
	.globl	XG$devkit_SMS_useFirstHalfTilesforSprites_True$0$0
	jp  _SMS_useFirstHalfTilesforSprites
	G$devkit_SMS_VDPturnOnFeature$0$0	= .
	.globl	G$devkit_SMS_VDPturnOnFeature$0$0
	C$_sms_manager.c$67$1$91	= .
	.globl	C$_sms_manager.c$67$1$91
;_sms_manager.c:67: void devkit_SMS_VDPturnOnFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOnFeature
; ---------------------------------
_devkit_SMS_VDPturnOnFeature::
	C$_sms_manager.c$69$1$93	= .
	.globl	C$_sms_manager.c$69$1$93
;_sms_manager.c:69: SMS_VDPturnOnFeature( feature );
	pop	bc
	pop	hl
	push	hl
	push	bc
	C$_sms_manager.c$70$1$93	= .
	.globl	C$_sms_manager.c$70$1$93
	XG$devkit_SMS_VDPturnOnFeature$0$0	= .
	.globl	XG$devkit_SMS_VDPturnOnFeature$0$0
	jp  _SMS_VDPturnOnFeature
	G$devkit_SMS_loadPSGaidencompressedTiles$0$0	= .
	.globl	G$devkit_SMS_loadPSGaidencompressedTiles$0$0
	C$_sms_manager.c$72$1$93	= .
	.globl	C$_sms_manager.c$72$1$93
;_sms_manager.c:72: void devkit_SMS_loadPSGaidencompressedTiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTiles
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTiles::
	C$_sms_manager.c$74$1$95	= .
	.globl	C$_sms_manager.c$74$1$95
;_sms_manager.c:74: SMS_loadPSGaidencompressedTiles( src, tilefrom );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	C$_sms_manager.c$75$1$95	= .
	.globl	C$_sms_manager.c$75$1$95
	XG$devkit_SMS_loadPSGaidencompressedTiles$0$0	= .
	.globl	XG$devkit_SMS_loadPSGaidencompressedTiles$0$0
	ret
	G$devkit_SMS_loadSTMcompressedTileMap$0$0	= .
	.globl	G$devkit_SMS_loadSTMcompressedTileMap$0$0
	C$_sms_manager.c$76$1$95	= .
	.globl	C$_sms_manager.c$76$1$95
;_sms_manager.c:76: void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMap
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMap::
	C$_sms_manager.c$78$1$97	= .
	.globl	C$_sms_manager.c$78$1$97
;_sms_manager.c:78: SMS_loadSTMcompressedTileMap( x, y, src );
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_loadSTMcompressedTileMapArea
	pop	af
	pop	af
	inc	sp
	C$_sms_manager.c$79$1$97	= .
	.globl	C$_sms_manager.c$79$1$97
	XG$devkit_SMS_loadSTMcompressedTileMap$0$0	= .
	.globl	XG$devkit_SMS_loadSTMcompressedTileMap$0$0
	ret
	G$devkit_SMS_loadBGPalette$0$0	= .
	.globl	G$devkit_SMS_loadBGPalette$0$0
	C$_sms_manager.c$81$1$97	= .
	.globl	C$_sms_manager.c$81$1$97
;_sms_manager.c:81: void devkit_SMS_loadBGPalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPalette
; ---------------------------------
_devkit_SMS_loadBGPalette::
	C$_sms_manager.c$83$1$99	= .
	.globl	C$_sms_manager.c$83$1$99
;_sms_manager.c:83: SMS_loadBGPalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	C$_sms_manager.c$84$1$99	= .
	.globl	C$_sms_manager.c$84$1$99
	XG$devkit_SMS_loadBGPalette$0$0	= .
	.globl	XG$devkit_SMS_loadBGPalette$0$0
	jp  _SMS_loadBGPalette
	G$devkit_SMS_loadSpritePalette$0$0	= .
	.globl	G$devkit_SMS_loadSpritePalette$0$0
	C$_sms_manager.c$85$1$99	= .
	.globl	C$_sms_manager.c$85$1$99
;_sms_manager.c:85: void devkit_SMS_loadSpritePalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePalette
; ---------------------------------
_devkit_SMS_loadSpritePalette::
	C$_sms_manager.c$87$1$101	= .
	.globl	C$_sms_manager.c$87$1$101
;_sms_manager.c:87: SMS_loadSpritePalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	C$_sms_manager.c$88$1$101	= .
	.globl	C$_sms_manager.c$88$1$101
	XG$devkit_SMS_loadSpritePalette$0$0	= .
	.globl	XG$devkit_SMS_loadSpritePalette$0$0
	jp  _SMS_loadSpritePalette
	G$devkit_SMS_setBGPaletteColor$0$0	= .
	.globl	G$devkit_SMS_setBGPaletteColor$0$0
	C$_sms_manager.c$89$1$101	= .
	.globl	C$_sms_manager.c$89$1$101
;_sms_manager.c:89: void devkit_SMS_setBGPaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setBGPaletteColor
; ---------------------------------
_devkit_SMS_setBGPaletteColor::
	C$_sms_manager.c$91$1$103	= .
	.globl	C$_sms_manager.c$91$1$103
;_sms_manager.c:91: const unsigned char color = RGB( r, g, b );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	ld	c, a
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	or	a, c
	ld	b, a
	C$_sms_manager.c$92$1$103	= .
	.globl	C$_sms_manager.c$92$1$103
;_sms_manager.c:92: SMS_setBGPaletteColor( entry, color );
	push	bc
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setBGPaletteColor
	pop	af
	C$_sms_manager.c$93$1$103	= .
	.globl	C$_sms_manager.c$93$1$103
	XG$devkit_SMS_setBGPaletteColor$0$0	= .
	.globl	XG$devkit_SMS_setBGPaletteColor$0$0
	ret
	G$devkit_SMS_setSpritePaletteColor$0$0	= .
	.globl	G$devkit_SMS_setSpritePaletteColor$0$0
	C$_sms_manager.c$94$1$103	= .
	.globl	C$_sms_manager.c$94$1$103
;_sms_manager.c:94: void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setSpritePaletteColor
; ---------------------------------
_devkit_SMS_setSpritePaletteColor::
	C$_sms_manager.c$96$1$105	= .
	.globl	C$_sms_manager.c$96$1$105
;_sms_manager.c:96: const unsigned char color = RGB( r, g, b );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	ld	c, a
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	or	a, c
	ld	b, a
	C$_sms_manager.c$97$1$105	= .
	.globl	C$_sms_manager.c$97$1$105
;_sms_manager.c:97: SMS_setSpritePaletteColor( entry, color );
	push	bc
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
	C$_sms_manager.c$98$1$105	= .
	.globl	C$_sms_manager.c$98$1$105
	XG$devkit_SMS_setSpritePaletteColor$0$0	= .
	.globl	XG$devkit_SMS_setSpritePaletteColor$0$0
	ret
	G$devkit_SMS_setNextTileatXY$0$0	= .
	.globl	G$devkit_SMS_setNextTileatXY$0$0
	C$_sms_manager.c$100$1$105	= .
	.globl	C$_sms_manager.c$100$1$105
;_sms_manager.c:100: void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_setNextTileatXY
; ---------------------------------
_devkit_SMS_setNextTileatXY::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$102$1$107	= .
	.globl	C$_sms_manager.c$102$1$107
;_sms_manager.c:102: SMS_setNextTileatXY( x, y );
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	C$_sms_manager.c$103$1$107	= .
	.globl	C$_sms_manager.c$103$1$107
	XG$devkit_SMS_setNextTileatXY$0$0	= .
	.globl	XG$devkit_SMS_setNextTileatXY$0$0
	pop	ix
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setTile$0$0	= .
	.globl	G$devkit_SMS_setTile$0$0
	C$_sms_manager.c$104$1$107	= .
	.globl	C$_sms_manager.c$104$1$107
;_sms_manager.c:104: void devkit_SMS_setTile( const unsigned int tile )
;	---------------------------------
; Function devkit_SMS_setTile
; ---------------------------------
_devkit_SMS_setTile::
	C$_sms_manager.c$106$1$109	= .
	.globl	C$_sms_manager.c$106$1$109
;_sms_manager.c:106: SMS_setTile( tile );
	pop	bc
	pop	hl
	push	hl
	push	bc
	C$_sms_manager.c$107$1$109	= .
	.globl	C$_sms_manager.c$107$1$109
	XG$devkit_SMS_setTile$0$0	= .
	.globl	XG$devkit_SMS_setTile$0$0
	jp  _SMS_crt0_RST18
	G$devkit_SMS_setTilePriority$0$0	= .
	.globl	G$devkit_SMS_setTilePriority$0$0
	C$_sms_manager.c$108$1$109	= .
	.globl	C$_sms_manager.c$108$1$109
;_sms_manager.c:108: void devkit_SMS_setTilePriority( const unsigned char tile )
;	---------------------------------
; Function devkit_SMS_setTilePriority
; ---------------------------------
_devkit_SMS_setTilePriority::
	C$_sms_manager.c$110$1$111	= .
	.globl	C$_sms_manager.c$110$1$111
;_sms_manager.c:110: SMS_setTile( tile | TILE_PRIORITY | TILE_USE_SPRITE_PALETTE );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, #0x00
	or	a, #0x18
	ld	h, a
	C$_sms_manager.c$111$1$111	= .
	.globl	C$_sms_manager.c$111$1$111
	XG$devkit_SMS_setTilePriority$0$0	= .
	.globl	XG$devkit_SMS_setTilePriority$0$0
	jp  _SMS_crt0_RST18
	G$devkit_SMS_addSprite$0$0	= .
	.globl	G$devkit_SMS_addSprite$0$0
	C$_sms_manager.c$113$1$111	= .
	.globl	C$_sms_manager.c$113$1$111
;_sms_manager.c:113: void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite
; ---------------------------------
_devkit_SMS_addSprite::
	C$_sms_manager.c$115$1$113	= .
	.globl	C$_sms_manager.c$115$1$113
;_sms_manager.c:115: SMS_addSprite( x, y, tile );
	ld	hl, #4+0
	add	hl, sp
	ld	b, (hl)
	push	bc
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	C$_sms_manager.c$116$1$113	= .
	.globl	C$_sms_manager.c$116$1$113
	XG$devkit_SMS_addSprite$0$0	= .
	.globl	XG$devkit_SMS_addSprite$0$0
	ret
	G$devkit_SMS_initSprites$0$0	= .
	.globl	G$devkit_SMS_initSprites$0$0
	C$_sms_manager.c$117$1$113	= .
	.globl	C$_sms_manager.c$117$1$113
;_sms_manager.c:117: void devkit_SMS_initSprites()
;	---------------------------------
; Function devkit_SMS_initSprites
; ---------------------------------
_devkit_SMS_initSprites::
	C$_sms_manager.c$119$1$114	= .
	.globl	C$_sms_manager.c$119$1$114
;_sms_manager.c:119: SMS_initSprites();
	C$_sms_manager.c$120$1$114	= .
	.globl	C$_sms_manager.c$120$1$114
	XG$devkit_SMS_initSprites$0$0	= .
	.globl	XG$devkit_SMS_initSprites$0$0
	jp  _SMS_initSprites
	G$devkit_SMS_finalizeSprites$0$0	= .
	.globl	G$devkit_SMS_finalizeSprites$0$0
	C$_sms_manager.c$121$1$114	= .
	.globl	C$_sms_manager.c$121$1$114
;_sms_manager.c:121: void devkit_SMS_finalizeSprites()
;	---------------------------------
; Function devkit_SMS_finalizeSprites
; ---------------------------------
_devkit_SMS_finalizeSprites::
	C$_sms_manager.c$123$1$115	= .
	.globl	C$_sms_manager.c$123$1$115
;_sms_manager.c:123: SMS_finalizeSprites();
	C$_sms_manager.c$124$1$115	= .
	.globl	C$_sms_manager.c$124$1$115
	XG$devkit_SMS_finalizeSprites$0$0	= .
	.globl	XG$devkit_SMS_finalizeSprites$0$0
	jp  _SMS_finalizeSprites
	G$devkit_SMS_waitForVBlank$0$0	= .
	.globl	G$devkit_SMS_waitForVBlank$0$0
	C$_sms_manager.c$125$1$115	= .
	.globl	C$_sms_manager.c$125$1$115
;_sms_manager.c:125: void devkit_SMS_waitForVBlank()
;	---------------------------------
; Function devkit_SMS_waitForVBlank
; ---------------------------------
_devkit_SMS_waitForVBlank::
	C$_sms_manager.c$127$1$116	= .
	.globl	C$_sms_manager.c$127$1$116
;_sms_manager.c:127: SMS_waitForVBlank();
	C$_sms_manager.c$128$1$116	= .
	.globl	C$_sms_manager.c$128$1$116
	XG$devkit_SMS_waitForVBlank$0$0	= .
	.globl	XG$devkit_SMS_waitForVBlank$0$0
	jp  _SMS_waitForVBlank
	G$devkit_SMS_copySpritestoSAT$0$0	= .
	.globl	G$devkit_SMS_copySpritestoSAT$0$0
	C$_sms_manager.c$129$1$116	= .
	.globl	C$_sms_manager.c$129$1$116
;_sms_manager.c:129: void devkit_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_SMS_copySpritestoSAT
; ---------------------------------
_devkit_SMS_copySpritestoSAT::
	C$_sms_manager.c$131$1$117	= .
	.globl	C$_sms_manager.c$131$1$117
;_sms_manager.c:131: UNSAFE_SMS_copySpritestoSAT();
	C$_sms_manager.c$132$1$117	= .
	.globl	C$_sms_manager.c$132$1$117
	XG$devkit_SMS_copySpritestoSAT$0$0	= .
	.globl	XG$devkit_SMS_copySpritestoSAT$0$0
	jp  _UNSAFE_SMS_copySpritestoSAT
	G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0
	C$_sms_manager.c$133$1$117	= .
	.globl	C$_sms_manager.c$133$1$117
;_sms_manager.c:133: void devkit_UNSAFE_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_devkit_UNSAFE_SMS_copySpritestoSAT::
	C$_sms_manager.c$135$1$118	= .
	.globl	C$_sms_manager.c$135$1$118
;_sms_manager.c:135: UNSAFE_SMS_copySpritestoSAT();
	C$_sms_manager.c$136$1$118	= .
	.globl	C$_sms_manager.c$136$1$118
	XG$devkit_UNSAFE_SMS_copySpritestoSAT$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_copySpritestoSAT$0$0
	jp  _UNSAFE_SMS_copySpritestoSAT
	G$devkit_SMS_queryPauseRequested$0$0	= .
	.globl	G$devkit_SMS_queryPauseRequested$0$0
	C$_sms_manager.c$138$1$118	= .
	.globl	C$_sms_manager.c$138$1$118
;_sms_manager.c:138: unsigned char devkit_SMS_queryPauseRequested()
;	---------------------------------
; Function devkit_SMS_queryPauseRequested
; ---------------------------------
_devkit_SMS_queryPauseRequested::
	C$_sms_manager.c$140$1$119	= .
	.globl	C$_sms_manager.c$140$1$119
;_sms_manager.c:140: return SMS_queryPauseRequested();
	C$_sms_manager.c$141$1$119	= .
	.globl	C$_sms_manager.c$141$1$119
	XG$devkit_SMS_queryPauseRequested$0$0	= .
	.globl	XG$devkit_SMS_queryPauseRequested$0$0
	jp  _SMS_queryPauseRequested
	G$devkit_SMS_resetPauseRequest$0$0	= .
	.globl	G$devkit_SMS_resetPauseRequest$0$0
	C$_sms_manager.c$142$1$119	= .
	.globl	C$_sms_manager.c$142$1$119
;_sms_manager.c:142: void devkit_SMS_resetPauseRequest()
;	---------------------------------
; Function devkit_SMS_resetPauseRequest
; ---------------------------------
_devkit_SMS_resetPauseRequest::
	C$_sms_manager.c$144$1$120	= .
	.globl	C$_sms_manager.c$144$1$120
;_sms_manager.c:144: SMS_resetPauseRequest();
	C$_sms_manager.c$145$1$120	= .
	.globl	C$_sms_manager.c$145$1$120
	XG$devkit_SMS_resetPauseRequest$0$0	= .
	.globl	XG$devkit_SMS_resetPauseRequest$0$0
	jp  _SMS_resetPauseRequest
	G$devkit_isCollisionDetected$0$0	= .
	.globl	G$devkit_isCollisionDetected$0$0
	C$_sms_manager.c$148$1$120	= .
	.globl	C$_sms_manager.c$148$1$120
;_sms_manager.c:148: unsigned char devkit_isCollisionDetected()
;	---------------------------------
; Function devkit_isCollisionDetected
; ---------------------------------
_devkit_isCollisionDetected::
	C$_sms_manager.c$150$1$121	= .
	.globl	C$_sms_manager.c$150$1$121
;_sms_manager.c:150: return ( SMS_VDPFlags & VDPFLAG_SPRITECOLLISION );
	ld	a,(#_SMS_VDPFlags + 0)
	and	a, #0x20
	ld	l, a
	C$_sms_manager.c$151$1$121	= .
	.globl	C$_sms_manager.c$151$1$121
	XG$devkit_isCollisionDetected$0$0	= .
	.globl	XG$devkit_isCollisionDetected$0$0
	ret
	G$devkit_SMS_getKeysStatus$0$0	= .
	.globl	G$devkit_SMS_getKeysStatus$0$0
	C$_sms_manager.c$154$1$121	= .
	.globl	C$_sms_manager.c$154$1$121
;_sms_manager.c:154: unsigned int devkit_SMS_getKeysStatus()
;	---------------------------------
; Function devkit_SMS_getKeysStatus
; ---------------------------------
_devkit_SMS_getKeysStatus::
	C$_sms_manager.c$156$1$122	= .
	.globl	C$_sms_manager.c$156$1$122
;_sms_manager.c:156: return SMS_getKeysStatus();
	C$_sms_manager.c$157$1$122	= .
	.globl	C$_sms_manager.c$157$1$122
	XG$devkit_SMS_getKeysStatus$0$0	= .
	.globl	XG$devkit_SMS_getKeysStatus$0$0
	jp  _SMS_getKeysStatus
	G$devkit_PORT_A_KEY_UP$0$0	= .
	.globl	G$devkit_PORT_A_KEY_UP$0$0
	C$_sms_manager.c$158$1$122	= .
	.globl	C$_sms_manager.c$158$1$122
;_sms_manager.c:158: unsigned int devkit_PORT_A_KEY_UP()
;	---------------------------------
; Function devkit_PORT_A_KEY_UP
; ---------------------------------
_devkit_PORT_A_KEY_UP::
	C$_sms_manager.c$160$1$123	= .
	.globl	C$_sms_manager.c$160$1$123
;_sms_manager.c:160: return PORT_A_KEY_UP;
	ld	hl, #0x0001
	C$_sms_manager.c$161$1$123	= .
	.globl	C$_sms_manager.c$161$1$123
	XG$devkit_PORT_A_KEY_UP$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_UP$0$0
	ret
	G$devkit_PORT_A_KEY_DOWN$0$0	= .
	.globl	G$devkit_PORT_A_KEY_DOWN$0$0
	C$_sms_manager.c$162$1$123	= .
	.globl	C$_sms_manager.c$162$1$123
;_sms_manager.c:162: unsigned int devkit_PORT_A_KEY_DOWN()
;	---------------------------------
; Function devkit_PORT_A_KEY_DOWN
; ---------------------------------
_devkit_PORT_A_KEY_DOWN::
	C$_sms_manager.c$164$1$124	= .
	.globl	C$_sms_manager.c$164$1$124
;_sms_manager.c:164: return PORT_A_KEY_DOWN;
	ld	hl, #0x0002
	C$_sms_manager.c$165$1$124	= .
	.globl	C$_sms_manager.c$165$1$124
	XG$devkit_PORT_A_KEY_DOWN$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_DOWN$0$0
	ret
	G$devkit_PORT_A_KEY_LEFT$0$0	= .
	.globl	G$devkit_PORT_A_KEY_LEFT$0$0
	C$_sms_manager.c$166$1$124	= .
	.globl	C$_sms_manager.c$166$1$124
;_sms_manager.c:166: unsigned int devkit_PORT_A_KEY_LEFT()
;	---------------------------------
; Function devkit_PORT_A_KEY_LEFT
; ---------------------------------
_devkit_PORT_A_KEY_LEFT::
	C$_sms_manager.c$168$1$125	= .
	.globl	C$_sms_manager.c$168$1$125
;_sms_manager.c:168: return PORT_A_KEY_LEFT;
	ld	hl, #0x0004
	C$_sms_manager.c$169$1$125	= .
	.globl	C$_sms_manager.c$169$1$125
	XG$devkit_PORT_A_KEY_LEFT$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_LEFT$0$0
	ret
	G$devkit_PORT_A_KEY_RIGHT$0$0	= .
	.globl	G$devkit_PORT_A_KEY_RIGHT$0$0
	C$_sms_manager.c$170$1$125	= .
	.globl	C$_sms_manager.c$170$1$125
;_sms_manager.c:170: unsigned int devkit_PORT_A_KEY_RIGHT()
;	---------------------------------
; Function devkit_PORT_A_KEY_RIGHT
; ---------------------------------
_devkit_PORT_A_KEY_RIGHT::
	C$_sms_manager.c$172$1$126	= .
	.globl	C$_sms_manager.c$172$1$126
;_sms_manager.c:172: return PORT_A_KEY_RIGHT;
	ld	hl, #0x0008
	C$_sms_manager.c$173$1$126	= .
	.globl	C$_sms_manager.c$173$1$126
	XG$devkit_PORT_A_KEY_RIGHT$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_RIGHT$0$0
	ret
	G$devkit_PORT_A_KEY_1$0$0	= .
	.globl	G$devkit_PORT_A_KEY_1$0$0
	C$_sms_manager.c$174$1$126	= .
	.globl	C$_sms_manager.c$174$1$126
;_sms_manager.c:174: unsigned int devkit_PORT_A_KEY_1()
;	---------------------------------
; Function devkit_PORT_A_KEY_1
; ---------------------------------
_devkit_PORT_A_KEY_1::
	C$_sms_manager.c$176$1$127	= .
	.globl	C$_sms_manager.c$176$1$127
;_sms_manager.c:176: return PORT_A_KEY_1;
	ld	hl, #0x0010
	C$_sms_manager.c$177$1$127	= .
	.globl	C$_sms_manager.c$177$1$127
	XG$devkit_PORT_A_KEY_1$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_1$0$0
	ret
	G$devkit_PORT_A_KEY_2$0$0	= .
	.globl	G$devkit_PORT_A_KEY_2$0$0
	C$_sms_manager.c$178$1$127	= .
	.globl	C$_sms_manager.c$178$1$127
;_sms_manager.c:178: unsigned int devkit_PORT_A_KEY_2()
;	---------------------------------
; Function devkit_PORT_A_KEY_2
; ---------------------------------
_devkit_PORT_A_KEY_2::
	C$_sms_manager.c$180$1$128	= .
	.globl	C$_sms_manager.c$180$1$128
;_sms_manager.c:180: return PORT_A_KEY_2;
	ld	hl, #0x0020
	C$_sms_manager.c$181$1$128	= .
	.globl	C$_sms_manager.c$181$1$128
	XG$devkit_PORT_A_KEY_2$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_2$0$0
	ret
	G$devkit_SPRITEMODE_NORMAL$0$0	= .
	.globl	G$devkit_SPRITEMODE_NORMAL$0$0
	C$_sms_manager.c$185$1$128	= .
	.globl	C$_sms_manager.c$185$1$128
;_sms_manager.c:185: unsigned char devkit_SPRITEMODE_NORMAL()
;	---------------------------------
; Function devkit_SPRITEMODE_NORMAL
; ---------------------------------
_devkit_SPRITEMODE_NORMAL::
	C$_sms_manager.c$187$1$129	= .
	.globl	C$_sms_manager.c$187$1$129
;_sms_manager.c:187: return SPRITEMODE_NORMAL;
	ld	l, #0x00
	C$_sms_manager.c$188$1$129	= .
	.globl	C$_sms_manager.c$188$1$129
	XG$devkit_SPRITEMODE_NORMAL$0$0	= .
	.globl	XG$devkit_SPRITEMODE_NORMAL$0$0
	ret
	G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0	= .
	.globl	G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0
	C$_sms_manager.c$189$1$129	= .
	.globl	C$_sms_manager.c$189$1$129
;_sms_manager.c:189: unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL()
;	---------------------------------
; Function devkit_VDPFEATURE_HIDEFIRSTCOL
; ---------------------------------
_devkit_VDPFEATURE_HIDEFIRSTCOL::
	C$_sms_manager.c$191$1$130	= .
	.globl	C$_sms_manager.c$191$1$130
;_sms_manager.c:191: return VDPFEATURE_HIDEFIRSTCOL;
	ld	hl, #0x0020
	C$_sms_manager.c$192$1$130	= .
	.globl	C$_sms_manager.c$192$1$130
	XG$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0	= .
	.globl	XG$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0
	ret
	G$devkit_TILE_PRIORITY$0$0	= .
	.globl	G$devkit_TILE_PRIORITY$0$0
	C$_sms_manager.c$193$1$130	= .
	.globl	C$_sms_manager.c$193$1$130
;_sms_manager.c:193: unsigned int devkit_TILE_PRIORITY()
;	---------------------------------
; Function devkit_TILE_PRIORITY
; ---------------------------------
_devkit_TILE_PRIORITY::
	C$_sms_manager.c$195$1$131	= .
	.globl	C$_sms_manager.c$195$1$131
;_sms_manager.c:195: return TILE_PRIORITY;
	ld	hl, #0x1000
	C$_sms_manager.c$196$1$131	= .
	.globl	C$_sms_manager.c$196$1$131
	XG$devkit_TILE_PRIORITY$0$0	= .
	.globl	XG$devkit_TILE_PRIORITY$0$0
	ret
	G$devkit_TILE_USE_SPRITE_PALETTE$0$0	= .
	.globl	G$devkit_TILE_USE_SPRITE_PALETTE$0$0
	C$_sms_manager.c$197$1$131	= .
	.globl	C$_sms_manager.c$197$1$131
;_sms_manager.c:197: unsigned int devkit_TILE_USE_SPRITE_PALETTE()
;	---------------------------------
; Function devkit_TILE_USE_SPRITE_PALETTE
; ---------------------------------
_devkit_TILE_USE_SPRITE_PALETTE::
	C$_sms_manager.c$199$1$132	= .
	.globl	C$_sms_manager.c$199$1$132
;_sms_manager.c:199: return TILE_USE_SPRITE_PALETTE;
	ld	hl, #0x0800
	C$_sms_manager.c$200$1$132	= .
	.globl	C$_sms_manager.c$200$1$132
	XG$devkit_TILE_USE_SPRITE_PALETTE$0$0	= .
	.globl	XG$devkit_TILE_USE_SPRITE_PALETTE$0$0
	ret
	.area _CODE
F_sms_manager$__str_0$0$0 == .
__str_0:
	.ascii "Steven Boland"
	.db 0x00
F_sms_manager$__str_1$0$0 == .
__str_1:
	.ascii "Sprite Tiles"
	.db 0x00
F_sms_manager$__str_2$0$0 == .
__str_2:
	.ascii "Simple Sega Master System demo to run on real hardware!"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0$0 == .
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FD2
G$__SMS__SDSC_author$0$0 == .
___SMS__SDSC_author:
	.ascii "Steven Boland"
	.db 0x00
	.org 0x7FC5
G$__SMS__SDSC_name$0$0 == .
___SMS__SDSC_name:
	.ascii "Sprite Tiles"
	.db 0x00
	.org 0x7F8D
G$__SMS__SDSC_descr$0$0 == .
___SMS__SDSC_descr:
	.ascii "Simple Sega Master System demo to run on real hardware!"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0xd2	; 210
	.db #0x7f	; 127
	.db #0xc5	; 197
	.db #0x7f	; 127
	.db #0x8d	; 141
	.db #0x7f	; 127
