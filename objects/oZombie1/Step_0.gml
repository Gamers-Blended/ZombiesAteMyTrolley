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

event_inherited();