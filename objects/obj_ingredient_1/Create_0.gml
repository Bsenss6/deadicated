/// @description Define instance variables


mouse_offset_x = 0;
mouse_offset_y = 0;

start_x = x;
start_y = y;

dragging = false;
placed = false;

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