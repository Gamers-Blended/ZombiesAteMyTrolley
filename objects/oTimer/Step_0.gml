/// @description Timer + summons game over

if (global.myTime > 0) {
	global.myTime=global.myTime-delta_time/1000000
} else if (global.myTime < 0) {
	global.myTime = 0;
} else if (global.myTime == 0) {
	
	// Death Event to only run once
	if (isAlive) {
		isAlive = false;
		instance_deactivate_all(true);
		instance_create_layer(room_width/2, room_height/2, "Menu", oGameOver);
	}
	
	//room_goto(GameOver);
}