/// @description Rotate the piece

if (placed || is_mouse_click_ignored()) //dragging || 
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
audio_play_sound(SFX_Ingredient_rotate, 0, false, 0.5, 0, random_range(0.8, 1.2));
