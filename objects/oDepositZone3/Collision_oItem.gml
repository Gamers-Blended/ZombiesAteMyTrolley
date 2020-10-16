/// @description when collide with oItem
var key = other.object_index;
var value = 1;

if (ds_map_exists(shopList, key)) {
	value -= ds_map_find_value(shopList, key);
	ds_map_replace(shopList, key, value);
}

instance_destroy(other);