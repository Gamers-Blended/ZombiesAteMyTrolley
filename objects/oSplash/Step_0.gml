/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord(vk_enter)))
{
	room_goto_next();
}


if (inTime > 0) {
	inTime=inTime-delta_time/1000000
} else if (inTime < 0) {
	room_goto_next();
}