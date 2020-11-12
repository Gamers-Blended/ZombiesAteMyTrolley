global.levelGrv = 0.3;

/*
if (room == Room1)
{
	global.level = 1;
}

else if (room == Room2)
{
	global.level = 2;
}
else if (room == Room3)
{
	global.level = 3;
}
else if (room == Room4)
{
	global.level = 4;
}	
else if (room == Room5)
{
	global.level = 5;
}
else if (room == Room6)
{
	global.level = 6;
}
else if (room == Room7)
{
	global.level = 7;
}
else if (room == Room8)
{
	global.level = 8;
}
else if (room == Room9)
{
	global.level = 9;
}
*/

global.gamePause = false;

paused = false;
paused_surf = -1;
isAlive = true;

// Undo Timer
inTime_max = 10;
inTime = inTime_max;

time_width = 500;
time_height = 36;
time_x = (2500/2) - (time_width/2);
//time_x = (2500/2) - (time_width/2); // middle
time_y = 20;

//bgm = BGM;

// Play BGM
if (!audio_is_playing(BGM)) {
	audio_play_sound(BGM, 1, true);
}