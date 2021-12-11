# devkitSMS Code
Test repository for devkitSMS code samples!

Check
#define SMS_loadSTMcompressedTileMap(x,y,src)       SMS_loadSTMcompressedTileMapatAddr(XYtoADDR((x),(y)),(src))
#define SMS_loadSTMcompressedTileMapArea(x,y,src,w) SMS_loadSTMcompressedTileMapatAddr(XYtoADDR((x),(y)),(src))



TODO wrap functions
/* group 0 */
#define VDPFEATURE_EXTRAHEIGHT      0x0002     /* needed for 224-240 lines modes */
#define VDPFEATURE_SHIFTSPRITES     0x0008
//#define VDPFEATURE_HIDEFIRSTCOL     0x0020
#define VDPFEATURE_LEFTCOLBLANK     0x0020     /* probably a better name */
#define VDPFEATURE_LOCKHSCROLL      0x0040
#define VDPFEATURE_LOCKVSCROLL      0x0080

/* group 1 */
#define VDPFEATURE_ZOOMSPRITES      0x0101     /* (use SMS_setSpriteMode instead) */
#define VDPFEATURE_USETALLSPRITES   0x0102     /* (use SMS_setSpriteMode instead) */
#define VDPFEATURE_240LINES         0x0108     /*  SMS II only! PAL only! */
#define VDPFEATURE_224LINES         0x0110     /*  SMS II only! */
#define VDPFEATURE_FRAMEIRQ         0x0120
//#define VDPFEATURE_SHOWDISPLAY      0x0140

/* modes for SMS_setSpriteMode */
//#define SPRITEMODE_NORMAL         0x00
#define SPRITEMODE_TALL           0x01
#define SPRITEMODE_ZOOMED         0x02
#define SPRITEMODE_TALL_ZOOMED    0x03


#define XYtoADDR(x,y)             (SMS_PNTAddress|((unsigned int)(y)<<6)|((unsigned char)(x)<<1))
//#define SMS_setNextTileatXY(x,y)  SMS_setAddr(XYtoADDR((x),(y)))
#define SMS_setNextTileatLoc(loc) SMS_setAddr(SMS_PNTAddress|((unsigned int)(loc)<<1))
#define SMS_setNextTileatAddr(a)  SMS_setAddr(a)
#define SMS_setTileatXY(x,y,tile) {SMS_setAddr(XYtoADDR((x),(y)));SMS_setTile(tile);}



#define SMS_VDPVRAMWrite          0x4000
/* macro for turning tile numbers into VRAM addr for writing */
#define TILEtoADDR(tile)          (SMS_VDPVRAMWrite|((tile)*32))

/* handy defines for tilemaps entry */
#define TILE_FLIPPED_X            0x0200
#define TILE_FLIPPED_Y            0x0400
#define TILE_USE_SPRITE_PALETTE   0x0800
#define TILE_PRIORITY             0x1000



void UNSAFE_SMS_loadZX7compressedTilesatAddr( const void *src, unsigned int dst );
//#define UNSAFE_SMS_loadZX7compressedTiles(src,tilefrom) UNSAFE_SMS_loadZX7compressedTilesatAddr((src),TILEtoADDR(tilefrom))
//void UNSAFE_SMS_loadaPLibcompressedTilesatAddr( const void *src, unsigned int dst );
//#define UNSAFE_SMS_loadaPLibcompressedTiles(src,tilefrom) UNSAFE_SMS_loadaPLibcompressedTilesatAddr((src),TILEtoADDR(tilefrom))



Sprites
void SMS_addTwoAdjoiningSprites (unsigned char x, unsigned char y, unsigned char tile) __naked __preserves_regs(iyh,iyl);     /* doesn't return anything */
void SMS_addThreeAdjoiningSprites (unsigned char x, unsigned char y, unsigned char tile) __naked __preserves_regs(iyh,iyl);   /* doesn't return anything */
signed char SMS_reserveSprite (void);
void SMS_updateSpritePosition (signed char sprite, unsigned char x, unsigned char y);
void SMS_updateSpriteImage (signed char sprite, unsigned char tile);
void SMS_hideSprite (signed char sprite);
void SMS_setClippingWindow (unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1);
signed char SMS_addSpriteClipping (int x, int y, unsigned char tile);   /* returns -1 if no more sprites are available or sprite clipped */
void SMS_finalizeSprites (void);     // *DEPRECATED* - will be dropped at some point in 2018
void SMS_copySpritestoSAT (void);



Input
#define PORT_B_KEY_UP           0x0040
#define PORT_B_KEY_DOWN         0x0080
#define PORT_B_KEY_LEFT         0x0100
#define PORT_B_KEY_RIGHT        0x0200
#define PORT_B_KEY_1            0x0400
#define PORT_B_KEY_2            0x0800
#define PORT_B_KEY_START        PORT_B_KEY_1    /* handy alias */

#define RESET_KEY               0x1000          /* (absent on SMS II) */
#define CARTRIDGE_SLOT          0x2000          /* ??? */
#define PORT_A_TH               0x4000          /* for light gun */
#define PORT_B_TH               0x8000          /* for light gun */


SMS_VDPType