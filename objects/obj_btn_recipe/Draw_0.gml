/// @description Insert description here
// You can write your code in this editor

if (!unlocked) {
	exit;
}

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, obj_game.get_recipe_name(recipe_index));
