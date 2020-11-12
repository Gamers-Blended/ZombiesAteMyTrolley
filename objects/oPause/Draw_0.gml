/// @description Insert description here
// You can write your code in this editor

// Draw Background
draw_set_color(c_black);
draw_sprite(sPause, 0,room_width/2,room_height/2);

// Draw title
draw_set_font(font_main_menu);
draw_set_halign(fa_center);
//draw_set_color(c_white);
draw_set_color(c_black);
draw_text(menu_x, menu_y, title);

// Draw buttons
var i = 0;
repeat(buttons) {
	draw_set_font(font_main_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text(menu_x, menu_y + title_h + button_h * i, button[i]);
	i ++;
}