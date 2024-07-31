/// @description Draw button text

if (!is_level_completed()) {
	exit;
}

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, "Craft\nRecipe");
