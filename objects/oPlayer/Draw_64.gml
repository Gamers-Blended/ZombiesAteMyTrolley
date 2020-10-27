/// @description Draws Inventory List & Bar

// Relative to shopping list
x_pos = oShoppingList.x+350;
y_pos = oShoppingList.y;

draw_sprite(sTextBox, 0,x_pos,oShoppingList.y);

// Inventory
// Guide: draw_text_transformed(x, y, string, xscale, yscale, angle);
draw_text_transformed(x_pos,oShoppingList.y,"Currently Holding",1.5,1.5,0);

if (shouldShowInventory) {
	var len = ds_list_size(global.inventoryItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.inventoryItems, i);
		var value = ds_map_find_value(global.inventory, key);
		
		draw_sprite(object_get_sprite(key), 0,x_pos+40,y_pos+64+60*i);
		//draw_text(32,64+ 20*i, ": " + string(value));
		draw_text_transformed(x_pos+32+40,y_pos+64+60*i,": "+string(value), 1.5, 1.5,0);
	}
}


// Inventory Bar
draw_sprite(sInventoryBorder,0,x,y-80);
draw_sprite_stretched(sInventory,0,x+10,y-100, (global.inventory_amt/max_inventory_size)*weight_width, weight_height);
