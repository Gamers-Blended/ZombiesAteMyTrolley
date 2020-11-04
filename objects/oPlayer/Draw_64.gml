/// @description Draws Inventory List & Bar

// Relative to shopping list
if instance_exists(oShoppingList)
{
	x_pos = oShoppingList.x+280;
	y_pos = oShoppingList.y;
}

else if instance_exists(oShoppingListFinal)
{
	x_pos = oShoppingListFinal.x+350;
	y_pos = oShoppingListFinal.y;
}

// Text box
//draw_sprite(sTextBox, 0,x_pos,y_pos);
draw_sprite_ext(sTextBox,0,x_pos,y_pos,1,1,0,c_white,0.8);
draw_set_font(Font1);
draw_set_color(c_black);

// Inventory
// Guide: draw_text_transformed(x, y, string, xscale, yscale, angle);
//draw_text_transformed(x_pos+100,oShoppingList.y,"Currently Holding",2,2,0);
//draw_text(x_pos+10,y_pos,"Currently Holding");
draw_text(x_pos+105,y_pos,"Currently Holding");

if (shouldShowInventory) {
	var len = ds_list_size(global.inventoryItems);
	for (var i = 0; i < len; i++) {
		var key = ds_list_find_value(global.inventoryItems, i);
		var value = ds_map_find_value(global.inventory, key);
		
		//draw_sprite(object_get_sprite(key),0,x_pos+32,y_pos+64+80*i);
		// sprites
		draw_sprite_ext(object_get_sprite(key),0,x_pos+32,y_pos+64+60*i,0.7,0.7,0,c_white,0.8);
		// text
		//draw_text(x_pos+55,y_pos+64+55*i,": "+string(value));
		draw_text(x_pos+70,y_pos+64+55*i,": "+string(value));
	}
}


// Inventory Bar border
draw_sprite(sInventoryBorder,0,x-30,y-80);
// Bars
for (var i = 0; i < global.inventory_amt; i++)
{
	draw_sprite(sInventory,0,x-30+15*i,y-80);
}