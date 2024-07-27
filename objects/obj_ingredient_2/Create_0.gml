/// @description Define custom child's behavior

// Inherit the parent event
event_inherited();


////////////////////////////////////
// Define child's custom behavior //
////////////////////////////////////

function is_mouse_click_ignored(_mouse_cx, _mouse_cy)
{
	return ((_mouse_cx == 0) && (_mouse_cy == 1)) ||
		((_mouse_cx == 2) && (_mouse_cy == 0));
}

function is_grid_placeable(_cx, _cy)
{
	return (_cx < 0 || _cx > 5-2 || // -2 for this width
		_cy < 0 || _cy > 5-1 || // -1 for this height
		obj_grid.cells[_cy  ][_cx  ] != 0 ||
		obj_grid.cells[_cy  ][_cx+1] != 0 ||
		obj_grid.cells[_cy+1][_cx+1] != 0 ||
		obj_grid.cells[_cy+1][_cx+2] != 0)
}

function set_grid_cell_values(_cx, _cy, _value)
{
	obj_grid.cells[_cy  ][_cx  ] = _value;
	obj_grid.cells[_cy  ][_cx+1] = _value;
	obj_grid.cells[_cy+1][_cx+1] = _value;
	obj_grid.cells[_cy+1][_cx+2] = _value;
}
