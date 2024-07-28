/// @description Start dragging block with mouse

if (is_mouse_click_ignored())
{
	return;
}

// set grid cells free
if (placed)
{
	var _cx = get_cell_idx_x();
	var _cy = get_cell_idx_y();
	set_grid_empty(_cx, _cy);

	// remove stats of this object to the grid stats
	obj_grid.remove_stats(stats);
}
else
{
	// Leave in place a new object
	var _new_inst = instance_create_layer(x, y, layer, object_index);
	_new_inst.sprite_index = self.sprite_index;
	_new_inst.rotation_stage = self.rotation_stage;
	_new_inst.ingredient_cells = self.ingredient_cells;
}

// set mouse drag variables
dragging = true;
placed = false;
layer = layer_get_id("LayerIngredientsDragged");
mouse_offset_x = (mouse_x - x);
mouse_offset_y = (mouse_y - y);
