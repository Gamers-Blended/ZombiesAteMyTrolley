event_inherited();

hsp = 2; // horizontal speed
vsp = 0; // vertical speed
//grv = global.levelGrv;
walksp = 4;
original_walksp = walksp;
move = 1;
orig_xscale = image_xscale;
jumpsp = 15;

// Input buffering
// Adding a buffer in frames to make jumping more forgiving
jump_buffer = 10;
// Count placeholder (should be 0 here)
jump_buffer_count = 0;