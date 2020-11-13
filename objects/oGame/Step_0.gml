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
if (global.level != 13 && !audio_is_playing(BGM_fast)) {
	if (global.myTime < 30) {
		audio_stop_sound(BGM);
		audio_play_sound(BGM_fast, 1000, true);
	}
} else if (global.level == 13 && !audio_is_playing(BGM_BOSS_FAST)) {
	if (global.myTime < 30) {
		audio_stop_sound(BGM_BOSS);
		audio_play_sound(BGM_BOSS_FAST, 1000, true);
	}
}


// Transition
/// @description Check condition to move to next room
var levelcleared = false;

var totalcount = 0;
		
//var levelcleared = true;
 var len = ds_list_size(global.ShopListItems);
 for (var i = 0; i < len; i++)
 {
	 var shop_key = ds_list_find_value(global.ShopListItems, i);
	 var shop_value = ds_map_find_value(global.shopList, shop_key);
	 // number of outstanding items on shopping list
	 totalcount += shop_value;
}

// If outstanding number = 0, can advance
if (totalcount == 0)
{
	levelcleared = true;
}
else
{
	levelcleared = false;
}
		
if (levelcleared) and (global.level != 15)
{
	audio_play_sound(Level_Transition, 1, false);
	room_goto_next();
}
else if (levelcleared) and (global.level == 15)
{
	room_goto(Clear);
}
