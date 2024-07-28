/// @description Insert description here
// You can write your code in this editorà

var dest_treshold = 0.95;
var gui_length = obj_camera.view_width - 200;
var x_step = gui_length / obj_game.inventory_length;
var x_dest = 100 + x_step * item_id;
var y_dest = 7*obj_camera.view_height/8;
var alpha_text = obj_game.getItemAmount(obj_game.inventory_temp, item_id) == 0?0.3:0.3/obj_game.getItemAmount(obj_game.inventory_temp, item_id);
	

if (pickUp) {
	if (step < 60 * 1) {
		image_xscale = start_xscale * cos(current_time / 400);
		x = lerp(x + sprite_xoffset, obj_camera.view_width/2, 0.03);
		y = lerp(y + sprite_yoffset, 3*obj_camera.view_height/4, 0.01);
	} else if (step < 60 * 2) {
		image_alpha = lerp(image_alpha, 0.3, 0.05);
		image_xscale = lerp(image_xscale, start_xscale, 0.2);
		x = lerp(x + sprite_xoffset, x_dest, 0.03);
		y = lerp(y + sprite_yoffset, y_dest, 0.01);
	} else {
		x = x_dest;
		y = y_dest;
		image_alpha =  alpha_text;
		image_xscale = start_xscale;
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_alpha(alpha_text)
		draw_text(x + sprite_yoffset, y + sprite_yoffset, string(obj_game.getItemAmount(obj_game.inventory_temp, item_id)));
		draw_set_alpha(1)
		draw_set_valign(fa_top);
	}
	
	draw_sprite_ext(findSprite(item_id), 0,
					x, y, 
					image_xscale, image_yscale, 
					0, 
					c_white, 
					image_alpha);			
	step++;
}
