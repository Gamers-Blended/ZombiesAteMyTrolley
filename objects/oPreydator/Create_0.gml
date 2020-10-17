event_inherited();

state = e_state.idle;
hsp = 4; // horizontal speed
vsp = 0; // vertical speed
//grv = global.levelGrv;
walksp = 9;
original_walksp = walksp;
move = 1;

enum e_state
{
	idle,
	chase
}