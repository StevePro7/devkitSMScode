::gfx		Commonly used gfx	not banked
@echo off

cd ..
cd content
cd gfx

:: Tiles
bmp2tile.exe raw\font_tiles.bmp -savetiles "font_tiles (tiles).psgcompr" -noremovedupes -planar -tileoffset 0  -savetilemap "font_tiles (tilemap).bin" -savepalette "font_tiles (palette).bin" -fullpalette -exit
bmp2tile.exe raw\tree_avoid.bmp -savetiles "tree_avoid (tiles).psgcompr" -noremovedupes -planar -tileoffset 64 -savetilemap "tree_avoid (tilemap).bin" -savepalette "tree_avoid (palette).bin" -fullpalette -exit

:: Sprites
bmp2tile.exe raw\sprites.bmp -savetiles "sprites (tiles).psgcompr" -noremovedupes -planar -tileoffset 0 -savepalette "sprites (palette).bin" -fullpalette  -spritepalette -exit

cd ..
folder2c gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c

if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul


cd ..
cd scripts