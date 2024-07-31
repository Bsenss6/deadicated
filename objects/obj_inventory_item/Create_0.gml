/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;

function findSprite(item) {
	switch (item) {
		case 0:
			return spr_philosopher_stone;
		case 1:
			return spr_inv_mercury;
		case 2:
			return spr_inv_moonstone;
		case 3:
			return spr_inv_crystalline_water;
		case 4:
			return spr_inv_silver
		case 5:
			return spr_inv_mandragore;
		case 6:
			return spr_inv_star_dust;
		case 7:
			return spr_inv_liquid_ice;
		case 8:
			return spr_inv_lucilum_fungus;
		case 9:
			return spr_inv_comet_shard;
		case 10:
			return spr_inv_dragons_tongue;
		case 11:
			return spr_inv_flame_berry;
		case 12:
			return spr_inv_drought_mimicry;
		default:
			return spr_error;
	}
}

function findObject(item) {
	switch (item) {
		case 1:
			return obj_ingr_mercury;
		case 2:
			return obj_ingr_moonstone;
		case 3:
			return obj_ingr_water;
		case 4:
			return obj_ingr_silver;
		case 5:
			return obj_ingr_mandragore;
		case 6:
			return obj_ingr_stardust;
		case 7:
			return obj_ingr_ice;
		case 8:
			return obj_ingr_fungus;
		case 9:
			return obj_ingr_comet;
		case 10:
			return obj_ingr_dragon;
		case 11:
			return obj_ingr_flame;
		case 12:
			return obj_ingr_mimicry;
	}
}

/// @description Returns the cell-coordinates (0, 1, 2, etc.) of the first non-zero cell.
function find_first_non_empty_cell(_cells) {
	for (var _j = 0; _j < array_length(_cells); _j++) {
		for (var _i = 0; _i < array_length(_cells[_j]); ++_i) {
		    if (_cells[_j][_i] != 0) {
				return { _x: _i, _y: _j };
			}
		}
	}

	return { _x: -1, _y: -1 };
}

sprite_index = findSprite(item_id);
