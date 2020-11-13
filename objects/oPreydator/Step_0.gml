//var move = 1;

vsp = vsp + global.levelGrv;


hsp = move * walksp;



// Switch between idle and chase
switch (state)
{
	case e_state.idle:
	{
		isChasing = false;
		hsp = 0;
		image_speed = hsp/3;
		vsp = (min(7,vsp+0.05));
		// inside aggro range (Adjust range here!)
		if (distance_to_object(oPlayer) < trigger_dist)
		{
			audio_play_sound(Zombie_short, 1, false);
			state = e_state.chase;
		}
	}
	break;
	
	case e_state.chase:
	{
		if (instance_exists(oPlayer))
		{
			isChasing = true;
			dir = sign(oPlayer.x - x);
			hsp = dir * 2;
			image_speed = hsp/3;
			vsp = (min(7,vsp+0.05));
			// Update facing direction
			image_xscale = orig_xscale*sign(hsp);
			
			if image_xscale == 0
			{
				image_xscale = 1;
			}
			// outside aggro range
			//if (distance_to_object(oPlayer) > 165) state = e_state.idle;
			if (distance_to_object(oPlayer) > trigger_dist) state = e_state.goback;
		}
		else
		{
			state = e_state.idle;
		}
	break;
	}
	case e_state.goback:
	{
		if (instance_exists(oRestSpot))
		{
			isChasing = false;
			dir = sign(oRestSpot.x - x);
			hsp = dir * 2;
			image_speed = hsp/3;
			vsp = (min(7,vsp+0.05));
			// Update facing direction
			image_xscale = orig_xscale*sign(hsp);
			// Return to rest spot
			//if (distance_to_object(oPlayer) > 165) state = e_state.idle;
			if (distance_to_object(oRestSpot) = 0) state = e_state.idle;
		}
		else
		{
			state = e_state.idle;
		}
		break;
	}
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

if (!is_stunned) {
	x = x + hsp;
}

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