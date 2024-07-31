
function set_music_ingame( _music, _fadeOutCurrentMusic = 0, _fadeIn = 0)
{
	//music = set to any music (including "noone" to stop or fade the track out
	//_fadeOutCurrentMusic = time (in frames) the current music (if playing) will take to fade out
	//_fadeIn = time (in frames) the target music (if not "noone") will take to fade in
	
	with( oMusicManager){
		targetMusicAsset = _music;
		endFadeOutTime = _fadeOutCurrentMusic;
		startFadeinTime = _fadeIn;

}
}