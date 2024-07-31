/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (isNext) {
	if (obj_inventory_book.current_page < obj_inventory_book.page_total) {
		obj_inventory_book.current_page++;	
	}
} else {
	if (obj_inventory_book.current_page < 0) {
		obj_inventory_book.current_page--;
	}
}
