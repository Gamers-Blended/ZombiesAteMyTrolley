/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();

// Grow top and bottom rectangles till they reach the middle
h_half = h*0.5;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1; // bet 0 & 1, how complete the black bars shd be
target = room;