
/// @description Draw inventory to screen
// You can write your code in this editor
draw_self();

/*
if (shouldShowInventory) {
	var len = ds_list_size(inventoryItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(inventoryItems, i);
		var value = ds_map_find_value(inventory, key);
		
		/*
		var cam = camera_get_active();
		var camX = camera_get_view_x(cam);
		var camY = camera_get_view_y(cam);
		
		var GRID = 32;
		draw_sprite(object_get_sprite(key), 0, camX, camY + (i * GRID));
		draw_text(camX + GRID, camY + (i * GRID), ": " + string(value));
		
		
		draw_sprite(object_get_sprite(key), 0,16,64+20*i);
		draw_text(32,64+ 20*i, ": " + string(value));
		
	}
}
*/