// BGM

canChange = true;
if (!audio_is_playing(BGM)) {
	audio_play_sound(BGM, 1, true);
}
