/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(text_surface)) text_surface = surface_create(room_width, room_height);

surface_set_target(text_surface);

draw_clear_alpha(c_black, 0);

draw_self();

if (isCollision) {
	
	draw_set_font(fnt_main);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x, y, string(room_text), 0.5, 0.5, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

surface_reset_target();

draw_set_alpha(0.5);
draw_surface(text_surface, 0, 0);
draw_set_alpha(1);