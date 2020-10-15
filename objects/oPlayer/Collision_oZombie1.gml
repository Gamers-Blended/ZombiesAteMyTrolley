/// @description Insert description here
// You can write your code in this editor
if (!isInvulnerable) {
	
	// Make character invulnerable
	image_alpha = 0.5;
	isInvulnerable = true;
	alarm[0] = invulnerable_duration;
	
	// Toilet Paper Teleportation
	if (hasTP) {
		//var tpSource = instance_find(oTPSource, 1);
		x = tpSource.x;
		y = tpSource.y;
		instance_destroy(tpSource);
		hasTP = false;
		
	} else {
		if (inventory_amt != 0) {
	
			// Reset all inventory items to 0, and spit them all out
			var len = ds_list_size(global.inventoryItems);
			for (var i = 0; i < len; i++) {
			    var item_key = ds_list_find_value(global.inventoryItems, i);
			    var amt_item = ds_map_find_value(global.inventory, item_key)
		
				// Remove item
				ds_map_replace(global.inventory, item_key, 0);
		
				// Spawns the items
				item = instance_create_layer(x,y-sprite_height/2-sprite_get_height(sItem),0,item_key);
				item.vsp = -10;
				item.hsp = irandom_range(-10,10);
				}
			inventory_amt = 0;		

		} else {
			instance_destroy();
		}
	}
}