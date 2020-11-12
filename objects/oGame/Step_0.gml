/// @description Insert description here

if (global.gamePause)
{
	switch (global.gamePause) {
	 	case false: instance_deactivate_layer("Instances"); global.gamePause = true; break;
		case true: instance_activate_layer("Instances"); global.gamePause = false; break;
	}
}

if (isAlive && keyboard_check_pressed(vk_escape)) 
{
    paused = true; // Not a toggle to simplify things
    
	if (paused == false)
        {
	        instance_activate_all();
	        surface_free(paused_surf);
            paused_surf = -1;
        }
}

// Undo Time
if (inTime > 0 && !paused) {
	inTime=inTime-delta_time/1000000
} else if (inTime < 0) {
	inTime = 0;
} else if (inTime == 0) {
	// Reset time bar
	inTime = inTime_max;
}

// BGM
if (!audio_is_playing(BGM_fast)) {
	if (global.myTime < 30) {
		audio_stop_sound(BGM);
		audio_play_sound(BGM_fast, 1000, true);
	}
}