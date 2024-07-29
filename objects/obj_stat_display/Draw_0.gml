/// @description Show current and target stats

current = obj_grid.stat_current[stat_idx];

var _text = string("{0}\n{1} / {2}",
	stat_name,
	current,
	target);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(x, y, _text);
