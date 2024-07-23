
x = room_width/2 + cos(rad) * path_radius;
y = room_height/2 + sin(rad) * path_radius;

if (keyboard_check(vk_space) && sun_ready) {//obj_player.speed == 0
	rad += rad_step;
	sun_ready = false;
	obj_sun.alarm[0] = 60 * sleep_time;
}
//while (!sun_ready) {
//time_source_start(_time_source);
//}
//print(rad%(2*pi));

//var move_sun = function()
//{
//    instance_destroy();
//}

//var _time_source = time_source_create(time_source_game, 300, time_source_units_frames, _my_method);
