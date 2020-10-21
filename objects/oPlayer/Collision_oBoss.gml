/// @description Insert description here
// You can write your code in this editor
if (!isInvulnerable) {
	
	// Make character invulnerable
	image_alpha = 0.5;
	isInvulnerable = true;
	alarm[0] = invulnerable_duration;
	
	// Toilet Paper Teleportation
	if (hasTP) {
		
		/*
		//var tpSource = instance_find(oTPSource, 1);
		var tp_x = tpSource.x;
		var tp_y = tpSource.y;
		
		// Create afterimages
		var x_diff = (x - tp_x)/num_afterimages;
		var y_diff = (y - tp_y)/num_afterimages;
		
		for (var i = 0; i < num_afterimages; i += 1) {
			var afterimage = instance_create_layer(x-x_diff*i,y-y_diff*i,0,oPlayerAfterImage);
			afterimage.image_alpha = 1/num_afterimages;
			afterimage.image_blend = make_colour_hsv(0, 0, 255);
		}
		x = tp_x;
		y = tp_y;
		
		instance_destroy(tpSource);
		hasTP = false;
		
		*/
		hasTP = false;
		isTeleporting = true;
		global.gamePause = true;
		
	} else {
		if (global.inventory_amt != 0) {
	
			// Reset all inventory items to 0, and spit them all out
			var len = ds_list_size(global.inventoryItems);
			for (var i = 0; i < len; i++) {
			    var item_key = ds_list_find_value(global.inventoryItems, i);
			    var amt_item = ds_map_find_value(global.inventory, item_key)
		
				// Remove item
				ds_map_replace(global.inventory, item_key, 0);
		
				// Spawns and throws the items in inventory
				item = instance_create_layer(x,y-sprite_height/2-sprite_get_height(sItem),"instances",item_key);
				item.vsp = -20;
				item.hsp = irandom_range(-10,10);
				}
			global.inventory_amt = 0;		

		} else {
			instance_destroy();
		}
	}
}