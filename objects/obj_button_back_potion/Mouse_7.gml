/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _current_recipe = obj_game.get_current_recipe_id();

if (_current_recipe == ALCHEMY_RECIPES.PHILOSOPHER_STONE) {
	room_goto(rm_story_end);
} else {
	room_goto(rm_recipe_book);
}
