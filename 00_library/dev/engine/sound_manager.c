#include "sound_manager.h"
#include "../devkit/_snd_manager.h"
#include "../content/psg.h"
#include <stdlib.h>

#define MUSIC_PSG			music_psg
#define PHONE_PSG			phone_psg
#define SOUND1_PSG			sound1_psg
#define SOUND2_PSG			sound2_psg
#define SOUND3_PSG			sound3_psg
#define SOUNDS_MAX			3

void engine_music_manager_play( unsigned char index )
{
	void *song = 0 == index ? ( unsigned char* ) MUSIC_PSG : ( unsigned char* ) PHONE_PSG;
	devkit_PSGPlayNoRepeat( song );
}

void engine_sound_manager_play( unsigned char index )
{
	void *sfx;
	if( 0 == index )
	{
		sfx = ( unsigned char* ) SOUND1_PSG;
	}
	else if( 1 == index )
	{
		sfx = ( unsigned char* ) SOUND2_PSG;
	}
	else
	{
		sfx = ( unsigned char* ) SOUND3_PSG;
	}

	devkit_PSGSFXPlay( sfx, devkit_SFX_CHANNEL2() );
}
