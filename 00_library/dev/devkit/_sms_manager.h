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


void devkit_SMS_loadPSGaidencompressedTiles( const void *src, unsigned int tilefrom );
void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src );

void devkit_SMS_loadBGPalette( void *palette );
void devkit_SMS_loadSpritePalette( void *palette );
void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b );

void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y );
void devkit_SMS_setTile( const unsigned char tile );
void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char *src, int size );

void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile );
void devkit_SMS_addSprite_bulk8( unsigned char x, unsigned char y, int tile );
void devkit_SMS_addSprite_bulk12( unsigned char x, unsigned char y, int tile );

void devkit_SMS_initSprites();
void devkit_SMS_finalizeSprites();

void devkit_SMS_copySpritestoSAT();
void devkit_UNSAFE_SMS_copySpritestoSAT();

unsigned char devkit_SMS_queryPauseRequested();
void devkit_SMS_resetPauseRequest();

// collision
unsigned char devkit_isCollisionDetected();

// input
unsigned int devkit_SMS_getKeysStatus();
unsigned int devkit_PORT_A_KEY_UP();
unsigned int devkit_PORT_A_KEY_DOWN();
unsigned int devkit_PORT_A_KEY_LEFT();
unsigned int devkit_PORT_A_KEY_RIGHT();
unsigned int devkit_PORT_A_KEY_1();
unsigned int devkit_PORT_A_KEY_2();


#endif//_SMS_MANAGER_H_