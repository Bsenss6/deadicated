/// @description Insert description here
// You can write your code in this editor
y_scale = 10000;
x_scale = image_xscale;

with (instance_create_layer(x,y,"Instances", obj_shadow_block)) {
	image_xscale = obj_object_parent.sprite_width / sprite_width;
	image_yscale = 10000;
}