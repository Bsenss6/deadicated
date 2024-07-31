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

sprite_index = findSprite(item_id);