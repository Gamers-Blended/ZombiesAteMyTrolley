/// @description Draws stage level

//draw_sprite(sTimerBox,0,x,y);
draw_set_font(FontLevel);
if (value != 13) {
	draw_set_color(c_black);
	draw_text(x,y-10,"Stage "+string(value));
} else {
	draw_set_color(c_red);
	draw_text(x,y-10,"FINAL STAGE");
}

draw_set_color(c_black);
draw_sprite(Skey,0,x+1400,y+10);
draw_text(x+1400,y-10,"Esc");
draw_text(x+1500,y-10,"Pause");

draw_sprite(Skey,0,x+1400,y+80);
draw_text(x+1400,y+60,"R");
draw_text(x+1500,y+60,"Restart");
