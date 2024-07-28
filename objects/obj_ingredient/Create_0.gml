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

/** Return the x index of the cell the mouse aligns to on the piece. */
function get_mouse_idx_x()
{
	return floor((mouse_x - x) / obj_grid.cell_size);
}

/** Return the y index of the cell the mouse aligns to on the piece. */
function get_mouse_idx_y()
{
	return floor((mouse_y - y) / obj_grid.cell_size);
}

/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this
///        piece's cells
/// @description A mouse click is ignored if it falls on the empty part of a piece.
function is_mouse_click_ignored(_ingredient_cells=[])
{
	var _mouse_cx = get_mouse_idx_x();
	var _mouse_cy = get_mouse_idx_y();
	return _ingredient_cells[_mouse_cy][_mouse_cx] == 0;
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this
///        piece's cells
/// @description Verifies whether the piece can be placed on the grid.
function is_placeable_on_grid(_cx, _cy, _ingredient_cells)
{
	// Too much left or up
	if (_cx < 0 || _cy < 0) {
		return false;
	}

	var _grid_height = array_length(obj_grid.cells);
	for (var _j = 0; _j < array_length(_ingredient_cells); _j += 1) {
		// Too much down
		if ((_cy + _j) >= _grid_height) {
			return false;
		}

		var _grid_width = array_length(obj_grid.cells[_j]);
		for (var _i = 0; _i < array_length(ingredient_cells[_j]); _i += 1) {
			// Too much right
			if ((_cx+_i) >= _grid_width) {
				return false;
			}
			// Cell occupied
			if ((_ingredient_cells[_j][_i] != 0) && (obj_grid.cells[_cy+_j][_cx+_i] != 0)) {
				return false;
			}
		}
	}

	return true;
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this
///        piece's cells
/// @description Verifies whether the piece can be placed on the grid.
function set_grid_empty(_cx, _cy, _ingredient_cells)
{
	for (var _j = 0; _j < array_length(_ingredient_cells); _j += 1) {
		for (var _i = 0; _i < array_length(_ingredient_cells[_j]); _i += 1) {
			if (_ingredient_cells[_j][_i] != 0) {
				obj_grid.cells[_cy+_j][_cx+_i] = 0;
			}
		}
	}
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this
///        piece's cells
/// @description Sets the grid's cells as occupied by this piece.
function set_grid_occupied(_cx, _cy, _ingredient_cells)
{
	for (var _j = 0; _j < array_length(_ingredient_cells); _j += 1) {
		for (var _i = 0; _i < array_length(_ingredient_cells[_j]); _i += 1) {
			if (_ingredient_cells[_j][_i] != 0) {
				obj_grid.cells[_cy+_j][_cx+_i] = _ingredient_cells[_j][_i];
			}
		}
	}
}


////////////////////////
// Event handlers     //
////////////////////////

/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this piece's cells
/// @description Start dragging block with mouse
function handle_left_pressed(_ingredient_cells=[], _stats=[])
{
	if (is_mouse_click_ignored(_ingredient_cells))
	{
		return;
	}

	// set grid cells free
	if (placed)
	{
		var _cx = get_cell_idx_x();
		var _cy = get_cell_idx_y();
		set_grid_empty(_cx, _cy, _ingredient_cells);
		
		// remove stats of this object to the grid stats
		obj_grid.remove_stats(_stats);
	}
	else
	{
		// Leave in place a new object
		instance_create_layer(x, y, layer, object_index)
	}

	// set mouse drag variables
	dragging = true;
	placed = false;
	layer = layer_get_id("LayerIngredientsDragged");
	mouse_offset_x = (mouse_x - x);
	mouse_offset_y = (mouse_y - y);
}

/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this piece's cells
/// @param _stats {Array<Real>} stats added by this ingredient
/// @description Handles the Left Release event for dropping the piece.
function handle_left_released(_ingredient_cells=[], _stats=[])
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
	if (!is_placeable_on_grid(_cx, _cy, _ingredient_cells))
	{
		instance_destroy();
	}
	else
	{
		// set grid cells occupied
		set_grid_occupied(_cx, _cy, _ingredient_cells);
		
		// add stats of this object to the grid stats
		obj_grid.add_stats(_stats);
	
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

/// @param _ingredient_cells {Array<Array<Real>>} arrangement of this piece's cells
/// @description Handles the Right Pressed event for rotating the piece.
function handle_right_pressed(_ingredient_cells=[])
{
	if (dragging || placed ||
		is_mouse_click_ignored(_ingredient_cells))
	{
		return;
	}

	instance_change(next_roration_obj, true);
}
