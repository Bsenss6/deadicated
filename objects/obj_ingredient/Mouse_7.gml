/// @description Drop block

// Ignore unrelated ingredients
if (!dragging)
{
	return;
}

// Get coordinates of nearest grid cell
var _cx = get_cell_idx_x();
var _cy = get_cell_idx_y();

// Tile block to grid
if (!is_placeable_on_grid(_cx, _cy))
{
	instance_destroy();
}
else
{
	// set grid cells occupied
	set_grid_occupied(_cx, _cy);
	
	// add stats of this object to the grid stats
	obj_grid.add_stats(stats);

	// place on grid
	x = _cx * obj_grid.cell_size + obj_grid.x;
	y = _cy * obj_grid.cell_size + obj_grid.y;
	placed = true;
}

// Reset dragging variables
dragging = false;
mouse_offset_x = 0;
mouse_offset_y = 0;
layer = layer_get_id("LayerIngredientsStill");
