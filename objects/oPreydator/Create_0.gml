event_inherited();

state = e_state.idle;
hsp = 4; // horizontal speed
vsp = 0; // vertical speed
//grv = global.levelGrv;
walksp = 9;
original_walksp = walksp;
move = 1;

orig_xscale = -image_xscale;

trigger_dist = 500;
chasing_dist = 400;

enum e_state
{
	idle,
	chase,
	goback
}

isChasing = false;