/// @description Insert description here
// You can write your code in this editor
#macro INVENTORY_LENGTH 13

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

inventory_amounts = array_create(INVENTORY_LENGTH, 0);

function isInventoryEmpty() {
	for (var i = 0; i < INVENTORY_LENGTH; i++) {
		if (inventory_amounts[i] != 0)
			return false;
	}
	return true;
}

function getItemAmount(item) {
	return inventory_amounts[item];
}

function setItemAmount(item,amount) {
	inventory_amounts[item] = amount;
}

function addItem(item) {
	inventory_amounts[item]++;
}

function removeItem(item) {
	inventory_amounts[item]--;
}


function resetInventory() {
	for (var i = 0; i < INVENTORY_LENGTH; i++) {
		inventory_amounts[i] = 0;	
	}
}

function isItemPresent(item) {
	return (inventory_amounts[item] != 0?true:false);
}

function intToEnum(num) {
	switch (num) {
		case 0:
			return items.philosopher_stone;
			break;
		case 1:
			return items.mercury;
			break;
		case 2:
			return items.moonstone;
			break;
		case 3:
			return items.crystalline_water;
			break;
		case 4:
			return items.silver;
			break;
		case 5:
			return items.mandragore;
			break;
		case 6:
			return items.star_dust;
			break;
		case 7:
			return items.liquid_ice;
			break;
		case 8:
			return items.lucilum_fungus;
			break;
		case 9:
			return items.comet_shard;
			break;
		case 10:
			return items.dragons_tongue;
			break;
		case 11:
			return items.flame_berry;
			break;
		case 12:
			return items.drought_mimicry;
			break;	
	}
}

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
	}
}

function printInventory() {
	for (var i = 0; i < INVENTORY_LENGTH; i++) {
		print(toString(i), ":", inventory_amounts[i]);
	}
}