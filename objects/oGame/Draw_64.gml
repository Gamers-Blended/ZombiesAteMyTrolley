/// @description Draws Undo Bar
if (!paused) {
	draw_sprite(sBorder,0,time_x,time_y);
	draw_sprite_stretched(sTimeBar,0,time_x,time_y, (inTime/inTime_max)*time_width, time_height);
}