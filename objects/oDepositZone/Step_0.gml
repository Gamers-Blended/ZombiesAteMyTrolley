/// @description Insert description here

if place_meeting(x,y,oPlayer)
    {
    if has_deposited = false
         {
			 has_deposited = true;
			 //// Remove items in shopping list
			 var key = oListed;
			 var value = 1;

			 if (ds_map_exists(global.shopList, key)) {
				value -= ds_map_find_value(global.shopList, key);
				ds_map_replace(global.shopList, key, value);
				}
         }
    }
    else
    {
        has_deposited = false;
     }