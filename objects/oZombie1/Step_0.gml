vsp = vsp + grv;


// Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp, y+1, oGround))
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
	hsp = -hsp;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oGround))
{
	while (!place_meeting(x,y+sign(vsp),oGround))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp; // position

// Fall
if (!place_meeting(x,y+1,oGround))
{
	grounded = false;
}

else
{
	grounded = true;
}