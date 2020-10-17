/// @description draw black bars on the screen

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	// top to half of screen
	draw_rectangle(0,0,w,percent*h_half,false);
	// bottom to half of screen
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}

// debug
//draw_set_color(c_white);
//draw_text(50,50,string(percent));