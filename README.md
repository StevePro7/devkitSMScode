# devkitSMS Code
Test repository for devkitSMS code samples!


TODO wrap functions
/* group 0 */
#define VDPFEATURE_EXTRAHEIGHT      0x0002     /* needed for 224-240 lines modes */
#define VDPFEATURE_SHIFTSPRITES     0x0008
#define VDPFEATURE_HIDEFIRSTCOL     0x0020
#define VDPFEATURE_LEFTCOLBLANK     0x0020     /* probably a better name */
#define VDPFEATURE_LOCKHSCROLL      0x0040
#define VDPFEATURE_LOCKVSCROLL      0x0080

/* group 1 */
#define VDPFEATURE_ZOOMSPRITES      0x0101     /* (use SMS_setSpriteMode instead) */
#define VDPFEATURE_USETALLSPRITES   0x0102     /* (use SMS_setSpriteMode instead) */
#define VDPFEATURE_240LINES         0x0108     /*  SMS II only! PAL only! */
#define VDPFEATURE_224LINES         0x0110     /*  SMS II only! */
#define VDPFEATURE_FRAMEIRQ         0x0120
#define VDPFEATURE_SHOWDISPLAY      0x0140