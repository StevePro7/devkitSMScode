#ifndef _SMS_MANAGER_H_
#define _SMS_MANAGER_H_

/* library initialization. you don't need to call this if you use devkitSMS crt0.rel */
void devkit_SMS_init();

/* VDP operative mode handling functions */
void devkit_SMS_VDPturnOnFeature( unsigned int feature );
void devkit_SMS_VDPturnOffFeature( unsigned int feature );

/* group 0 */
unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL();

/* group 1 */
unsigned int devkit_VDPFEATURE_SHOWDISPLAY();

/* handy macros :) */
void devkit_SMS_displayOn();
void devkit_SMS_displayOff();

void devkit_SMS_setBGScrollX( unsigned char scrollX );
void devkit_SMS_setBGScrollY( unsigned char scrollY );
void devkit_SMS_setBackdropColor( unsigned char entry );
void devkit_SMS_useFirstHalfTilesforSprites( unsigned char usefirsthalf );
void devkit_SMS_setSpriteMode( unsigned char mode );

/* modes for SMS_setSpriteMode */
unsigned char devkit_SPRITEMODE_NORMAL();

/* macro for ROM bankswitching */
void devkit_SMS_mapROMBank( unsigned char n );

/* macro for SRAM access */
void devkit_SMS_enableSRAM();
void devkit_SMS_enableSRAMBank( unsigned char n );
void devkit_SMS_disableSRAM();
/* SRAM access is as easy as accessing an array of char */
unsigned char* devkit_SMS_SRAM();

/* wait until next VBlank starts */
void devkit_SMS_waitForVBlank();

void devkit_SMS_crt0_RST08( unsigned int addr );
void devkit_SMS_crt0_RST18( unsigned int tile );

/* function for setting tiles/moving 'cursor' */
void devkit_SMS_setTile( const unsigned char tile );
void devkit_SMS_setAddr( const unsigned char addr );

/* PNT define (has address and VDP flags) */
void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y );

/* handy defines for tilemaps entry */
//#define TILE_FLIPPED_X            0x0200
//#define TILE_FLIPPED_Y            0x0400
unsigned int devkit_TILE_USE_SPRITE_PALETTE();
unsigned int devkit_TILE_PRIORITY();

/* functions to load tiles into VRAM */
void devkit_SMS_loadTiles( void *src, unsigned int tilefrom, unsigned int size );
void devkit_SMS_load1bppTiles( const void *src, unsigned int tilefrom, unsigned int size, unsigned char color0, unsigned char color1 );

/* functions to load compressed tiles into VRAM */
void devkit_SMS_loadPSGaidencompressedTilesatAddr( const void *src, unsigned int dst );
void devkit_SMS_loadPSGaidencompressedTiles( const void *src, unsigned int tilefrom );

/* UNSAFE functions to load compressed tiles into VRAM */
//void UNSAFE_SMS_loadZX7compressedTilesatAddr( const void *src, unsigned int dst );
//#define UNSAFE_SMS_loadZX7compressedTiles(src,tilefrom) UNSAFE_SMS_loadZX7compressedTilesatAddr((src),TILEtoADDR(tilefrom))
//void UNSAFE_SMS_loadaPLibcompressedTilesatAddr( const void *src, unsigned int dst );
//#define UNSAFE_SMS_loadaPLibcompressedTiles(src,tilefrom) UNSAFE_SMS_loadaPLibcompressedTilesatAddr((src),TILEtoADDR(tilefrom))

/* functions for the tilemap */
void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char *src, int size );
void devkit_SMS_loadTileMapArea( unsigned char x, unsigned char y, void *src, unsigned char width, unsigned char height );

void devkit_SMS_loadSTMcompressedTileMapatAddr( unsigned int dst, const void *src );
void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src );
void devkit_SMS_loadSTMcompressedTileMapArea( unsigned char x, unsigned char y, unsigned char *src /*, unsigned char w*/ );

/* functions for sprites handling */
void devkit_SMS_initSprites();
void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile );
//void SMS_addTwoAdjoiningSprites( unsigned char x, unsigned char y, unsigned char tile ) __naked __preserves_regs( iyh, iyl );     /* doesn't return anything */
//void SMS_addThreeAdjoiningSprites( unsigned char x, unsigned char y, unsigned char tile ) __naked __preserves_regs( iyh, iyl );   /* doesn't return anything */
//signed char SMS_reserveSprite( void );
//void SMS_updateSpritePosition( signed char sprite, unsigned char x, unsigned char y );
//void SMS_updateSpriteImage( signed char sprite, unsigned char tile );
//void SMS_hideSprite( signed char sprite );
//void SMS_setClippingWindow( unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1 );
//signed char SMS_addSpriteClipping( int x, int y, unsigned char tile );   /* returns -1 if no more sprites are available or sprite clipped */
void devkit_SMS_finalizeSprites();
void devkit_SMS_copySpritestoSAT();

