/// @description Insert description here
// You can write your code in this editor

text_x = room_width / 2;
text_y = room_height / 2 - 100;
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(text_x, text_y, "Use WASD to navigate;");
text_x = room_width / 2;
text_y = room_height / 2;
draw_text(text_x, text_y, "Use F to interact;");
text_x = room_width / 2;
text_y = room_height / 2 + 100;
draw_text(text_x, text_y, "Use right-click while dragging puzzle pieces to rotate.");
