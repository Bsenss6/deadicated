/// @description Spawn a new ingredient object

var _layer = layer_get_id("LayerIngredientsDragged");
var _obj = findObject(item_id);

// Create instance
var _inst = instance_create_layer(0, 0, _layer, _obj);

// // Place instance under mouse
var _c_first = find_first_non_empty_cell(_inst.ingredient_cells);
_inst.x = (mouse_x - ((_c_first._x + 0.5) * obj_grid.cell_size));
_inst.y = (mouse_y - ((_c_first._y + 0.5) * obj_grid.cell_size));
_inst.mouse_offset_x = (mouse_x - _inst.x);
_inst.mouse_offset_y = (mouse_y - _inst.y);
_inst.dragging = true;

if (!audio_is_playing(SFX_Puzzle_Pickup)){
	audio_play_sound(SFX_Puzzle_Pickup, 1, false, 1, 0, random_range(0.8, 1.2));
}