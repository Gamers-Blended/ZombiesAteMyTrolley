/// @description Insert description here
// You can write your code in this editor
if (isPressable) {
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