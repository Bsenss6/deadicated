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