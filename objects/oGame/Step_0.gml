// Retart game
if keyboard_check(ord("R"))
{
	game_restart();
}

/*
// Collect
if (place_meeting(x,y, oPlayer)){
	instance_destroy();
	
	// Increment count
	var itemPos = item_pos(itemType);
	if (itemPos == -1){ // If item doesn't exist in list
		ds_list_add(global.inv, [itemType, 1]);
	}
	else{ // If item already exist in list
		var arr = global.inv[| itemPos];
		arr[@ 1]++; // Increase count by 1
	}
}
*/