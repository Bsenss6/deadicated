
obj_game.copyInventory(obj_game.inventory_amounts ,obj_game.inventory_temp);

if (spawn_location != noone) {
	x = spawn_location.x;
	y = spawn_location.y;
}

image_xscale = player_scaling;
image_yscale = player_scaling;
move_speed = 10;
move_x = 0;
move_y = 0;

player_death = false;
