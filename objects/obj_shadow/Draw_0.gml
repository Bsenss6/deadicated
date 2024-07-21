var shadow_scale = 100000000;
var x_shadow = shadow_scale * cos(obj_sun.rad);
var y_shadow = shadow_scale * sin(obj_sun.rad);
var anchor_x3 = 0;
var anchor_y3 = 0;
var anchor_x4 = 0;
var anchor_y4 = 0;
var shadow_rectangle = [0,0,0,0];

gpu_set_fog(true, c_black, 0, 1);
with(obj_object_parent){
	if ((obj_sun.rad%(2*pi)) >= 3*pi/2) {
		anchor_x3 = x-sprite_xoffset;
		anchor_y3 = y-sprite_yoffset;
		anchor_x4 = x+sprite_xoffset;
		anchor_y4 = y+sprite_yoffset;
	} else if ((obj_sun.rad%(2*pi)) >= pi) {
		anchor_x3 = x-sprite_xoffset;
		anchor_y3 = y+sprite_yoffset;
		anchor_x4 = x+sprite_xoffset;
		anchor_y4 = y-sprite_yoffset;
	} else if ((obj_sun.rad%(2*pi)) >= pi/2) {
		anchor_x3 = x+sprite_xoffset;
		anchor_y3 = y+sprite_yoffset;
		anchor_x4 = x-sprite_xoffset;
		anchor_y4 = y-sprite_yoffset;
	} else {
		anchor_x3 = x+sprite_xoffset;
		anchor_y3 = y-sprite_yoffset;
		anchor_x4 = x-sprite_xoffset;
		anchor_y4 = y+sprite_yoffset;
	}
						
	draw_sprite_pos(sprite_index, image_index, 
		x-sprite_xoffset-x_shadow,  y-sprite_yoffset-y_shadow, 
		x+sprite_xoffset-x_shadow,  y-sprite_yoffset-y_shadow, 
		anchor_x3,					anchor_y3, 
		anchor_x4,					anchor_y4, 
		1);
	//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, shadow_scale*image_yscale, radtodeg(-obj_sun.rad + pi/2), c_black, 1);
}
gpu_set_fog(false, c_white, 0, 0);