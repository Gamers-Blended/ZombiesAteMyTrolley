/// @description Insert description here
// You can write your code in this editor
if (is_in_menu && isPressable) {
	audio_play_sound(menuEnter, 1, false);
	switch(menu_index) {
		case 0:
			// Resume
			oGame.paused = false;
			
			//if (audio_is_paused(BGM)) {
		//		audio_resume_sound(BGM);
		//	} else if (audio_is_paused(BGM_fast)) {
		//		audio_resume_sound(BGM_fast);
		//	}
			
			audio_resume_sound(BGM);
			audio_resume_sound(BGM_fast);
			
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