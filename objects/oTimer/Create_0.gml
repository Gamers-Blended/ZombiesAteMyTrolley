seconds = 60;
mins = 0;

switch(global.level) {
	case 1:
	case 2:
	case 3:
	case 5:
	case 6:
	case 8:
	case 11:
	case 12:
		mins = 1;
		break;
	case 4:
	case 7:
	case 9:
	case 10:
	case 13:
	case 14:
		mins = 1.5;
		break;
	case 15:
		mins = 3;
		break;
}

global.myTime = seconds * mins;
isAlive = true;