/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (isNext) {
	if (obj_inventory_book.current_page >= obj_inventory_book.page_total - 1) {
		image_alpha = 0.2;
	} else {
		image_alpha = 1;
	}
} else {
	if (obj_inventory_book.current_page = 0) {
		image_alpha = 0.2;
	} else {
		image_alpha = 1;
	}
}
