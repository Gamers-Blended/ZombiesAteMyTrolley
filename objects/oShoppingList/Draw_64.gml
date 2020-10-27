/// @description Insert description here


draw_sprite(sTextBox, 0,x,y);

// Draw text
// Guide: draw_text_transformed(x, y, string, xscale, yscale, angle);
// Shopping List
draw_text_transformed(x,y,"Shopping List",1.5,1.5,0);

if(instance_exists(oShoppingList)){
	var len = ds_list_size(global.ShopListItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.ShopListItems, i);
		var value = ds_map_find_value(global.shopList, key);
		
		draw_sprite(object_get_sprite(key),0,x+32,y+64+60*i);
		//draw_text(64,128+20*i,": "+string(value));
		draw_text_transformed(x+64,y+64+60*i,": "+string(value), 1.5, 1.5,0);
	}
}

