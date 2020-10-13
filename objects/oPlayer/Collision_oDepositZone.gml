/// @description Empty collected items

var key = oListed;
var value = 1;

//if (ds_map_exists(global.shopList, key)) {
//	value -= ds_map_find_value(global.shopList, key);
//	ds_map_replace(global.shopList, key, value);
//}

//var key = other;
//var key = other.object_index;

// Empty inventory
if (ds_map_exists(global.inventory, key)) {
	//value += ds_map_find_value(inventory, key);
	ds_map_replace(global.inventory, key, 0);
} else {
	ds_map_add(global.inventory, key, value);
	ds_list_add(global.inventoryItems, key);
}


// Reduce number in Shopping List
//var key1 = oListed;
//var value1 = 3;

//// Remove items in shopping list
//if (ds_map_exists(global.shopList, key)) {
//	value -= ds_map_find_value(global.shopList, key);
//	ds_map_replace(global.shopList, key, value);
//}
