/// @description Insert description here
// You can write your code in this editor

if (isPressable) {
	audio_play_sound(menuEnter, 1, false);
	room_goto(Menu);
	
	// Prevent key spam
	isPressable = false;
	alarm[0] = buttonDelay;

}
