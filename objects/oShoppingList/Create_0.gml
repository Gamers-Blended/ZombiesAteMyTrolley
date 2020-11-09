///// @description Creates List

//// level selector
//if (room == Room1)
//{
//	global.level = 1;
//}
//else if (room == Room2)
//{
//	global.level = 2;
//}
//else if (room == Room3)
//{
//	global.level = 3;
//}
//else if (room == Room4)
//{
//	global.level = 4;
//}
//else if (room == Room5)
//{
//	global.level = 5;
//}
//else if (room == Room6)
//{
//	global.level = 6;
//}
//else if (room == Room7)
//{
//	global.level = 7;
//}
//else if (room == Room8)
//{
//	global.level = 8;
//}
//else if (room == Room9)
//{
//	global.level = 9;
//} else if (room == Room10)
//{
//  global.level = 10;
//}

//if (global.level == 1)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 10;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);
//}

//if (global.level == 2)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 15;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);
//}

//else if (global.level == 3)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 5;

//	var key2 = oListed;
//	var value2 = 5;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);

//	ds_map_add(global.shopList, key2, value2);
//	ds_list_add(global.ShopListItems, key2);
//}

//else if (global.level == 4) or (global.level == 5)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 10;

//	var key2 = oListed;
//	var value2 = 5;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);

//	ds_map_add(global.shopList, key2, value2);
//	ds_list_add(global.ShopListItems, key2);
//}

//else if (global.level == 6)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 5;

//	var key2 = oBanana;
//	var value2 = 5;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);

//	ds_map_add(global.shopList, key2, value2);
//	ds_list_add(global.ShopListItems, key2);
//}

//else if (global.level == 7) or (global.level == 8) or (global.level == 9) or (global.level == 10)
//{
//	// Shopping List
//	global.shopList = ds_map_create();
//	global.ShopListItems = ds_list_create();

//	// Define essential items
//	var key1 = oPotatoChips;
//	var value1 = 10;

//	var key2 = oListed;
//	var value2 = 5;
	
//	var key3 = oBanana;
//	var value3 = 5;

//	// Add essential items to shopping list
//	ds_map_add(global.shopList, key1, value1);
//	ds_list_add(global.ShopListItems, key1);

//	ds_map_add(global.shopList, key2, value2);
//	ds_list_add(global.ShopListItems, key2);

//	ds_map_add(global.shopList, key3, value3);
//	ds_list_add(global.ShopListItems, key3);	
//}

global.isChipsActive = true;
global.isIrrelevantActive = true;
global.isBananaActive = false;
global.isRiceActive = false;

isChipsActive = true;
isIrrelevantActive = true;
isBananaActive = false;
isRiceActive = false;

switch(room) {
	case Room1:
		global.level = 1;
		isIrrelevantActive = false;
		break;
	case Room2:
		global.level = 2;
		break;
	case Room3:
		global.level = 3;
		break;
	case Room4:
		global.level = 4;
		break;
	case Room5:
		global.level = 5;
		isChipsActive = false;
		isRiceActive = true;
		break;
	case Room6:
		global.level = 6;
		isRiceActive = true;
		break;
	case Room7:
		global.level = 7;
		isRiceActive = true;
		break;
	case Room8:
		global.level = 8;
		isChipsActive = false;
		isRiceActive = true;
		break;
	case Room9:
		global.level = 9;
		isRiceActive = true;
		break;
	case Room10:
		global.level = 10;
		isRiceActive = true;
		break;
	case Room11:
		global.level = 11;
		isChipsActive = false;
		isBananaActive = true;
		break;
	case Room12:
		global.level = 12;
		isBananaActive = true;
		break;
	case Room13:
		global.level = 13;
		isRiceActive = true;
		isBananaActive = true;
		break;
	case Room14:
		global.level = 14;
		isRiceActive = true;
		isBananaActive = true;
		break;
	case Room15:
		global.level = 15;
		isRiceActive = true;
		isBananaActive = true;
		break;	
}	


global.isChipsActive = isChipsActive;
global.isIrrelevantActive = isIrrelevantActive;
global.isBananaActive = isBananaActive;
global.isRiceActive = isRiceActive;


// Shopping List
	global.shopList = ds_map_create();
	global.ShopListItems = ds_list_create();


// Chips
if (isChipsActive) {
	var key1 = oPotatoChips;
	var value1 = 0;
	switch(global.level) {
		case 1:
		case 3:
		case 7:
		case 10:
			value1 = 5
			break;
		case 4:
			value1 = 10;
			break;
		case 6:
		case 12:
			value1 = 2;
			break;
		case 9:
		case 14:
			value1 = 3;
			break;
		case 2:
		case 15:
			value1 = 7;
			break;
	}
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}

// Rice
if (isRiceActive) {
	var key1 = oListed;
	var value1 = 0;
	switch(global.level) {
		case 5:
		case 7:
		case 8:
		case 9:
		case 10:
			value1 = 5
			break;
		case 6:
		case 14:
			value1 = 3;
			break;
		case 13:
			value1 = 2;
			break;
		case 15:
			value1 = 7;
			break;
	}
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}

// Banana
if (isBananaActive) {
	var key1 = oBanana;
	var value1 = 0;
	switch(global.level) {
		case 11:
			value1 = 5;
			break;
		case 12:
		case 13:
		case 14:
			value1 = 3
			break;
		case 15:
			value1 = 7;
			break;
	}
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}