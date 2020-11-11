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
		break;
	case Room2:
		global.level = 2;
		break;
	case Room3:
		global.level = 3;
		break;
	case Room4:
		global.level = 4;
		isChipsActive = false;
		isRiceActive = true;
		break;
	case Room5:
		global.level = 5;
		isRiceActive = true;
		break;
	case Room6:
		global.level = 6;
		isRiceActive = true;
		break;
	case Room7:
		global.level = 7;
		isChipsActive = false;
		isRiceActive = true;
		break;
	case Room8:
		global.level = 8;
		isRiceActive = true;
		break;
	case Room9:
		global.level = 9;
		isRiceActive = true;
		break;
	case Room10:
		global.level = 10;
		isChipsActive = false;
		isBananaActive = true;
		break;
	case Room11:
		global.level = 11;
		isBananaActive = true;
		break;
	case Room12:
		global.level = 12;
		isRiceActive = true;
		isBananaActive = true;
		break;
	case Room13:
		global.level = 13;
		isRiceActive = true;
		isBananaActive = true;
		break;
	// VVV INACTIVE LEVELS VVV
	case Room14:
		global.level = 14;
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
		case 2:
		case 3:
			value1 = 10;
			break;
		case 5:
		case 8:
		case 9:
		case 12:
			value1 = 5;
			break;
		case 6:
			value1 = 8;
			break;
		case 11:
		case 13:
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
		case 4:
			value1 = 10;
			break;
		case 5:
		case 7:
		case 8:
		case 9:
		case 12:
			value1 = 5;
			break;
		case 6:
			value1 = 8;
			break;
		case 13:
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
		case 10:
			value1 = 10;
			break;
		case 11:
		case 13:
			value1 = 7
			break;
		case 12:
			value1 = 5;
			break;
	}
	ds_map_add(global.shopList, key1, value1);
	ds_list_add(global.ShopListItems, key1);
}