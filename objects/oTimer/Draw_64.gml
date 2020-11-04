/// @description Draws countdown

if (isAlive) {
	// Text box
	draw_sprite(sTimerBox,0,x,y);
	
	// Time Left Text
	draw_set_font(FontTime1);
	draw_set_color(c_black);
	draw_text(x-65,y-30,"Time Left:");

	// Time left
	draw_set_font(FontTime2);
	draw_set_color(c_black);
	draw_text(x-55,y,string(global.myTime))
}