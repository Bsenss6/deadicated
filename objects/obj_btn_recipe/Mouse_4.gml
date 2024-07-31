/// @description Go to room

if (!unlocked) {
	exit;
}

obj_game.current_alchemy_recipe = recipe_index;
room_goto(rm_potion);
if (!audio_is_playing(SFX_Recipe_Close )){
		audio_play_sound(SFX_Recipe_Close, 1, false, 1, 0, random_range(0.8, 1.2));
}