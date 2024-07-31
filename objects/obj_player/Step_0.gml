if (player_death) {
	move_x = 0;
	move_y = 0;
	sprite_index = spr_player_death;
	
} else {	//Determine if the player is going (right or left) or/and (up or down)
	
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	

	if (move_x != 0 || move_y != 0) {
		//audio_play_sound(SFX_Cat_FS, 0, false);
		if (sign(move_y) == sign(-1)) {
			sprite_index = spr_walk_up;
		} else if (sign(move_y) == sign(1)) {
			sprite_index = spr_walk_down ;
		} else {
			sprite_index = spr_player_walk; 
		}
	} else {
		sprite_index = spr_player_idle;
	}
	
	//Set the direction that the player is facing depending on the input
	if (move_x != 0) image_xscale = player_scaling * sign(-move_x/abs(move_x));
 
	//Setup the movement of the player
	move_x *= move_speed;
	move_y *= move_speed;
	//if (place_meeting(x,y,obj_shadow_block)) {
	//	print("In shadow");
	
	//} else {
	//	print("Not in shadow");
	
	//}
	if (!place_meeting(x,y,obj_shadow_block) && !invincible) {
		//print("Not in shadow");
		player_death = true;
	}
	
	if (player_death == true && !audio_is_playing(SFX_Dead || SFX_Dead_2)){
		audio_play_sound(choose(SFX_Dead, SFX_Dead_2), 1, false, 0.5, 0, random_range(0.8, 1.2));
	}
	//Move the player and check for collision
	move_and_collide(move_x, move_y, obj_obstacle_parent);
	
	
	
}