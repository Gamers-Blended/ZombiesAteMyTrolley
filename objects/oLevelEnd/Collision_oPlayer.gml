/// @description Move to next room
var levelcleared = false;

var levelcleared = true;
 //var len = ds_list_size(global.ShopListItems);
 //       for (var i = 0; i <= len; i++) {
			
	//		var shop_key = ds_list_find_value(global.ShopListItems, i);
			
 //           var shop_value = ds_map_find_value(global.shopList, shop_key);
			
	//		global.total = 0;
	//		global.total = global.total + shop_value;
	//	}
	//	if (global.total == 0) {
	//		levelcleared = true;
			
	//		}
	//	else
	//	{
	//		show_debug_message("H");
	//		levelcleared = false;
	//		}
		
with (oPlayer)
{
	if (levelcleared)
	{
		//hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target);
	}
}
