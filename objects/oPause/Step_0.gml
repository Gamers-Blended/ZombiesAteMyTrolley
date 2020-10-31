/// @description Insert description here
// You can write your code in this editor

if (is_in_menu) {
	
	menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

	menu_index += menu_move;

	if (menu_index < 0) menu_index = buttons - 1;
	if (menu_index > buttons - 1) menu_index = 0;

	if (menu_index != last_selected) audio_play_sound(snd_menu_switch, 1, false);

	last_selected = menu_index;

}