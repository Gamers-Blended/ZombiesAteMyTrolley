/// @description Insert description here
// You can write your code in this editor

menu_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

if (menu_index != last_selected && page_index != 2) audio_play_sound(snd_menu_switch, 1, false);

last_selected = menu_index;
