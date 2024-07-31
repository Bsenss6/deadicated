/// @description Insert description here
// You can write your code in this editor
if (isCollision && !obj_player.player_death) {
	obj_game.copyInventory(obj_game.inventory_temp, obj_game.inventory_amounts);
	room_persistent = true;
	room_goto(room_id);
}