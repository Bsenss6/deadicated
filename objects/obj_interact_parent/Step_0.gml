/// @description Insert description here
// You can write your code in this editor

isCollision = place_meeting(x, y, obj_player);
 
if (isCollision && mouse_check_button_pressed(mb_right)) {
	room_goto(room_id);
}

