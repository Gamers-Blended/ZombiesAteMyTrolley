/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oEffectRice) {
	isTouchingRice = true;
} else {
	isTouchingRice = false;
}

if (isTouchingRice) {
	walksp = original_walksp * rice_reducer_multiplier;
} else {
	walksp = original_walksp;
}