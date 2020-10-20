///// @description Creates List

// level selector

if (global.level == 1)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oListed;
	var value1 = 10;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}

else if (global.level == 2)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oListed;
	var value1 = 10;

	var key2 = oPotatoChips;
	var value2 = 5;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);

	ds_map_add(global.shopList, key2, value2);
	ds_list_add(global.ShopListItems, key2);
}

else if (global.level == 3)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oListed;
	var value1 = 10;

	var key2 = oPotatoChips;
	var value2 = 5;

	var key3 = oBanana;
	var value3 = 5;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);

	ds_map_add(global.shopList, key2, value2);
	ds_list_add(global.ShopListItems, key2);

	ds_map_add(global.shopList, key3, value3);
	ds_list_add(global.ShopListItems, key3);
}