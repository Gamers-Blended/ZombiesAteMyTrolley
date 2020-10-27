/// @description Insert description here

draw_sprite(sTimerBox,0,x,y);
draw_set_font(Font1);
draw_set_color(c_black);
draw_text(x,y-10,"Time Left:");


draw_set_font(FontTime);
draw_set_color(c_black);
draw_text(x,y+10,string(myTime))
