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

time_width = sprite_get_width(sBorder);
time_height = sprite_get_height(sBorder);
time_x = (room_width/2);
time_y = 50;
timer_margin = 30;

bar_width = time_width - timer_margin;
bar_x = time_x-bar_width/2;
bar_y = time_y*3/4;

clock_displacement = time_width + sprite_get_width(sClock)/2;

//bgm = BGM;

if (global.level != 13) {
	// Play BGM
	if (!audio_is_playing(BGM)) {
		audio_play_sound(BGM, 1, true);
	}

	// Stop fast BGM
	if (audio_is_playing(BGM_fast)) {
		audio_stop_sound(BGM_fast);
	}
} else {
	// Play BGM
	if (!audio_is_playing(BGM_BOSS)) {
		audio_play_sound(BGM_BOSS, 1, true);
	}
	
	// Stop fast BGM
	if (audio_is_playing(BGM_BOSS_FAST)) {
		audio_stop_sound(BGM_BOSS_FAST);
	}
}