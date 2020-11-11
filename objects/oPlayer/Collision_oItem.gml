/// @description Collect item

var key = other.object_index;
var value = 1;

if (global.inventory_amt < max_inventory_size) {
	
	if (ds_map_exists(global.inventory, key)) {
		value += ds_map_find_value(global.inventory, key);
		ds_map_replace(global.inventory, key, value);
	} else {
		ds_map_add(global.inventory, key, value);
		ds_list_add(global.inventoryItems, key);
	}
	
	global.inventory_amt += 1;
	audio_play_sound(Collect_Item_short, 1, false);
}

// Items disappear upon collection
instance_destroy(other);