;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module _snd_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGRestoreVolumes
	.globl _PSGSilenceChannels
	.globl _PSGSFXGetStatus
	.globl _PSGSFXStop
	.globl _PSGSFXPlay
	.globl _PSGSetMusicVolumeAttenuation
	.globl _PSGGetStatus
	.globl _PSGResume
	.globl _PSGStop
	.globl _PSGPlayNoRepeat
	.globl _PSGPlay
	.globl _devkit_PSGPlay
	.globl _devkit_PSGPlayNoRepeat
	.globl _devkit_PSGStop
	.globl _devkit_PSGResume
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGSetMusicVolumeAttenuation
	.globl _devkit_PSGSFXPlay
	.globl _devkit_PSGSFXStop
	.globl _devkit_PSGSFXGetStatus
	.globl _devkit_PSGSilenceChannels
	.globl _devkit_PSGRestoreVolumes
	.globl _devkit_PSGFrame
	.globl _devkit_PSGSFXFrame
	.globl _devkit_SFX_CHANNEL2
	.globl _devkit_SFX_CHANNEL3
	.globl _devkit_SFX_CHANNELS2AND3
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
	G$devkit_PSGPlay$0$0	= .
	.globl	G$devkit_PSGPlay$0$0
	C$_snd_manager.c$9$0$0	= .
	.globl	C$_snd_manager.c$9$0$0
;_snd_manager.c:9: void devkit_PSGPlay( void *song )
;	---------------------------------
; Function devkit_PSGPlay
; ---------------------------------
_devkit_PSGPlay::
	C$_snd_manager.c$11$1$31	= .
	.globl	C$_snd_manager.c$11$1$31
