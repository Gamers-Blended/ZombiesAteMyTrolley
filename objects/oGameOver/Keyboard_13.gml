/// @description Insert description here
// You can write your code in this editor
if (isPressable) {
	audio_play_sound(menuEnter, 1, false);
	switch(menu_index) {
		case 0:
			// Restart Room
			room_restart();
			break;
		case 1:
			room_goto(Menu);
			break;
	}
}