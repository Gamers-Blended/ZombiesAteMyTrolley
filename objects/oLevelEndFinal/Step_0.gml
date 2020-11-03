///// @description Insert description here
//// You can write your code in this editor
//// Shopping List

//if (global.createList)
//{
//		global.shopList = ds_map_create();
//		global.ShopListItems = ds_list_create();
//		global.createList = false;

//		// Define essential items
//		var key1 = oPotatoChips;
//		var value1 = 5;
//		// Add essential items to shopping list
//		ds_map_add(global.shopList, key1, value1);
//		ds_list_add(global.ShopListItems, key1);
//		show_debug_message(global.clearLevel);
		
//		if (global.clearLevel == 2)
//		{
//			var key2 = oListed;
//			var value2 = 5;
//			ds_map_add(global.shopList, key2, value2);
//			ds_list_add(global.ShopListItems, value2);
//		}
//		if (global.clearLevel == 4)
//		{
//			var key2 = oListed;
//			var value2 = 5;
//			ds_map_add(global.shopList, key2, value2);
//			ds_list_add(global.ShopListItems, value2);
	
//			var key3 = oBanana;
//			var value3 = 5;
//			ds_map_add(global.shopList, key3, value3);
//			ds_list_add(global.ShopListItems, value3);
//		}
//		global.left_amt = 0;

//		var len = ds_list_size(global.ShopListItems);
//		for (var i = 0; i < len; i++)
//		{
//			var shop_key = ds_list_find_value(global.ShopListItems, i);
//			var shop_value = ds_map_find_value(global.shopList, shop_key);
//			// number of outstanding items on shopping list
//			show_debug_message(shop_value)
//			//global.left_amt += shop_value;
//		}
		
////		// odd level need spawn zombies
////if (global.left_amt <= 0) and (global.clearLevel %2 != 0)
////{
////	global.needSpawn = true;
////}
//		// Spawn zombies if odd level
//		if (global.clearLevel % 2 != 0) //and (global.needSpawn)
//		{
//			// Spawn region
//			xp = irandom_range(750,2100);
//			yp = 300;
		
//			q = irandom_range(1,2);
//			// Zombies
//			if q = 1
//			{
//				makethis = oZombie1;
//			}	
//			else if q = 2
//			{
//				makethis = oPreydator;
//			}
	
//			// Spawns the items
//			item = instance_create_layer(xp,yp,"instances",makethis);
//			global.needSpawn = false;
			
//		}
//		//show_debug_message(global.clearLevel);
//}