/* SMS functions to set a color / load a palette */
void devkit_SMS_setBGPaletteColor( unsigned char entry, unsigned char color );
void devkit_SMS_setSpritePaletteColor( unsigned char entry, unsigned char color );
void devkit_SMS_loadBGPalette( void *palette );
void devkit_SMS_loadSpritePalette( void *palette );
//#define SMS_setNextBGColoratIndex(i)       SMS_setAddr(SMS_CRAMAddress|(i))
//#define SMS_setNextSpriteColoratIndex(i)   SMS_setAddr(SMS_CRAMAddress|0x10|(i))
//void SMS_setColor (unsigned char color) __z88dk_fastcall __preserves_regs(b,c,d,e,h,l,iyh,iyl);

/* SMS macros for colors */
unsigned char devkit_RGB( const unsigned char r, const unsigned char g, const unsigned char b );
//#define RGB8(r,g,b)       (((r)>>6)|(((g)>>6)<<2)|(((b)>>6)<<4))
//#define RGBHTML(RGB24bit) (((RGB24bit)>>22)|((((RGB24bit)&0xFFFF)>>14)<<2)|((((RGB24bit)&0xFF)>>6)<<4))
void devkit_SMS_loadBGPaletteHalfBrightness( void *palette );
void devkit_SMS_loadSpritePaletteHalfBrightness( void *palette );
void devkit_SMS_zeroBGPalette( void );
void devkit_SMS_zeroSpritePalette( void );

/* text renderer */

//void SMS_configureTextRenderer( signed int ascii_to_tile_offset );
//void SMS_autoSetUpTextRenderer( void );

/* functions to read joypad(s) */
unsigned int devkit_SMS_getKeysStatus();
unsigned int devkit_SMS_getKeysPressed();
unsigned int devkit_SMS_getKeysHeld();
unsigned int devkit_SMS_getKeysReleased();

/* handy defines for joypad(s) handling */
unsigned int devkit_PORT_A_KEY_UP();
unsigned int devkit_PORT_A_KEY_DOWN();
unsigned int devkit_PORT_A_KEY_LEFT();
unsigned int devkit_PORT_A_KEY_RIGHT();
unsigned int devkit_PORT_A_KEY_1();
unsigned int devkit_PORT_A_KEY_2();
unsigned int devkit_PORT_A_KEY_START();

/* paddle controller handling (SMS only) */
//_Bool SMS_detectPaddle( unsigned char port ) __z88dk_fastcall __naked;
//unsigned char SMS_readPaddle( unsigned char port ) __z88dk_fastcall __naked;

/* pause handling (SMS only) */
unsigned char devkit_SMS_queryPauseRequested();
void devkit_SMS_resetPauseRequest();

// SMS_VDPType
//unsigned char devkit_SMS_VDPType( void );

// SMS_VDPFlags
unsigned char devkit_isCollisionDetected();



/* line interrupt */
void devkit_SMS_setLineInterruptHandler( void( *theHandlerFunction )( void ) ); // __z88dk_fastcall;
void devkit_SMS_setLineCounter( unsigned char count );
void devkit_SMS_enableLineInterrupt(); /* turns on line IRQ */
void devkit_SMS_disableLineInterrupt(); /* turns off line IRQ */

/* Vcount */
unsigned char devkit_SMS_getVCount( void );
/* Hcount */
unsigned char devkit_SMS_getHCount( void );

/* low level functions */
void devkit_SMS_VRAMmemcpy( unsigned int dst, const void *src, unsigned int size ); // __naked __z88dk_callee __preserves_regs( iyh, iyl );
void devkit_SMS_VRAMmemcpy_brief( unsigned int dst, const void *src, unsigned char size ); // __naked __z88dk_callee __preserves_regs( iyh, iyl );
void devkit_SMS_VRAMmemset( unsigned int dst, unsigned char value, unsigned int size );
void devkit_SMS_VRAMmemsetW( unsigned int dst, unsigned int value, unsigned int size );

/* VRAM unsafe functions. Fast, but dangerous! */
void devkit_UNSAFE_SMS_copySpritestoSAT( void );
void devkit_UNSAFE_SMS_VRAMmemcpy32( unsigned int dst, void *src );
void devkit_UNSAFE_SMS_VRAMmemcpy64( unsigned int dst, void *src );
void devkit_UNSAFE_SMS_VRAMmemcpy128( unsigned int dst, void *src );

/* handy macros for UNSAFE_SMS_VRAMmemcpy* */
void devkit_UNSAFE_SMS_load1Tile( void *src, unsigned int theTile );
void devkit_UNSAFE_SMS_load2Tiles( void *src, unsigned int tilefrom );
void devkit_UNSAFE_SMS_load4Tiles( void *src, unsigned int tilefrom );

/* the Interrupt Service Routines (do not modify) */
void dekvit_SMS_isr( void ); // __naked;
void dekvit_SMS_nmi_isr( void ); // __naked;



// Helper functions.
void devkit_SMS_addSprite_bulk8( unsigned char x, unsigned char y, int tile );
void devkit_SMS_addSprite_bulk12( unsigned char x, unsigned char y, int tile );

#endif//_SMS_MANAGER_H_