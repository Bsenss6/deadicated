/// @description Insert description here

unlocked = obj_game.is_recipe_unlocked(recipe_index);
completed = obj_game.is_recipe_completed(recipe_index);

if (completed)
{
	sprite_index = spr_recipe_completed;
	image_alpha = 1;
}
else if (unlocked)
{
	sprite_index = spr_recipe_unlocked
	image_alpha = 0;
}
else // locked
{
	sprite_index = spr_recipe_locked;
	image_alpha = 1;
}
