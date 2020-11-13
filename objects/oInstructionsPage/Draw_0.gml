/// @description Insert description here
// You can write your code in this editor

// Draw Background
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Draw Images
switch(page_index) {
  case 0:
    draw_sprite(sInstr1, 0, x, y);
    break;
  case 1:
    draw_sprite(sInstr2, 0, x, y);
    break;
  case 2:
    draw_sprite(sInstr3, 0, x, y);
    break;
  case 3:
	draw_sprite(sInstr4, 0, x, y);
	break;
  case 4:
    draw_sprite(sInstr5, 0, x, y);
    break;

}

// Draw text

// On last page, don't have 'next' option
/*if (page_index == 2) {
  buttons = 1;
} else {
  buttons = array_length_1d(button);
}*/

var i = 0;
repeat(buttons) {
  draw_set_font(font_main_menu);
  draw_set_halign(fa_center);
  draw_set_color(c_gray);
  
  if (menu_index == i) draw_set_color(c_red);
  
  if (i == 1 && page_index == 4) {
    draw_text(menu_x - button_w_gap * 0.5 + button_w_gap * i, menu_y + instr_image_h, returnButton);
  } else {
    draw_text(menu_x - button_w_gap * 0.5 + button_w_gap * i, menu_y + instr_image_h, button[i]);
  }
  i ++;
}