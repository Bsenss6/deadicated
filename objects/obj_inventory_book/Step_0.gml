/// @description Insert description here
// You can write your code in this editor
//item_drawn_amount div items_per_page;
for (i = 1; i < obj_game.inventory_length; i++) {
	if (obj_game.getItemAmount(obj_game.inventory_amounts, i) > 0 && item_drawn_amount <= different_item) {
		with (instance_create_layer(x,y,"Instances", obj_inventory_item)) {
			item_id = obj_inventory_book.i;
			if (((obj_inventory_book.current_page) * obj_inventory_book.items_per_page < obj_inventory_book.item_drawn_amount) 
				&& (obj_inventory_book.item_drawn_amount <= (obj_inventory_book.current_page + 1) * obj_inventory_book.items_per_page)) {
				image_alpha = 1;
				x = obj_inventory_book.left_x;
				y = obj_inventory_book.first_y + obj_inventory_book.item_y_step * ((obj_inventory_book.item_drawn_amount - 1) % obj_inventory_book.items_per_page);
				image_xscale = 0.75;
				image_yscale = 0.75;
				obj_inventory_book.item_drawn_amount++;
			} else {
				obj_inventory_book.item_drawn_amount++;
				instance_destroy();
			}
		}
	}
}
