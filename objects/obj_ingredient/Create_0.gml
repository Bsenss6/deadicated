/// @description Define shared data and behavior

// Variables to inherit
ingredient_cells = [[0]];
stats = [0, 0, 0, 0, 0];

#region Shared instance variables

/// Indicate current rotation (90deg steps) from 0 to 3
rotation_stage = 0;

mouse_offset_x = 0;
mouse_offset_y = 0;

start_x = x;
start_y = y;

dragging = false;
placed = false;

#endregion

#region Utility methods

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

/// @description A mouse click is ignored if it falls on the empty part of a piece.
function is_mouse_click_ignored()
{
	var _mouse_cx = get_mouse_idx_x();
	var _mouse_cy = get_mouse_idx_y();

	return ingredient_cells[_mouse_cy][_mouse_cx] == 0;
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @description Verifies whether the piece can be placed on the grid.
function is_placeable_on_grid(_cx, _cy)
{
	// Too much left or up
	if (_cx < 0 || _cy < 0) {
		return false;
	}

	var _grid_height = array_length(obj_grid.cells);
	for (var _j = 0; _j < array_length(ingredient_cells); _j += 1) {
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
			if ((ingredient_cells[_j][_i] != 0) && (obj_grid.cells[_cy+_j][_cx+_i] != 0)) {
				return false;
			}
		}
	}
	return true;
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @description Verifies whether the piece can be placed on the grid.
function set_grid_empty(_cx, _cy)
{
	for (var _j = 0; _j < array_length(ingredient_cells); _j += 1) {
		for (var _i = 0; _i < array_length(ingredient_cells[_j]); _i += 1) {
			if (ingredient_cells[_j][_i] != 0) {
				obj_grid.cells[_cy+_j][_cx+_i] = 0;
			}
		}
	}
}

/// @param _cx {Real} piece's x location in grid coordinates
/// @param _cy {Real} piece's y location in grid coordinates
/// @description Sets the grid's cells as occupied by this piece.
function set_grid_occupied(_cx, _cy)
{
	for (var _j = 0; _j < array_length(ingredient_cells); _j += 1) {
		for (var _i = 0; _i < array_length(ingredient_cells[_j]); _i += 1) {
			if (ingredient_cells[_j][_i] != 0) {
				obj_grid.cells[_cy+_j][_cx+_i] = ingredient_cells[_j][_i];
			}
		}
	}
}

#endregion
