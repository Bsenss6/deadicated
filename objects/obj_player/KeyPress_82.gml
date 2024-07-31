/// @description Insert description here
// You can write your code in this editor
player_death = true;
if (player_death == true && !audio_is_playing(SFX_Dead || SFX_Dead_2)){
		audio_play_sound(choose(SFX_Dead, SFX_Dead_2), 1, false, 0.5, 0, random_range(0.8, 1.2));
	}