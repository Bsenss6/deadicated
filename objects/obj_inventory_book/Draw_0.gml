/// @description Insert description here
// You can write your code in this editor
var last_item_drawn = -1;
var item_drawn_amount = 0;

for (var i = 1; i < obj_game.inventory_length; i++) {
	with (obj_inventory_item) { 
		if (obj_game.getItemAmount(obj_game.inventory_amounts, i) > 0) {
			draw_sprite_ext(findSprite(item_id), 0,
							isFirstItem?first_y:second_y, 256, 
							image_xscale, image_yscale, 
							0, 
							c_white, 
							image_alpha);	
		}
		if (isFirstItem) isFirstItem = false;
		else			 isFirstItem = true;
	}
}
