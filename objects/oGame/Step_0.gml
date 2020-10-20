/// @description Insert description here

if (global.gamePause)
{
	switch (global.gamePause) {
	 	case false: instance_deactivate_layer("Instances"); global.gamePause = true; break;
		case true: instance_activate_layer("Instances"); global.gamePause = false; break;
	}
}