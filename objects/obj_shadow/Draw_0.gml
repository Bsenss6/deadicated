var shadow_scale = 1000;
var x_shadow = shadow_scale * cos(obj_sun.rad);
var y_shadow = shadow_scale * sin(obj_sun.rad);
gpu_set_fog(true, c_black, 0, 1);
with(obj_object_parent){

	draw_sprite_pos(sprite_index, image_index, 
		x-sprite_xoffset-x_shadow, y-sprite_yoffset-y_shadow, 
		x+sprite_xoffset-x_shadow, y-sprite_yoffset-y_shadow, 
		x+sprite_xoffset, y+sprite_yoffset, 
		x-sprite_xoffset, y+sprite_yoffset, 
		1);
}
gpu_set_fog(false, c_white, 0, 0);