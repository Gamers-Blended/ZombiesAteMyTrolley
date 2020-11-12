/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_w_gap = 1000;
instr_image_h = 450;

// buttons
button = "Press ENTER to continue";

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;

sprite = pointer_null;

if (audio_is_playing(BGM)) {
	audio_stop_sound(BGM);	
}