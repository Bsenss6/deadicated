/// @description Insert description here
// You can write your code in this editor

isCollision = place_meeting(x, y, obj_player);
 
if (isCollision && keyboard_check(ord("F")) && !obj_player.player_death) {
	obj_game.copyInventory(obj_game.inventory_temp, obj_game.inventory_amounts);
	//room_persistent = true;
	room_goto(room_id);
}

