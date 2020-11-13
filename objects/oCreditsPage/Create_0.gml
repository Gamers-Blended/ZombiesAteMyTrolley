/// @description Insert description here
// You can write your code in this editor

menu_x = room_width/2;
menu_y = room_height/2;
button_w_gap = 1000;

instr_image_h = 400;
button_h_gap = 200;

// buttons
button[0] = "Back Page";
button[1] = "Next Page";
buttons = array_length_1d(button);
returnButton = "Close Credits";

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;

menu_index = 0;
last_selected = 0;

page_index = 0;