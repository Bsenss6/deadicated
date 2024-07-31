

if (different_item == 0) {
	draw_set_font(fnt_main);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x, y,"Your inventory is empty, go gather some resources!", 0.4, 0.4, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

 
for (var i = 1; i < obj_game.inventory_length; i++) {
	if (obj_game.getItemAmount(obj_game.inventory_amounts, i) > 0 && item_drawn_amount < items_per_page) {
		with (instance_create_layer(x,y,"Instances", obj_inventory_item)) { 
			item_id = i;
				print("Drawing");
				obj_inventory_book.item_drawn_amount++;
				sprite_index = findSprite(item_id);
				x = obj_inventory_book.left_x;
				y = obj_inventory_book.first_y + obj_inventory_book.item_y_step * (obj_inventory_book.item_drawn_amount - 1);
				image_xscale = 0.75;
				image_yscale = 0.75;
			
				//draw_sprite_ext(findSprite(item_id), 0,
				//				256,
				//				obj_inventory_book.isFirstItem?obj_inventory_book.first_y:obj_inventory_book.second_y,
				//				0.5, 0.5,
				//				0,
				//				c_white,
				//				1);
			
				if (obj_inventory_book.isFirstItem) {
					obj_inventory_book.first_item_drawn = item_id;
					obj_inventory_book.isFirstItem = false;
				} else {
					obj_inventory_book.second_item_drawn = item_id;
					obj_inventory_book.isFirstItem = true;
				}
		}
	}
}
