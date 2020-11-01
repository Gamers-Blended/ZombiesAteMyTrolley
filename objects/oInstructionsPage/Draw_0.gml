/// @description Insert description here
// You can write your code in this editor

var i = 0;

// Draw Images
switch(page_index) {
	case 0:
		draw_sprite(sInstrNarrative, 0, x, y);
		break;
	case 1:
		draw_sprite(sInstrInstructions, 0, x, y);
		break;
	case 2:
		draw_sprite(sInstrNotes, 0, x, y);
		break;
}

// Draw text

// On last page, don't have 'next' option
if (page_index == 2) {
	buttons = 1;
} else {
	buttons = array_length_1d(button);
}

repeat(buttons) {
	draw_set_font(font_main_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text(menu_x - button_w_gap * 0.5 + button_w_gap * i, menu_y + instr_image_h, button[i]);
	
	i ++;
}

