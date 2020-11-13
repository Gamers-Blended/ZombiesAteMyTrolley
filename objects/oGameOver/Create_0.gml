/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_h = 64;

title = "GAME OVER"
title_h = 64;

// buttons
button[0] = "Retry";
button[1] = "Return to Main Menu";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;

if (audio_is_playing(BGM)) {
	audio_stop_sound(BGM);	
}
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