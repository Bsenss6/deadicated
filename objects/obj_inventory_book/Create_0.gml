/// @description Insert description here
// You can write your code in this editor
items_per_page = 3
item_y_step = 250;
left_x = 1444;
first_y = 200;
different_item = obj_game.getDifferentItems(obj_game.inventory_amounts);
page_total = (different_item - (different_item % 2))/2
current_page = 0;
isFirstItem = true;

first_item_drawn = -1;
second_item_drawn = -1;
item_drawn_amount = 0;