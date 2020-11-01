/// @description Insert description here
// You can write your code in this editor

menu_x = room_width/2;
menu_y = room_height/2 - 200;
button_h = 64;

// title
title = "ZOMBIES ATE MY CART!"
title_h = 200;

// buttons
button[0] = "Start Game";
button[1] = "Instructions";
button[2] = "Credits";
button[3] = "Quit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

is_in_menu = true;

// debouncing
isPressable = false;
buttonDelay = 20;
alarm[0] = buttonDelay;