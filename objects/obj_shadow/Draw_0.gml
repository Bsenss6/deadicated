

if (!surface_exists(shadow_surface)) shadow_surface = surface_create(room_width, room_height);

surface_set_target(shadow_surface);

draw_clear_alpha(c_black, 0);

//Length of the shadow
var shadow_scale = 10000;

gpu_set_fog(true, c_black, 0, 1);
with(obj_object_parent){
	if (!isCircle) {
		var x_shadow = shadow_scale * cos(obj_sun.rad);
		var y_shadow = shadow_scale * sin(obj_sun.rad);
		var x3 = 0;
		var y3 = 0;
		var x4 = 0;
		var y4 = 0;

		if ((obj_sun.rad%(2*pi)) >= 3*pi/2) {
			x3 = x-sprite_xoffset;
			y3 = y-sprite_yoffset;
			x4 = x+sprite_xoffset;
			y4 = y+sprite_yoffset;
		} else if ((obj_sun.rad%(2*pi)) >= pi) {
			x3 = x-sprite_xoffset;
			y3 = y+sprite_yoffset;
			x4 = x+sprite_xoffset;
			y4 = y-sprite_yoffset;
		} else if ((obj_sun.rad%(2*pi)) >= pi/2) {
			x3 = x+sprite_xoffset;
			y3 = y+sprite_yoffset;
			x4 = x-sprite_xoffset;
			y4 = y-sprite_yoffset;
		} else {
			x3 = x+sprite_xoffset;
			y3 = y-sprite_yoffset;
			x4 = x-sprite_xoffset;
			y4 = y+sprite_yoffset;
		}
						
		draw_sprite_pos(spr_block, 0, 
			x4-x_shadow,	y4-y_shadow, 
			x3-x_shadow,	y3-y_shadow, 
			x3,				y3, 
			x4,				y4, 
			1);
	}
} 
gpu_set_fog(false, c_white, 0, 0);

surface_reset_target();

draw_set_alpha(0.5);
draw_surface(shadow_surface, 0, 0);
draw_set_alpha(1);