/// @description Init dropper

//numberofItems = 1;
//isChipsActive = true;
//isIrrelevantActive = true;
//isBananaActive = false;
//isRiceActive = false;
//baseDropRate = 1; // Number of items per t second

//dropRateInterval = 15;
//dropperTimer = 0;

//switch (global.level) {
//	case (1):
//	case (2):
//		numberofItems = 2;
//		break;
//	case (3):
//	case (4):
//	case (5):
//	case (6):
//		numberofItems = 3;
//		break;
//	case (7):
//	case (8):
//	case (9):
//		numberofItems = 4;
//		break;
//}

numberofItems = 1;
baseDropRate = 1; // Number of items per t second

numOfItems = global.isIrrelevantActive + global.isChipsActive + global.isRiceActive + global.isBananaActive;
for (var i = numOfItems-1; i >= 0; i --) {
	makethis[i] = oItem;
}


dropRateInterval = 15;
dropperTimer = 0;

switch (global.level) {
	case (1):
	case (2):
		numberofItems = 2;
		break;
	case (3):
	case (4):
	case (5):
	case (6):
		numberofItems = 3;
		break;
	case (7):
	case (8):
	case (9):
		numberofItems = 4;
		break;
}
