/// @description Insert description here
// You can write your code in this editor
isCollision = false;
text_surface = surface_create(room_width, room_height);
with (instance_create_layer(x,y,"Instances", obj_shadow_block)) {
	isRotated = false;
	image_xscale = obj_interact_parent.sprite_width / sprite_width;
	image_yscale = obj_interact_parent.sprite_height / sprite_height;
	y += sprite_yoffset/2;
	image_alpha = 0;
}