/// @description Draw recipe name

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
var _text = obj_game.get_current_recipe_name();
draw_text(x, y, _text)
