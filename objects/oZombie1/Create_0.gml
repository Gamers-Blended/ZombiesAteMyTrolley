event_inherited();

hsp = 4; // horizontal speed
vsp = 0; // vertical speed
//grv = global.levelGrv;
walksp = 9;
switch (global.level) {
	case 2:
	case 3:
		walksp = 7;
		break;
	case 8:
	case 9:
		walksp = 8;
	default:
		walksp = 9;
		break;
}
original_walksp = walksp;
move = 1;
resume_dir = 1;

orig_xscale = image_xscale;