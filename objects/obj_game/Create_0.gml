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
