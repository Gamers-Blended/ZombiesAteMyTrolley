/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

button = "Back to Main Menu :)";
sprite = sEnd;

// Stop normal BGM
if (audio_is_playing(BGM)) {
	audio_stop_sound(BGM);	
}
// Stop fast BGM
if (audio_is_playing(BGM_fast)) {
	audio_stop_sound(BGM_fast);
}

// Stop Boss BGM
if (audio_is_playing(BGM_BOSS)) {
	audio_stop_sound(BGM_BOSS);
}

// Stop Boss fast BGM
if (audio_is_playing(BGM_BOSS_FAST)) {
	audio_stop_sound(BGM_BOSS_FAST);
}