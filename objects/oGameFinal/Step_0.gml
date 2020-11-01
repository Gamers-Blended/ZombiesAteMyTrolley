/// @description Insert description here

if (global.gamePause)
{
	switch (global.gamePause) {
	 	case false: instance_deactivate_layer("Instances"); global.gamePause = true; break;
		case true: instance_activate_layer("Instances"); global.gamePause = false; break;
	}
}

// Teleport back
if (inTime > 0) {
	inTime=inTime-delta_time/1000000
} else if (inTime < 0) {
	inTime = 0;
} else if (inTime == 0) {
	inTime = 10;
}



