/// @description Insert description here
// You can write your code in this editor
items_per_page = 3
item_y_step = 250;
left_x = 1444;
first_y = 200;
different_item = obj_game.getDifferentItems(obj_game.inventory_amounts);
page_total = different_item div items_per_page;
print(different_item);
print(page_total);
current_page = 0;

first_item_drawn = -1;
second_item_drawn = -1;
item_drawn_amount = 0;
item_check_amount = 0;
i = 1



if (different_item == 0) {
	draw_set_font(fnt_main);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x, y,"Your inventory is empty, go gather some resources!", 0.4, 0.4, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

 function resetDrawAmount() {
	item_drawn_amount = 0;
	i = 1
	instance_destroy(obj_inventory_item);
 }

