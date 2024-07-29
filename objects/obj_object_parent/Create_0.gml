/// @description Insert description here
// You can write your code in this editor
//#macro RAYS_AMOUNTS 2
//for (var i = 0; i < RAYS_AMOUNTS; i++) {
//	for (var j = 0; j < RAYS_AMOUNTS; j++) {
//		with (instance_create_layer(x,y,"Instances", obj_shadow_block)) {
//			image_xscale = (obj_object_parent.sprite_width / sprite_width)/RAYS_AMOUNTS;
//			image_yscale = 10000;
//			x -= obj_object_parent.sprite_xoffset *i;
//			y -= obj_object_parent.sprite_yoffset *j;
//		}
//	}
//}
with (instance_create_layer(x,y,"Instances", obj_shadow_block)) {
	image_xscale = (obj_object_parent.sprite_width / sprite_width);
	image_yscale = 10000;
}