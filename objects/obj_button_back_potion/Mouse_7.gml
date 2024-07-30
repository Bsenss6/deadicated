/// @description Go back to room room_id

// Inherit the parent event
event_inherited();

obj_game.set_current_recipe_complete();
room_goto(rm_recipe_book);
