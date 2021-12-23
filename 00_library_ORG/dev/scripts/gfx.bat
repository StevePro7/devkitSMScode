@echo off
REM gfx		Commonly used gfx	not banked

cd ..
cd ..
cd gfx

:: Tiles
bmp2tile.exe raw/font.bmp -savetiles "font (tiles).psgcompr" -removedupes -tileoffset 0 -savetilemap "font (tilemap).bin" -savepalette "font (palette).bin" -exit


cd ..
cd dev
folder2c ../gfx gfx

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

::cd ..
cd scripts