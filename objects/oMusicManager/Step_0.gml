var _finalVol = global.musicVolume*global.masterVolume;

///Play the target music
if (musicAsset != targetMusicAsset) {
	
	//Tell the old music to fade out
	if audio_is_playing(musicInstance){
		//add musicInstance to our array of songs to fade out
		array_push(fadeOutInstances, musicInstance)
		//add musicInstance<s starting volume (so there's no abrupt change in volume)
		array_push(fadeOutInstVol, fadeInInstVol);
		//add the fadeOutInstances's fade out frames
		array_push(fadeOutInstTime, endFadeOutTime);
		
		//reset the musicInstance and musicAsset variables
	    musicInstance = noone;
		musicAsset = noone;
	}
	
	
	//Play the music, if the old music has faded out
	if (array_length(fadeOutInstances) == 0) {
		
		if audio_exists(targetMusicAsset) {
		//Play the music and store it<s instance in a variable
		musicInstance = audio_play_sound(targetMusicAsset, 0, true);
	
		audio_sound_gain(musicInstance, 0, 0);
		fadeInInstVol = 0;
		}
		//Set the musicAsset to match the targetMusicAsset
		musicAsset = targetMusicAsset;
	
	}
}




	//Volume Control
	//Main Music Volume
if audio_is_playing(musicInstance){
	//Fade the music in
	if startFadeinTime > 0{
		if fadeInInstVol < 1 { 
			fadeInInstVol +=1/startFadeinTime; 
		} else {
			fadeInInstVol = 1;
		}
	} else { //Start music if the fade in time is 0 frame
		fadeInInstVol = 1;
	}
	//set the gain
	audio_sound_gain(musicInstance, fadeInInstVol*global.musicVolume, 0);
}
	
	
//Fading musics out
for (var i = 0; i < array_length(fadeOutInstances); i++){
	//Fade the volume
	if fadeOutInstTime[i] > 0 {
		if fadeOutInstVol[i] > 0 {
			fadeOutInstVol[i] -= 1/fadeOutInstTime;
		}
		//Cut volume to 0 otherwise
	} else {
		fadeOutInstVol[i] = 0;
	}
	//actually set the gain
	audio_sound_gain(fadeOutInstances[i], fadeOutInstVol[i]*-_finalVol, 0);
	
	//Stop the music when it's volume is at 0 and remove from all arrays
	if (fadeOutInstVol[i] <= 0) {
		// stop the music
		if (audio_is_playing(fadeOutInstances[i])) {
			audio_stop_sound(fadeOutInstances[i]);
		}
		//remove it from the arrays
		array_delete(fadeOutInstances, i, 1);
		array_delete(fadeOutInstVol, i, 1);
		array_delete(fadeOutInstTime, i, 1);
		//set the loop back 1 since we just delete an entry
		i--;
	}
}
