/// @description Show current and target stats

current = obj_grid.stat_current[stat_idx];

var _text = string("{0}\n{1} out of {2}",
	stat_name,
	current,
	target);

draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_text_transformed(x, y, _text, 0.4, 0.4, 0);
