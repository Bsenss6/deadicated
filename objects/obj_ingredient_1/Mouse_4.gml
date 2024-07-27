/// @description Start dragging block with mouse

var _mouse_cx = floor((mouse_x - x) / obj_grid.cell_size); // cx for cell index x
var _mouse_cy = floor((mouse_y - y) / obj_grid.cell_size);
if ((_mouse_cx < 0) || (_mouse_cx > 2) ||
	(_mouse_cy < 0) || (_mouse_cy > 1) ||
	((_mouse_cx >= 1) && (_mouse_cy == 0)))
{
	return;
}

// set grid cells free
if (placed)
{
	var _cx = get_cell_idx_x();
	var _cy = get_cell_idx_y();
	obj_grid.cells[_cy  ][_cx  ] = 0;
	obj_grid.cells[_cy+1][_cx  ] = 0;
	obj_grid.cells[_cy+1][_cx+1] = 0;
	obj_grid.cells[_cy+1][_cx+2] = 0;
}

// set mouse drag variables
dragging = true;
placed = false;
layer = layer_get_id("LayerIngredientsDragged");
mouse_offset_x = (mouse_x - x);
mouse_offset_y = (mouse_y - y);

