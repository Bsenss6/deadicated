/// @description Complete the level

if (!is_level_completed()) {
	exit;
}

// Set game complete
obj_game.set_current_recipe_complete();

// Add ingredient to inventory
var _recipe_id = obj_game.get_current_recipe_id();
var _item_id = -1;
switch (_recipe_id) {
	// Convert between different systems
	case ALCHEMY_RECIPES.NONE:				exit;
	case ALCHEMY_RECIPES.CRYSTALINE_WATER:	_item_id = 3; break;
	case ALCHEMY_RECIPES.SILVER:			_item_id = 4; break;
	case ALCHEMY_RECIPES.MANDRAGORE:		_item_id = 5; break;
	case ALCHEMY_RECIPES.HEALING_MERCURY:	_item_id = 1; break;
	case ALCHEMY_RECIPES.MOONSTONE:			_item_id = 2; break;
	case ALCHEMY_RECIPES.PHILOSOPHER_STONE: _item_id = 0; break;
}
var _inventory = obj_game.inventory_temp;
var _amount = obj_game.getItemAmount(_inventory, _item_id)
obj_game.setItemAmount(_inventory, _item_id, _amount + 5);

// Start success animation

// Go to potion map room
room_goto(rm_recipe_book);

