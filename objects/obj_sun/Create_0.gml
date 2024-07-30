/// @description Insert description here
// You can write your code in this editor

enum sun_mode {
	smooth,
	steps,
	movement_controlled
}


rad = custom_rad; //0 to 2pi
rad_step = sun_speed; //steps of the sun
sun_ready = true;
path_radius = 64;
sleep_time = 0.5;


mode = sun_mode.movement_controlled;