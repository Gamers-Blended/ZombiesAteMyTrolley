seconds = 60;
mins = 0;

switch(global.level) {
	case 1:
	case 2:
	case 4:
	case 5:
	case 7:
	case 10:
		mins = 1;
		break;
	case 3:
	case 8:
		mins = 1.5;
		break;
	case 6:
	case 9:
	case 11:
		mins = 2;
		break;
	case 12:
	case 13:
		mins = 2.5;
		break;
	case 14:
		mins = 3;
		break;
}

global.myTime = seconds * mins;
isAlive = true;