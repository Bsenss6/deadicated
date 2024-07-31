/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (isNext) {
	if (obj_inventory_book.current_page < obj_inventory_book.page_total - 1) {
		obj_inventory_book.current_page++;	
		obj_inventory_book.resetDrawAmount();
	}
} else {
	if (obj_inventory_book.current_page > 0) {
		obj_inventory_book.current_page--;
		obj_inventory_book.resetDrawAmount();
	}
}
