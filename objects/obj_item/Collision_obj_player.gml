/// @description Insert description here
// You can write your code in this editor
obj_game.addItem(obj_game.inventory_temp, item_id);
sprite_index = -1;
pickUp = true;
step = 0;
if (pickUp == true /*&& obj_player.player_death(false)*/){
		audio_play_sound(SFX_Item_Pickup, 1, false, 1, 0, random_range(0.8, 1.2));
	}