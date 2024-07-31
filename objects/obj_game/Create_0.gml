/// @description Insert description here
// You can write your code in this editor
inventory_length = 13;

enum items {
	philosopher_stone,	//0
	mercury,			//1
	moonstone,			//2
	crystalline_water,	//3
	silver,				//4
	mandragore,			//5
	star_dust,			//6
	liquid_ice,			//7
	lucilum_fungus,		//8
	comet_shard,		//9
	dragons_tongue,		//10
	flame_berry,		//11
	drought_mimicry		//12
}

inventory_amounts = array_create(inventory_length, 0);

inventory_temp = array_create(inventory_length, 0);

function copyInventory(src, dest) {
	for (var i = 0; i < inventory_length; i++) {
		dest[i] = src[i];
	}
}

copyInventory(inventory_amounts, inventory_temp);

function isInventoryEmpty(inv) {
	for (var i = 0; i < inventory_length; i++) {
		if (inv[i] != 0)
			return false;
	}
	return true;
}


function getDifferentItems(inv) {
	var amount = 0;
	for (var i = 0; i < inventory_length; i++) {
			if (inv[i] != 0)
				amount++;
	}
	return amount;
}

function getItemAmount(inv, item) {
	return inv[item];
}

function setItemAmount(inv, item,amount) {
	inv[item] = amount;
}

function addItem(inv, item) {
	inv[item]++;
}

function removeItem(inv, item) {
	inv[item]--;
}


function resetInventory(inv) {
	for (var i = 0; i < inventory_length; i++) {
		inv[i] = 0;	
	}
}

function isItemPresent(inv, item) {
	return (inv[item] != 0?true:false);
}

//function intToEnum(num) {
//	switch (num) {
//		case 0:
//			return items.philosopher_stone;
//			break;
//		case 1:
//			return items.mercury;
//			break;
//		case 2:
//			return items.moonstone;
//			break;
//		case 3:
//			return items.crystalline_water;
//			break;
//		case 4:
//			return items.silver;
//			break;
//		case 5:
//			return items.mandragore;
//			break;
//		case 6:
//			return items.star_dust;
//			break;
//		case 7:
//			return items.liquid_ice;
//			break;
//		case 8:
//			return items.lucilum_fungus;
//			break;
//		case 9:
//			return items.comet_shard;
//			break;
//		case 10:
//			return items.dragons_tongue;
//			break;
//		case 11:
//			return items.flame_berry;
//			break;
//		case 12:
//			return items.drought_mimicry;
//			break;	
//	}
//}

function toString(item) {
	switch (item) {
		case 0:
			return "philosopher_stone"
			break;
		case 1:
			return "mercury";
			break;
		case 2:
			return "moonstone";
			break;
		case 3:
			return "crystalline_water";
			break;
		case 4:
			return "silver";
			break;
		case 5:
			return "mandragore";
			break;
		case 6:
			return "star_dust";
			break;
		case 7:
			return "liquid_ice";
			break;
		case 8:
			return "lucilum_fungus";
			break;
		case 9:
			return "comet_shard";
			break;
		case 10:
			return "dragons_tongue";
			break;
		case 11:
			return "flame_berry";
			break;
		case 12:
			return "drought_mimicry";
			break;	
		default:
			print("ERROR: Item out of bound");
	}
}

function printInventory(inv) {
	for (var i = 0; i < inventory_length; i++) {
		print(toString(i), ":", inv[i]);
	}
}

#region Alchemy levels data

stats_names = [
	"Brilliance",
	"Magic",
	"Purity",
	"Life",
	"Richness",
];

enum ALCHEMY_RECIPES {
	NONE,				// 0
	CRYSTALINE_WATER,	// 1
	SILVER,				// 2
	MANDRAGORE,			// 3
	HEALING_MERCURY,	// 4
	MOONSTONE,			// 5
	PHILOSOPHER_STONE,	// 6
}


