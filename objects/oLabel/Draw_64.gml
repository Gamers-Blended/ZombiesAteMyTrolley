/// @description Draws stage level

//draw_sprite(sTimerBox,0,x,y);
draw_set_font(FontLevel);
draw_set_color(c_black);
draw_text(x,y,"Stage "+string(value));