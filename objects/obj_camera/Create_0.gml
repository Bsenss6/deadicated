/// @description Insert description here
// You can write your code in this editor

enum cam_mode {
	follow_player,
	follow_mouse_border
}

view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);

boundless = false;

mode = cam_mode.follow_player;