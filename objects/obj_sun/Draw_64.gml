/// @description Insert description here
// You can write your code in this editor

if (object_exists(obj_player)) {
	switch (mode) {
		case sun_mode.smooth:
			if (keyboard_check(vk_space) && sun_ready) {
				rad_step = 0.03;
				rad += rad_step;
				sun_ready = false;
				sleep_time = 1/60;
				obj_sun.alarm[0] = 60 * sleep_time;
			}
			break;
		case sun_mode.steps:
			if (keyboard_check(vk_space) && sun_ready) {
				rad_step = pi/8;
				rad += rad_step;
				sun_ready = false;
				sleep_time = 0.5;
				obj_sun.alarm[0] = 60 * sleep_time;
			}
			break;
		case sun_mode.movement_controlled:
			if (obj_player.move_x == 0 && obj_player.move_y == 0) {
				rad += rad_step;
			}
			break;
	}

	x = lerp(x, obj_camera.view_width - path_radius + cos(rad) * path_radius, 0.05);
	y = lerp(y, obj_camera.view_height - path_radius + sin(rad) * path_radius, 0.05);

	//draw_sprite(spr_sun,0, x, y)

	draw_sprite_ext(spr_compass, 0, 
					obj_camera.view_width - path_radius * 2, obj_camera.view_height - path_radius * 2,
					0.5, 0.5, 
					0, 
					c_white, 
					1);
	draw_sprite_ext(spr_arrow, 0,
					obj_camera.view_width - path_radius * 2, obj_camera.view_height - path_radius * 2,
					0.7, 0.7, 
					-radtodeg(rad + pi/2), 
					c_white,
					0.7);
}
