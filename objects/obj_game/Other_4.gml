/// @description Insert description here
// You can write your code in this editor
if room == rm_recipe_book{
	audio_play_sound(SFX_Recipe_Open, 0, false);
}

if room == rm_potion{
	audio_play_sound(AMB_Cauldron, 0, true , 1);
} else{
	audio_stop_sound(AMB_Cauldron);
}
