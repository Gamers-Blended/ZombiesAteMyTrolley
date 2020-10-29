/// @description Insert description here
// You can write your code in this editor

if (isPressable) {
	
	room_goto_next();
	
	// Prevent key spam
	isPressable = false;
	alarm[0] = buttonDelay;

}
