/// @description Insert description here
// You can write your code in this editor
draw_self();

	draw_set_font(fnt_main);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x + sprite_xoffset, y - 10, toString(item_id), 0.4, 0.4, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);