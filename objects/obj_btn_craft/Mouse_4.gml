/// @description Complete the level

if (!is_level_completed()) {
	exit;
}

obj_game.set_current_recipe_complete();
room_goto(rm_recipe_book);
audio_play_sound(SFX_Potion_Complete, 0, false);