enum CELL_CONTENT {
	FREE,			// 0
	INVISIBLE,		// 1
	UNAVAILABLE,	// 2
	INGREDIENT,		// 3
}
alchemy_rooms_data = array_create(7);
alchemy_rooms_data[ALCHEMY_RECIPES.NONE] = {
	recipe_name: "",
	stat_targets: [0, 0, 0, 0, 0],
	grid_sprite: noone,
	grid_cells: [[0]],
};
alchemy_rooms_data[ALCHEMY_RECIPES.CRYSTALINE_WATER] = {
	recipe_name: "Crystaline\nWater",
	stat_targets: [0, 4, 2, 0, 4],
	grid_sprite: spr_grid_small,
	ingredient_sprite: spr_crystalline_water,
	grid_cells: [
		[1, 1, 1, 1, 1, 1],
		[1, 0, 0, 2, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 1, 1, 1, 1, 1],
	],
};
alchemy_rooms_data[ALCHEMY_RECIPES.SILVER] = {
	recipe_name: "Silver",
	stat_targets: [2, 0, 2, 0, 4],
	grid_sprite: spr_grid_small,
	ingredient_sprite: spr_silver,
	grid_cells: [
		[1, 1, 1, 1, 1, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 2, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 1, 1, 1, 1, 1],
	],
};
alchemy_rooms_data[ALCHEMY_RECIPES.MANDRAGORE] = {
	recipe_name: "Mandragore",
	stat_targets: [0, 2, 0, 3, 3],
	grid_sprite: spr_grid_small,
	ingredient_sprite: spr_mandragore,
	grid_cells: [
		[1, 1, 1, 1, 1, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 1],
		[1, 1, 1, 1, 1, 1],
	],
};
alchemy_rooms_data[ALCHEMY_RECIPES.HEALING_MERCURY] = {
	recipe_name: "Curing\nMercury",
	stat_targets: [0, 0, 12, 8, 14],
	grid_sprite: spr_grid_large,
	ingredient_sprite: spr_mercury,
	grid_cells: [
		[1, 0, 0, 0, 0, 1],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[1, 0, 0, 0, 0, 1],
	],
};
alchemy_rooms_data[ALCHEMY_RECIPES.MOONSTONE] = {
	recipe_name: "Moonstone",
	stat_targets: [0, 7, 7, 0, 13],
	grid_sprite: spr_grid_large,
	ingredient_sprite: spr_moonstone,
	grid_cells: [
		[1, 0, 0, 0, 0, 1],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[1, 0, 0, 0, 0, 1],
	],
};
alchemy_rooms_data[ALCHEMY_RECIPES.PHILOSOPHER_STONE] = {
	recipe_name: "Philosopher\nStone",
	stat_targets: [10, 12, 0, 0, 16],
	grid_sprite: spr_grid_large,
	ingredient_sprite: spr_philosopher_stone,
	grid_cells: [
		[1, 0, 0, 0, 0, 1],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[0, 0, 0, 0, 0, 0],
		[1, 0, 0, 0, 0, 1],
	],
};

current_alchemy_recipe = ALCHEMY_RECIPES.NONE;

#region Getters for recipe data

function get_recipe_name(_recipe_index) {
	return alchemy_rooms_data[_recipe_index].recipe_name;
}

function get_stat_targets(_recipe_index) {
	return alchemy_rooms_data[_recipe_index].stat_targets;
}

function get_grid_sprite(_recipe_index) {
	return alchemy_rooms_data[_recipe_index].grid_sprite;
}

function get_ingredient_sprite(_recipe_index) {
	return alchemy_rooms_data[_recipe_index].ingredient_sprite;
}

function get_grid_cells(_recipe_index) {
	return alchemy_rooms_data[_recipe_index].grid_cells;
}

function get_current_recipe_id() {
	return current_alchemy_recipe;
}

function get_current_recipe_name() {
	return get_recipe_name(current_alchemy_recipe);
}

function get_current_stat_targets() {
	return get_stat_targets(current_alchemy_recipe);
}

function get_current_grid_sprite() {
	return get_grid_sprite(current_alchemy_recipe);
}

function get_current_ingredient_sprite() {
	return get_ingredient_sprite(current_alchemy_recipe);
}

function get_current_grid_cells() {
	return get_grid_cells(current_alchemy_recipe);
}

#endregion

completed_recipes = array_create(7, false);
unlocked_recipes = array_create(7, false);
unlocked_recipes[ALCHEMY_RECIPES.CRYSTALINE_WATER] = true;
unlocked_recipes[ALCHEMY_RECIPES.SILVER] = true;
unlocked_recipes[ALCHEMY_RECIPES.MANDRAGORE] = true;

#region Accessors for recipe progression

function set_recipe_complete(_recipe_index) {
	if (_recipe_index == ALCHEMY_RECIPES.NONE) {
		return;
	}

	completed_recipes[_recipe_index] = true;

	if (completed_recipes[ALCHEMY_RECIPES.CRYSTALINE_WATER] &&
		completed_recipes[ALCHEMY_RECIPES.SILVER])
	{
		unlocked_recipes[ALCHEMY_RECIPES.MOONSTONE] = true;
	}

	if (completed_recipes[ALCHEMY_RECIPES.SILVER] &&
		completed_recipes[ALCHEMY_RECIPES.MANDRAGORE])
	{
		unlocked_recipes[ALCHEMY_RECIPES.HEALING_MERCURY] = true;
	}

	if (completed_recipes[ALCHEMY_RECIPES.HEALING_MERCURY] &&
		completed_recipes[ALCHEMY_RECIPES.MOONSTONE])
	{
		unlocked_recipes[ALCHEMY_RECIPES.PHILOSOPHER_STONE] = true;
	}
}

function set_current_recipe_complete() {
	set_recipe_complete(current_alchemy_recipe);
}

function is_recipe_completed(_recipe_index) {
	return completed_recipes[_recipe_index];
}

function is_recipe_unlocked(_recipe_index) {
	return unlocked_recipes[_recipe_index];
}

#endregion

#endregion
