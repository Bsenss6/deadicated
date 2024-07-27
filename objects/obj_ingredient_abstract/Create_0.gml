/// @description Define shared data and behavior


////////////////////////
// Instance variables //
////////////////////////

mouse_offset_x = 0;
mouse_offset_y = 0;

start_x = x;
start_y = y;

dragging = false;
placed = false;

////////////////////////
// Utility methods    //
////////////////////////

/** Return the x index of the cell this block aligns to on the grid. */
function get_cell_idx_x()
{
	return round((x - obj_grid.x) / obj_grid.cell_size);
}

/** Return the y index of the cell this block aligns to on the grid. */
function get_cell_idx_y()
{
	return round((y - obj_grid.y) / obj_grid.cell_size);
}


////////////////////////
// Event handlers     //
////////////////////////

/// @param _fn_is_mouse_click_ignored {Function} Takes the x and y cell coordinates
///        of the mouse on this piece and returns whether the click should be ignored,
///        depending on the shape of this piece.
/// @param _fn_set_grid_cell_values {Function} Sets the given value on the grid,
///        following thisi shape's cell occupancy.
/// @description Start dragging block with mouse
function handle_left_pressed(_fn_is_mouse_click_ignored, _fn_set_grid_cell_values) {
	var _mouse_cx = floor((mouse_x - x) / obj_grid.cell_size); // cx for cell index x
	var _mouse_cy = floor((mouse_y - y) / obj_grid.cell_size);
	if (_fn_is_mouse_click_ignored(_mouse_cx, _mouse_cy))
	{
		return;
	}

	// set grid cells free
	if (placed)
	{
		var _cx = get_cell_idx_x();
		var _cy = get_cell_idx_y();
		_fn_set_grid_cell_values(_cx, _cy, 0);
	}

	// set mouse drag variables
	dragging = true;
	placed = false;
	layer = layer_get_id("LayerIngredientsDragged");
	mouse_offset_x = (mouse_x - x);
	mouse_offset_y = (mouse_y - y);
}

/// @param _fn_is_grid_placeable {Function} Takes the x and y cell coordinates
///        of the piece on the grid and returns whether the piece can be placed
///        on the grid.
/// @param _fn_set_grid_cell_values {Function} Sets the given value on the grid,
///        following this shape's cell occupancy.
/// @param _cell_value {Real} The value to set the occupied cells with.
/// @description Handles the Left Release event for dropping the piece.
function handle_left_released(_fn_is_grid_placeable, _fn_set_grid_cell_values, _cell_value)
{
	// Ignore unrelated ingredients
	if (!dragging)
	{
		return;
	}

	// Get coordinates of nearest grid cell
	var _cx = get_cell_idx_x();
	var _cy = get_cell_idx_y();

	// Tile block to grid
	if (_fn_is_grid_placeable(_cx, _cy))
	{
		x = start_x;
		y = start_y;
	}
	else
	{
		// set grid cells occupied
		_fn_set_grid_cell_values(_cx, _cy, _cell_value);
	
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
}
