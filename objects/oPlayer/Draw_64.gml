/// @description Draws the inventory
if (shouldShowInventory) {
	var len = ds_list_size(global.inventoryItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.inventoryItems, i);
		var value = ds_map_find_value(global.inventory, key);
		
		draw_sprite(object_get_sprite(key), 0,32,256+30*i+10);
		//draw_text(32,64+ 20*i, ": " + string(value));
		draw_text_transformed(64,256+30*i,": "+string(value), 1.5, 1.5,0);
	}
}
