//var move = 1;

vsp = vsp + global.levelGrv;
hsp = move * walksp;

// Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp, y+1, oWall))
{
	hsp = -hsp;
}

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	move = -move;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp; // position

// Fall
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
}

else
{
	grounded = true;
}

// Update facing direction
image_xscale = orig_xscale*sign(hsp);

// Jumping
num = irandom_range(1,100);
//if num<3
if true
{
	// Jump
	if ( jump_buffer_count >= jump_buffer) && place_meeting(x+10*sign(hsp),y,oJumpPoint)
	{
		jump_buffer_count = 0;
		vsp = -jumpsp;
	}
}


// Check / increment jump buffer
if jump_buffer_count < jump_buffer
{
   jump_buffer_count++;
}
event_inherited();