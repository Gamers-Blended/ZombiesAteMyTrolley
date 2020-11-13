/// @description Insert description here
// You can write your code in this editor
if (is_in_menu && isPressable) {
	audio_play_sound(menuEnter, 1, false);
	
	switch(menu_index) {
		case 0:
			//room_goto(Instruction1);
			room_goto(NewItemChips);
			break;
		case 1:
			//room_goto(InstructionsPage);
			instance_create_layer(room_width/2, room_height/2, "Instructions", oInstructionsPage);
			is_in_menu = false;
			break;
		case 2:
			room_goto(Credits);
			break;
		case 3:
			game_end();
			break;
	}
}