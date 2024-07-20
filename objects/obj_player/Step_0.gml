//When exiting the room, the player wraps around
move_wrap(1, 1, 0);

//Determine if the player is going (right or left) or/and (up or down)
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

//Set the direction that the player is facing depending on the input
if (move_x != 0) image_xscale = player_scaling * sign(-move_x/abs(move_x));

//Setup the movement of the player
move_x *= move_speed;
move_y *= move_speed;

//Verify the collision
if (place_meeting(x, y, obj_obstacle_parent))
{
	move_x = 0;
	move_y = 0;
}

//Move the player if there is no collision
move_and_collide(move_x, move_y, obj_obstacle_parent);
