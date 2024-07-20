//When exiting the room, the player wraps around
move_wrap(1, 1, 0);

//Determine if the player is going (right or left) or/and (up or down)
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

//Set the direction that the player is facing depending on the input
if (move_x != 0) image_xscale = player_scaling * sign(-move_x/abs(move_x));

//Move the player
move_x *= move_speed;
move_y *= move_speed;
move_and_collide(move_x, move_y, obj_obstacle_parent);
