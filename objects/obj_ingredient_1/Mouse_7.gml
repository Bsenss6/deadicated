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
if (_cx < 0 || _cx > 5-2 || // -2 for this width
	_cy < 0 || _cy > 5-1 || // -1 for this height
	obj_grid.cells[_cy  ][_cx  ] != 0 ||
	obj_grid.cells[_cy+1][_cx  ] != 0 ||
	obj_grid.cells[_cy+1][_cx+1] != 0 ||
	obj_grid.cells[_cy+1][_cx+2] != 0)
{
	x = start_x;
	y = start_y;
}
else
{
	// set grid cells occupied
	obj_grid.cells[_cy  ][_cx  ] = 1;
	obj_grid.cells[_cy+1][_cx  ] = 1;
	obj_grid.cells[_cy+1][_cx+1] = 1;
	obj_grid.cells[_cy+1][_cx+2] = 1;
	
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
