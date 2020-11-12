/// @description Insert description here
// You can write your code in this editor
if (is_in_menu && isPressable) {
	switch(menu_index) {
		case 0:
			// Resume
			oGame.paused = false;
			
			// oGame Stuff
			instance_activate_all();
	        surface_free(oGame.paused_surf);
            oGame.paused_surf = -1;
			
			instance_destroy();
			break;
		case 1:
			instance_create_layer(room_width/2, room_height/2-40, "Instructions", oInstructionsPage);
			is_in_menu = false;
			break;
		case 2:
			audio_stop_sound(BGM);
			room_goto(Menu);
			break;
	}
}