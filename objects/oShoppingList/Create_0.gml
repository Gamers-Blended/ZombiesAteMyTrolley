///// @description Creates List

// Shopping List
global.shopList = ds_map_create();
global.ShopListItems = ds_list_create();

// Define essential items
var key1 = oListed;
var value1 = 3;

// Add essential items to shopping list
ds_map_add(global.shopList, key1, value1);
ds_list_add(global.ShopListItems, key1);