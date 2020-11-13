/// @description Draws Undo Bar

if (!paused) {
	draw_sprite(sBorder,0,time_x,time_y);
	draw_sprite_stretched(sTimeBar,0,bar_x,bar_y, (inTime/inTime_max)*bar_width, time_height/2);
	draw_sprite(sClock,0,time_x-clock_displacement,time_y);

	// Time Left Text
	draw_set_font(FontLevel);
	draw_set_color(c_black);
	draw_text(time_x,bar_y,"REWIND");

}