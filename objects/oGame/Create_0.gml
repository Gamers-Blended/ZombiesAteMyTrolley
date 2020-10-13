/*
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W,RES_H);


// Inventory
global.inv = ds_list_create();

// Items
enum item{
	listed,
	irrelvant
}

itemSprite[item.listed] = sItem;
itemSprite[item.irrelvant] = sIrrelvant;
*/