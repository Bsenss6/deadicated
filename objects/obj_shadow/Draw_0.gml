
if (!surface_exists(shadow_surface)) shadow_surface = surface_create(room_width, room_height);

surface_set_target(shadow_surface);

draw_clear_alpha(c_black, 0);

//Length of the shadow
var shadow_scale = 1000;

gpu_set_fog(true, c_black, 0, 1);
with(obj_object_parent){
	var sx = (room_width/2) - shadow_scale*cos(obj_sun.rad);
	var sy = (room_height/2) - shadow_scale*sin(obj_sun.rad);
	draw_sprite_pos(sprite_index, image_index, 
		x-sprite_xoffset-sx,	y-sprite_yoffset-sy, 
		x+sprite_xoffset-sx,	y-sprite_yoffset-sy, 
		x+sprite_xoffset,	y+sprite_xoffset, 
		x-sprite_xoffset,	y+sprite_yoffset, 
		1);
}
gpu_set_fog(false, c_white, 0, 0);

surface_reset_target();

draw_set_alpha(0.5);
draw_surface(shadow_surface, 0, 0);
draw_set_alpha(1);