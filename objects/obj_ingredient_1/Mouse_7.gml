/// @description Drop block

var _cell_size = 64;

// Reset mouse offset
mouse_offset_x = 0;
mouse_offset_y = 0;

dragging = false;

// Tile block to grid
if ((x < (obj_grid.x - (_cell_size / 2))) ||
	(y < (obj_grid.y - (_cell_size / 2))) ||
    (x + sprite_width > (obj_grid.x + obj_grid.sprite_width + (_cell_size / 2))) ||
	(y + sprite_height > (obj_grid.y + obj_grid.sprite_height + (_cell_size / 2))))
{
	x = start_x;
	y = start_y;
}
else
{
	x = (((x - obj_grid.x + (_cell_size / 2)) div _cell_size) * _cell_size) + obj_grid.x;
	y = (((y - obj_grid.y + (_cell_size / 2)) div _cell_size) * _cell_size) + obj_grid.y;
}