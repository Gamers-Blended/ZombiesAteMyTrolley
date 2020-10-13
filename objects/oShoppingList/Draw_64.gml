/// @description Insert description here


//draw_self();
if(instance_exists(oShoppingList)){
	var len = ds_list_size(global.ShopListItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.ShopListItems, i);
		var value = ds_map_find_value(global.shopList, key);
		
		draw_sprite(object_get_sprite(key),0,32,128+20*i);
		//draw_text(64,128+20*i,": "+string(value));
		draw_text_transformed(64,128+20*i,": "+string(value), 1.5, 1.5,0);
	}
}

