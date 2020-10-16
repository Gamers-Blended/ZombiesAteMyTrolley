/*
// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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
}*/

x = x + hsp;

vsp = vsp + global.levelGrv * weight;
y = y + vsp;

/*
if (place_meeting(x,y+1,oWall))
{
	instance_destroy();
}*/

