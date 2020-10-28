/// @description Check condition to move to next room
var levelcleared = false;

var totalcount = 0;
		
//var levelcleared = true;
 var len = ds_list_size(global.ShopListItems);
 for (var i = 0; i < len; i++)
 {
	 var shop_key = ds_list_find_value(global.ShopListItems, i);
	 var shop_value = ds_map_find_value(global.shopList, shop_key);
	 // number of outstanding items on shopping list
	 totalcount += shop_value;
}

// If outstanding number = 0, can advance
if (totalcount == 0)
{
	levelcleared = true;
}
else
{
	levelcleared = false;
}
		
with (oPlayer)
{
	if (levelcleared)
	{
		room_goto_next();
	}
}
