/// @description Draws countdown

draw_sprite(sTimerBox,0,x,y);
draw_set_font(FontTime1);
draw_set_color(c_black);
draw_text(x,y-30,"Time Left:");


draw_set_font(FontTime2);
draw_set_color(c_black);
draw_text(x,y,string(myTime))
