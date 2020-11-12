/// @description Insert description here
// You can write your code in this editor

// Draw Images
draw_sprite(sprite, 0, room_width/2, room_height/2);

// Draw text
draw_set_font(font_main_menu);
draw_set_halign(fa_center);
draw_set_color(c_red);
	
draw_text(menu_x, menu_y + instr_image_h, button);

