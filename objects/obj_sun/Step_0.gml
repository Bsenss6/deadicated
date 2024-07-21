
x = room_width/2 + cos(rad) * path_radius;
y = room_height/2 + sin(rad) * path_radius;

if (keyboard_check(vk_space) && sun_ready) {
	rad += rad_step;
	sun_ready = false;
	obj_sun.alarm[0] = 60 * 0.2; //2 seconds cooldown
}
//print(rad%(2*pi));