if (player_death) obj_game.alarm[0] = 1 * 60;

//When exiting the room, the player wraps around
move_wrap(1, 1, 0);

//Determine if the player is going (right or left) or/and (up or down)
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Set the direction that the player is facing depending on the input
if (move_x != 0) image_xscale = player_scaling * sign(-move_x/abs(move_x));

//Setup the movement of the player
move_x *= move_speed;
move_y *= move_speed;

//Move the player and check for collision
move_and_collide(move_x, move_y, obj_obstacle_parent);
