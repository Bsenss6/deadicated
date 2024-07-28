/// @description Rotate the piece

if (dragging || placed || is_mouse_click_ignored())
{
	return;
}

switch (rotation_stage) {
	case 0: sprite_index = sprite_rot1; break;
	case 1: sprite_index = sprite_rot2; break;
	case 2: sprite_index = sprite_rot3; break;
	case 3: sprite_index = sprite_rot0; break;
}

rotation_stage = ((rotation_stage + 1) % 4);
ingredient_cells = array_rotate(ingredient_cells);
