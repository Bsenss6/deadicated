/// @description Display the text

var _text_name = string("{0}:", obj_grid.stats[stat_idx][0]);
var _text_progress = string("{0} / {1}",
	obj_grid.stats[stat_idx][2],
	obj_grid.stats[stat_idx][1]);

draw_set_valign(fa_middle);

draw_set_halign(fa_left);
draw_text(x, y, _text_name);

draw_set_halign(fa_right);
draw_text(x + 192, y, _text_progress);
