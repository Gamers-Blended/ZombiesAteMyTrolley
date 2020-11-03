global.levelGrv = 0.3;

global.clearLevel = 1;

global.needSpawn = false;

paused = false;
paused_surf = -1;
isAlive = true;


// 10 seconds time
inTime_max = 10;
inTime = 10;

time_width = 500;
time_height = 36;
time_x = (2500/2) - (time_width/2);
//time_x = (2500/2) - (time_width/2); // middle
time_y = 35;


// Shop List

global.left_amt = 1;

// Shopping List
global.shopList = ds_map_create();
global.ShopListItems = ds_list_create();

// Define essential items
var key1 = oPotatoChips;
var value1 = 1;
// Add essential items to shopping list
ds_map_add(global.shopList, key1, value1);
ds_list_add(global.ShopListItems, key1);

global.createList = false;

// Even level cleared
if (global.clearLevel %2 == 0)
{
	// Shopping List
	//global.shopList = ds_map_create();
	//global.ShopListItems = ds_list_create();

	// Define essential items
	//key1 = oPotatoChips;
	value1 += 5;

	// Add essential items to shopping list
	//ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
	
	if (ds_map_exists(global.shopList, key2))
	{
		value2 += 5;
	}
	if (ds_map_exists(global.shopList, key3))
	{
		value3 += 5;
	}
	
}
