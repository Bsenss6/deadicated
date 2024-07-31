/// @description Go to room

if (!unlocked) {
	exit;
}

obj_game.current_alchemy_recipe = recipe_index;
room_goto(rm_potion);
