/// @description empty inventory and strike off shop list items

if place_meeting(x, y + 1, oPlayer2) {
    if has_deposited = false {
        has_deposited = true;
		
        // Goes through the entire inventory list of unique items
        var len = ds_list_size(global.inventoryItems);
        for (var i = 0; i <= len; i++) {
            var key = ds_list_find_value(global.inventoryItems, i);
            var value = ds_map_find_value(global.inventory, key);
            var shop_value = ds_map_find_value(global.shopList, key);

            // Remove items in shopping list based on key
            if (ds_map_exists(global.shopList, key)) {
                shop_value = shop_value - value;
                if shop_value < 0 // Set negative quantities to 0
                {
                    shop_value = 0;
                }
                ds_map_replace(global.shopList, key, shop_value);
            }

        }
		
		// Reset all inventory items to 0
	    for (var i = 0; i < len; i++) {
	        var key = ds_list_find_value(global.inventoryItems, i);
	        ds_map_replace(global.inventory, key, 0);
	    }
		global.inventory_amt = 0;
    }    
}
else {
    has_deposited = false;
}

// Animation	
if (global.inventory_amt != 0)
{
	sprite_index = sDepositZoneGlow;
	image_speed = 0;
}
else
{
	sprite_index = sDepositZone;
	image_speed = 1;
}