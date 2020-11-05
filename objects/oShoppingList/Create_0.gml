///// @description Creates List

// level selector
if (room == Room1)
{
	global.level = 1;
}
else if (room == Room2)
{
	global.level = 2;
}
else if (room == Room3)
{
	global.level = 3;
}
else if (room == Room4)
{
	global.level = 4;
}
else if (room == Room5)
{
	global.level = 5;
}
else if (room == Room6)
{
	global.level = 6;
}
else if (room == Room7)
{
	global.level = 7;
}
else if (room == Room8)
{
	global.level = 8;
}
else if (room == Room9)
{
	global.level = 9;
}
else if (room == Room10)
{
	global.level = 10;
}

if (global.level == 1)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 10;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}

if (global.level == 2)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 15;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}

else if (global.level == 3)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 5;

	var key2 = oListed;
	var value2 = 5;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);

	ds_map_add(global.shopList, key2, value2);
	ds_list_add(global.ShopListItems, key2);
}

else if (global.level == 4) or (global.level == 5)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 10;

	var key2 = oListed;
	var value2 = 5;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);

	ds_map_add(global.shopList, key2, value2);
	ds_list_add(global.ShopListItems, key2);
}

else if (global.level == 6)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 5;

	var key2 = oBanana;
	var value2 = 5;

	// Add essential items to shopping list
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);

	ds_map_add(global.shopList, key2, value2);
	ds_list_add(global.ShopListItems, key2);
}

else if (global.level == 7) or (global.level == 8) or (global.level == 9) or (global.level == 10)
{
	// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();

	// Define essential items
	var key1 = oPotatoChips;
	var value1 = 10;
	var key2 = oListed;
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