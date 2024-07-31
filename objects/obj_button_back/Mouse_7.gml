/// @description Go back to room room_id

// Inherit the parent event
event_inherited();

room_goto(room_id);

audio_play_sound(SFX_UI_Back, 0, false, 0.8);