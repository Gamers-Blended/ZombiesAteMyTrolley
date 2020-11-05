/// @description Insert description here
// You can write your code in this editor

var i = 0;
repeat(buttons) {
	draw_set_font(font_main_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i ++;
}

//draw_sprite_ext(sMenuBox,0,x,y+64,0.7,0.7,0,c_white,0.8);