//var move = 1;

vsp = vsp + global.levelGrv;


hsp = move * walksp;

// Switch between idle and chase
switch (state)
{
	case e_state.idle:
	{
		hsp = 0;
		vsp = (min(7,vsp+0.05));
		// inside aggro range (Adjust range here!)
		if (distance_to_object(oPlayer) < 180) state = e_state.chase;
	}
	break;
	case e_state.chase:
	{
		if (instance_exists(oPlayer))
		{
			dir = sign(oPlayer.x - x);
			hsp = dir * 2;
			vsp = (min(7,vsp+0.05));
			// Update facing direction
			image_xscale = orig_xscale*sign(hsp);
			// outside aggro range
			if (distance_to_object(oPlayer) > 165) state = e_state.idle;
		}
		else
		{
			state = e_state.idle;
		}
	}
		
	break;
}


// Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp, y+1, oWall))
{
	hsp = -hsp;
}

// Horizontal collision
if (place_meeting(round(x+hsp),round(y),oWall))
{
	while (!place_meeting(round(x+sign(hsp)),round(y),oWall)) x = x + sign(hsp);
	{
		hsp = 0;
	}
	//move = -move;
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