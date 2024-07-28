/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.3;
image_yscale = 0.3;
start_xscale = image_xscale;
start_yscale = image_yscale;
step = 0;

pickUp = false;

function findSprite(item) {
	switch (item) {
		case 0:
			return spr_philosopher_stone;
		case 1:
			return spr_mercury;
		case 2:
			return spr_moonstone;
		case 3:
			return spr_crystalline_water;
		case 4:
			return spr_silver
		case 5:
			return spr_mandragore;
		case 6:
			return spr_star_dust;
		case 7:
			return spr_liquid_ice;
		case 8:
			return spr_lucilum_fungus;
		case 9:
			return spr_comet_shard;
		case 10:
			return spr_dragons_tongue;
		case 11:
			return spr_flame_berry;
		case 12:
			return spr_drought_mimicry;
		default:
			return spr_error;
	}
}

sprite_index = findSprite(item_id);
