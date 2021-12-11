#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "sound_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "HELLO SEGA MASTER SYSTEM!!", 3, 5 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		//engine_music_manager_play( 0 );
		engine_sound_manager_play( 1 );
		return;
	}

	engine_sprite_manager_draw( 120, 88, 256 );
}