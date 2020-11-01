/// @description Draws Undo Bar
draw_sprite(sBorder,0,time_x,time_y);
draw_sprite_stretched(sTimeBar,0,time_x,time_y, (inTime/inTime_max)*time_width, time_height);


draw_sprite(sTextBox, 0,x,y);

draw_set_font(Font1);
draw_set_color(c_black);

// Shopping List
//draw_text_transformed(x+75,y,"Shopping List",1.5,1.5,0);
draw_text(x+100,y,"Shopping List");

if(instance_exists(oShoppingListFinal)){
	var len = ds_list_size(global.ShopListItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.ShopListItems, i);
		var value = ds_map_find_value(global.shopList, key);
		
		draw_sprite(object_get_sprite(key),0,x+32,y+64+80*i);
		draw_text(x+100,y+64+60*i,": "+string(value));
		//draw_text_transformed(x+90,y+40+80*i,": "+string(value), 2, 2,0);
	}
}

