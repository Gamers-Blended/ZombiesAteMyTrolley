/// @description GUI/Vars/Menu setup
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);
//gui_width = display_get_gui_width();
//gui_height = display_get_gui_height();
gui_width = RES_W;
gui_height = RES_H;
gui_margin = 32;

menu_x = gui_width+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; // lower is faster
menu_font = fMenu;

menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[0] = "Start Game! :)";

menu_items = array_length_1d(menu);
menu_cursor = 0;