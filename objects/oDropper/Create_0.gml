/// @description Blank

numberofItems = 1

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