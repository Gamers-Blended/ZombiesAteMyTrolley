/*
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_pos(itemType){
	
// Goes through all elements of the inventory
	for(var i = 0; i<ds_list_size(global.inv); i++){
		var arr = global.inv[| i];
	
		// Check if item type passed in argument exists in inventory
		if (arr[0]==itemType){
			return i; // position of item in the list
		}
	}

// If item type not found on list
	return -1;
}
*/