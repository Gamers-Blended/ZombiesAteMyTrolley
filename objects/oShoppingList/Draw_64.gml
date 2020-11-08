/// @description Draws shopping list


//draw_sprite(sTextBox, 0,x,y);
draw_sprite_ext(sTextBox,0,x,y,1,1,0,c_white,0.8);

draw_set_font(Font1);
draw_set_color(c_black);

// Shopping List
//draw_text_transformed(x+75,y,"Shopping List",1.5,1.5,0);
//draw_text(x+10,y,"Shopping List");
draw_text(x+80,y,"Shopping List");

if(instance_exists(oShoppingList)){
	var len = ds_list_size(global.ShopListItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.ShopListItems, i);
		var value = ds_map_find_value(global.shopList, key);
		
		//draw_sprite(object_get_sprite(key),0,x+32,y+64+80*i);
		draw_sprite_ext(object_get_sprite(key),0,x+32,y+64+60*i,0.7,0.7,0,c_white,0.8);
		//draw_text(x+55,y+64+55*i,": "+string(value));
		draw_text(x+80,y+64+55*i,": "+string(value));
		
		//draw_text_transformed(x+90,y+40+80*i,": "+string(value), 2, 2,0);
	}
}