;_snd_manager.c:11: PSGPlay( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlay
	pop	af
	C$_snd_manager.c$12$1$31	= .
	.globl	C$_snd_manager.c$12$1$31
	XG$devkit_PSGPlay$0$0	= .
	.globl	XG$devkit_PSGPlay$0$0
	ret
	G$devkit_PSGPlayNoRepeat$0$0	= .
	.globl	G$devkit_PSGPlayNoRepeat$0$0
	C$_snd_manager.c$13$1$31	= .
	.globl	C$_snd_manager.c$13$1$31
;_snd_manager.c:13: void devkit_PSGPlayNoRepeat( void *song )
;	---------------------------------
; Function devkit_PSGPlayNoRepeat
; ---------------------------------
_devkit_PSGPlayNoRepeat::
	C$_snd_manager.c$15$1$33	= .
	.globl	C$_snd_manager.c$15$1$33
;_snd_manager.c:15: PSGPlayNoRepeat( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlayNoRepeat
	pop	af
	C$_snd_manager.c$16$1$33	= .
	.globl	C$_snd_manager.c$16$1$33
	XG$devkit_PSGPlayNoRepeat$0$0	= .
	.globl	XG$devkit_PSGPlayNoRepeat$0$0
	ret
	G$devkit_PSGStop$0$0	= .
	.globl	G$devkit_PSGStop$0$0
	C$_snd_manager.c$17$1$33	= .
	.globl	C$_snd_manager.c$17$1$33
;_snd_manager.c:17: void devkit_PSGStop( void )
;	---------------------------------
; Function devkit_PSGStop
; ---------------------------------
_devkit_PSGStop::
	C$_snd_manager.c$19$1$35	= .
	.globl	C$_snd_manager.c$19$1$35
;_snd_manager.c:19: PSGStop();
	C$_snd_manager.c$20$1$35	= .
	.globl	C$_snd_manager.c$20$1$35
	XG$devkit_PSGStop$0$0	= .
	.globl	XG$devkit_PSGStop$0$0
	jp  _PSGStop
	G$devkit_PSGResume$0$0	= .
	.globl	G$devkit_PSGResume$0$0
	C$_snd_manager.c$21$1$35	= .
	.globl	C$_snd_manager.c$21$1$35
;_snd_manager.c:21: void devkit_PSGResume( void )
;	---------------------------------
; Function devkit_PSGResume
; ---------------------------------
_devkit_PSGResume::
	C$_snd_manager.c$23$1$37	= .
	.globl	C$_snd_manager.c$23$1$37
;_snd_manager.c:23: PSGResume();
	C$_snd_manager.c$24$1$37	= .
	.globl	C$_snd_manager.c$24$1$37
	XG$devkit_PSGResume$0$0	= .
	.globl	XG$devkit_PSGResume$0$0
	jp  _PSGResume
	G$devkit_PSGGetStatus$0$0	= .
	.globl	G$devkit_PSGGetStatus$0$0
	C$_snd_manager.c$25$1$37	= .
	.globl	C$_snd_manager.c$25$1$37
;_snd_manager.c:25: unsigned char devkit_PSGGetStatus( void )
;	---------------------------------
; Function devkit_PSGGetStatus
; ---------------------------------
_devkit_PSGGetStatus::
	C$_snd_manager.c$27$1$39	= .
	.globl	C$_snd_manager.c$27$1$39
;_snd_manager.c:27: return PSGGetStatus();
	C$_snd_manager.c$28$1$39	= .
	.globl	C$_snd_manager.c$28$1$39
	XG$devkit_PSGGetStatus$0$0	= .
	.globl	XG$devkit_PSGGetStatus$0$0
	jp  _PSGGetStatus
	G$devkit_PSGSetMusicVolumeAttenuation$0$0	= .
	.globl	G$devkit_PSGSetMusicVolumeAttenuation$0$0
	C$_snd_manager.c$29$1$39	= .
	.globl	C$_snd_manager.c$29$1$39
;_snd_manager.c:29: void devkit_PSGSetMusicVolumeAttenuation( unsigned char attenuation )
;	---------------------------------
; Function devkit_PSGSetMusicVolumeAttenuation
; ---------------------------------
_devkit_PSGSetMusicVolumeAttenuation::
	C$_snd_manager.c$31$1$41	= .
	.globl	C$_snd_manager.c$31$1$41
;_snd_manager.c:31: PSGSetMusicVolumeAttenuation( attenuation );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_PSGSetMusicVolumeAttenuation
	inc	sp
	C$_snd_manager.c$32$1$41	= .
	.globl	C$_snd_manager.c$32$1$41
	XG$devkit_PSGSetMusicVolumeAttenuation$0$0	= .
	.globl	XG$devkit_PSGSetMusicVolumeAttenuation$0$0
	ret
	G$devkit_PSGSFXPlay$0$0	= .
	.globl	G$devkit_PSGSFXPlay$0$0
	C$_snd_manager.c$34$1$41	= .
	.globl	C$_snd_manager.c$34$1$41
;_snd_manager.c:34: void devkit_PSGSFXPlay( void *sfx, unsigned char channels )
;	---------------------------------
; Function devkit_PSGSFXPlay
; ---------------------------------
_devkit_PSGSFXPlay::
	C$_snd_manager.c$36$1$43	= .
	.globl	C$_snd_manager.c$36$1$43
;_snd_manager.c:36: PSGSFXPlay( sfx, channels );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_PSGSFXPlay
	pop	af
	inc	sp
	C$_snd_manager.c$37$1$43	= .
	.globl	C$_snd_manager.c$37$1$43
	XG$devkit_PSGSFXPlay$0$0	= .
	.globl	XG$devkit_PSGSFXPlay$0$0
	ret
	G$devkit_PSGSFXStop$0$0	= .
	.globl	G$devkit_PSGSFXStop$0$0
	C$_snd_manager.c$38$1$43	= .
	.globl	C$_snd_manager.c$38$1$43
;_snd_manager.c:38: void devkit_PSGSFXStop( void )
;	---------------------------------
; Function devkit_PSGSFXStop
; ---------------------------------
_devkit_PSGSFXStop::
	C$_snd_manager.c$40$1$45	= .
	.globl	C$_snd_manager.c$40$1$45
;_snd_manager.c:40: PSGSFXStop();
	C$_snd_manager.c$41$1$45	= .
	.globl	C$_snd_manager.c$41$1$45
	XG$devkit_PSGSFXStop$0$0	= .
	.globl	XG$devkit_PSGSFXStop$0$0
	jp  _PSGSFXStop
	G$devkit_PSGSFXGetStatus$0$0	= .
	.globl	G$devkit_PSGSFXGetStatus$0$0
	C$_snd_manager.c$42$1$45	= .
	.globl	C$_snd_manager.c$42$1$45
;_snd_manager.c:42: unsigned char devkit_PSGSFXGetStatus( void )
;	---------------------------------
; Function devkit_PSGSFXGetStatus
; ---------------------------------
_devkit_PSGSFXGetStatus::
	C$_snd_manager.c$44$1$47	= .
	.globl	C$_snd_manager.c$44$1$47
;_snd_manager.c:44: return PSGSFXGetStatus();
	C$_snd_manager.c$45$1$47	= .
	.globl	C$_snd_manager.c$45$1$47
	XG$devkit_PSGSFXGetStatus$0$0	= .
	.globl	XG$devkit_PSGSFXGetStatus$0$0
	jp  _PSGSFXGetStatus
	G$devkit_PSGSilenceChannels$0$0	= .
	.globl	G$devkit_PSGSilenceChannels$0$0
	C$_snd_manager.c$47$1$47	= .
	.globl	C$_snd_manager.c$47$1$47
;_snd_manager.c:47: void devkit_PSGSilenceChannels( void )
;	---------------------------------
; Function devkit_PSGSilenceChannels
; ---------------------------------
_devkit_PSGSilenceChannels::
	C$_snd_manager.c$49$1$49	= .
	.globl	C$_snd_manager.c$49$1$49
;_snd_manager.c:49: PSGSilenceChannels();
	C$_snd_manager.c$50$1$49	= .
	.globl	C$_snd_manager.c$50$1$49
	XG$devkit_PSGSilenceChannels$0$0	= .
	.globl	XG$devkit_PSGSilenceChannels$0$0
	jp  _PSGSilenceChannels
	G$devkit_PSGRestoreVolumes$0$0	= .
	.globl	G$devkit_PSGRestoreVolumes$0$0
	C$_snd_manager.c$51$1$49	= .
	.globl	C$_snd_manager.c$51$1$49
;_snd_manager.c:51: void devkit_PSGRestoreVolumes( void )
;	---------------------------------
; Function devkit_PSGRestoreVolumes
; ---------------------------------
_devkit_PSGRestoreVolumes::
	C$_snd_manager.c$53$1$51	= .
	.globl	C$_snd_manager.c$53$1$51
;_snd_manager.c:53: PSGRestoreVolumes();
	C$_snd_manager.c$54$1$51	= .
	.globl	C$_snd_manager.c$54$1$51
	XG$devkit_PSGRestoreVolumes$0$0	= .
	.globl	XG$devkit_PSGRestoreVolumes$0$0
	jp  _PSGRestoreVolumes
	G$devkit_PSGFrame$0$0	= .
	.globl	G$devkit_PSGFrame$0$0
	C$_snd_manager.c$56$1$51	= .
	.globl	C$_snd_manager.c$56$1$51
;_snd_manager.c:56: void devkit_PSGFrame( void )
;	---------------------------------
; Function devkit_PSGFrame
; ---------------------------------
_devkit_PSGFrame::
	C$_snd_manager.c$58$1$53	= .
	.globl	C$_snd_manager.c$58$1$53
;_snd_manager.c:58: PSGFrame();
	C$_snd_manager.c$59$1$53	= .
	.globl	C$_snd_manager.c$59$1$53
	XG$devkit_PSGFrame$0$0	= .
	.globl	XG$devkit_PSGFrame$0$0
	jp  _PSGFrame
	G$devkit_PSGSFXFrame$0$0	= .
	.globl	G$devkit_PSGSFXFrame$0$0
	C$_snd_manager.c$60$1$53	= .
	.globl	C$_snd_manager.c$60$1$53
;_snd_manager.c:60: void devkit_PSGSFXFrame( void )
;	---------------------------------
; Function devkit_PSGSFXFrame
; ---------------------------------
_devkit_PSGSFXFrame::
	C$_snd_manager.c$62$1$55	= .
	.globl	C$_snd_manager.c$62$1$55
;_snd_manager.c:62: PSGSFXFrame();
	C$_snd_manager.c$63$1$55	= .
	.globl	C$_snd_manager.c$63$1$55
	XG$devkit_PSGSFXFrame$0$0	= .
	.globl	XG$devkit_PSGSFXFrame$0$0
	jp  _PSGSFXFrame
	G$devkit_SFX_CHANNEL2$0$0	= .
	.globl	G$devkit_SFX_CHANNEL2$0$0
	C$_snd_manager.c$66$1$55	= .
	.globl	C$_snd_manager.c$66$1$55
;_snd_manager.c:66: unsigned char devkit_SFX_CHANNEL2()
;	---------------------------------
; Function devkit_SFX_CHANNEL2
; ---------------------------------
_devkit_SFX_CHANNEL2::
	C$_snd_manager.c$68$1$56	= .
	.globl	C$_snd_manager.c$68$1$56
;_snd_manager.c:68: return SFX_CHANNEL2;
	ld	l, #0x01
	C$_snd_manager.c$69$1$56	= .
	.globl	C$_snd_manager.c$69$1$56
	XG$devkit_SFX_CHANNEL2$0$0	= .
	.globl	XG$devkit_SFX_CHANNEL2$0$0
	ret
	G$devkit_SFX_CHANNEL3$0$0	= .
	.globl	G$devkit_SFX_CHANNEL3$0$0
	C$_snd_manager.c$70$1$56	= .
	.globl	C$_snd_manager.c$70$1$56
;_snd_manager.c:70: unsigned char devkit_SFX_CHANNEL3()
;	---------------------------------
; Function devkit_SFX_CHANNEL3
; ---------------------------------
_devkit_SFX_CHANNEL3::
	C$_snd_manager.c$72$1$57	= .
	.globl	C$_snd_manager.c$72$1$57
;_snd_manager.c:72: return SFX_CHANNEL3;
	ld	l, #0x02
	C$_snd_manager.c$73$1$57	= .
	.globl	C$_snd_manager.c$73$1$57
	XG$devkit_SFX_CHANNEL3$0$0	= .
	.globl	XG$devkit_SFX_CHANNEL3$0$0
	ret
	G$devkit_SFX_CHANNELS2AND3$0$0	= .
	.globl	G$devkit_SFX_CHANNELS2AND3$0$0
	C$_snd_manager.c$74$1$57	= .
	.globl	C$_snd_manager.c$74$1$57
;_snd_manager.c:74: unsigned char devkit_SFX_CHANNELS2AND3()
;	---------------------------------
; Function devkit_SFX_CHANNELS2AND3
; ---------------------------------
_devkit_SFX_CHANNELS2AND3::
	C$_snd_manager.c$76$1$58	= .
	.globl	C$_snd_manager.c$76$1$58
;_snd_manager.c:76: return SFX_CHANNELS2AND3;
	ld	l, #0x03
	C$_snd_manager.c$77$1$58	= .
	.globl	C$_snd_manager.c$77$1$58
	XG$devkit_SFX_CHANNELS2AND3$0$0	= .
	.globl	XG$devkit_SFX_CHANNELS2AND3$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
