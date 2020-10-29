/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_w_gap = 1000;
instr_image_h = 450;
button_h_gap = 200;

// buttons
button[0] = "Back";
button[1] = "Next";
buttons = array_length_1d(button);

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;

menu_index = 0;
last_selected = 0;

page_index = 0;