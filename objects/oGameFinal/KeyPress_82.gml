/// @description Insert description here
// You can write your code in this editor
if (global.level == 0)
{
	SlideTransition(TRANS_MODE.RESTART);
}
if (global.level == 1)
{
	SlideTransition(TRANS_MODE.GOTO, Room1);
}

else if (global.level == 2)
{
	SlideTransition(TRANS_MODE.GOTO, Room2);
}

else if (global.level == 3)
{
	SlideTransition(TRANS_MODE.GOTO, Room3);
}