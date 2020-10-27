global.levelGrv = 0.3;

if (room == Room0)
{
	global.level = 0;
}

else if (room == Room1)
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

global.gamePause = false;

// 10 seconds time
inTime_max = 10;
inTime = 10;

time_width = 500;
time_height = 36;
time_x = (2500/2) - (time_width/2);
//time_x = (2500/2) - (time_width/2); // middle
time_y = 35;