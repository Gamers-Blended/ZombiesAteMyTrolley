/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_h = 64;

// buttons
button[0] = "Start Game";
button[1] = "Instructions";
button[2] = "Credits";
button[3] = "Quit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

is_in_menu = true;

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;

// Stop normal BGM
if (audio_is_playing(BGM)) {
	audio_stop_sound(BGM);	
}
// Stop fast BGM
if (audio_is_playing(BGM_fast)) {
	audio_stop_sound(BGM_fast);
}