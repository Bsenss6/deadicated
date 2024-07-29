/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_player_death) {
    image_index = 0;
    image_speed = 0;
} else if (sprite_index == spr_player_sleep || sprite_index == spr_player_sit) {
    image_speed = 0;
} else {
	image_speed = 1;
}
