/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_h = 64;

title = "GAME OVER"
title_h = 64;

// buttons
button[0] = "Retry";
button[1] = "Return to Main Menu";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;