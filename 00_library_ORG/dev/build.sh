#!/bin/sh

# Content
#folder2c ../gfx gfx
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

# Compile
cd banks
sdcc --debug -c -mz80 --codeseg BANK1 banked_code_1.c
sdcc --debug -c -mz80 --codeseg BANK2 banked_code_2.c
sdcc --debug -c -mz80 --codeseg BANK3 banked_code_3.c
cd ..

cd devkit
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
cd ..

cd engine
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 font_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 input_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 screen_manager.c
cd ..

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

# Link
sdcc --debug -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 \
-Wl-b_BANK1=0x14000 \
-Wl-b_BANK2=0x24000 \
-Wl-b_BANK3=0x34000 \
../crt0/crt0b_sms.rel \
../lib/SMSlib.lib \
main.rel \
banks/banked_code_1.rel \
banks/banked_code_2.rel \
banks/banked_code_3.rel \
devkit/_sms_manager.rel \
engine/asm_manager.rel \
engine/content_manager.rel \
engine/font_manager.rel \
engine/input_manager.rel \
engine/screen_manager.rel \
gfx.rel

# Execute
makesms output.ihx output.sms

cd banks
rm -f *.asm 2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.sym 2> /dev/null
cd ..

cd devkit
rm -f *.asm 2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.sym 2> /dev/null
cd ..

cd engine
rm -f *.asm 2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.sym 2> /dev/null
cd ..

rm -f *.asm 2> /dev/null
rm -f *.ihx 2> /dev/null
rm -f *.lk  2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.noi 2> /dev/null
rm -f *.sym 2> /dev/null

# Run
java -jar ~/Sega/Emulicious/Emulicious.jar output.sms