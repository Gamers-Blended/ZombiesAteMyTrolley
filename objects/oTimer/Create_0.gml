seconds = 60;
mins = 0;

switch(global.level) {
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
		mins = 2;
		break;
}

global.myTime = seconds * mins;
isAlive = true;