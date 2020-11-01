/// @description Insert description here
// You can write your code in this editor

switch(menu_index) {
	case 0:
		//room_goto(Instruction1);
		room_goto(Room1);
		break;
	case 1:
		room_goto(InstructionsPage);
		break;
	case 3:
		game_end();
		break;
}