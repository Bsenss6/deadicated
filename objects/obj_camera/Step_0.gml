/// @description Insert description here
// You can write your code in this editor
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

switch (mode) {
	case cam_mode.follow_player:
		if (!instance_exists(obj_player)) break;
		camera_x = obj_player.x - view_width/2;
		camera_y = obj_player.y - view_height/2;
		break;
	case cam_mode.follow_mouse_border:
		if (!point_in_rectangle(mouse_x, mouse_y, 
								camera_x + view_width*0.1,  camera_y + view_height*0.1,
								camera_x + view_width*0.9,  camera_y + view_height*0.9)) {
			camera_x = lerp(camera_x, mouse_x - (view_width/2), 0.05);
			camera_y = lerp(camera_y, mouse_y - (view_height/2), 0.05);
		}
		break;
}
if (!boundless) {
	camera_x = clamp(camera_x, 0, room_width - view_width);
	camera_y = clamp(camera_y, 0, room_height - view_height);
}

camera_set_view_pos(view_camera[0], camera_x, camera_y);
