#include "screen_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "HELLO SEGA MASTER SYSTEM...!", 3, 5 );
}

void engine_screen_manager_update()
{
	engine_sprite_manager_draw( 120, 88, 256 );
}