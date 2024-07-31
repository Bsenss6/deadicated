/// @description Rotate the piece

if (placed || is_mouse_click_ignored()) //dragging || 
{
	return;
}

// calculate new mouse_offset
var _mouse_offset_x = (array_length(ingredient_cells) * obj_grid.cell_size) - mouse_offset_y;
var _mouse_offset_y = mouse_offset_x;

switch (rotation_stage) {
	case 0: sprite_index = sprite_rot1; break;
	case 1: sprite_index = sprite_rot2; break;
	case 2: sprite_index = sprite_rot3; break;
	case 3: sprite_index = sprite_rot0; break;
}

rotation_stage = ((rotation_stage + 1) % 4);
ingredient_cells = array_rotate(ingredient_cells);

mouse_offset_x = _mouse_offset_x;
mouse_offset_y = _mouse_offset_y;

audio_play_sound(SFX_Ingredient_rotate, 0, false, 0.5, 0, random_range(0.8, 1.2));
