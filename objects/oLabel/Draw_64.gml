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
draw_text(x+1400,y-10,"Press ESC to Pause!");
draw_text(x+1400,y-50,"Press R to Restart!");