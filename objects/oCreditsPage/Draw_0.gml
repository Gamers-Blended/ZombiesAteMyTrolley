/// @description Insert description here
// You can write your code in this editor

// Draw Background
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Draw Images
switch(page_index) {
  case 0:
    draw_sprite(sCredits, 0, menu_x, menu_y);
    break;
  case 1:
    draw_sprite(sCredits2, 0, menu_x, menu_y);
    break;
}

// Draw text
var i = 0;
repeat(buttons) {
  draw_set_font(font_main_menu);
  draw_set_halign(fa_center);
  draw_set_color(c_gray);
  
  if (menu_index == i) draw_set_color(c_red);
  
  if (i == 1 && page_index == 1) {
    draw_text(menu_x - button_w_gap * 0.5 + button_w_gap * i, menu_y + instr_image_h, returnButton);
  } else {
    draw_text(menu_x - button_w_gap * 0.5 + button_w_gap * i, menu_y + instr_image_h, button[i]);
  }
  i ++;
}