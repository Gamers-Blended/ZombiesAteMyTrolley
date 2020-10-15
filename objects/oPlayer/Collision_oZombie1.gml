/// @description Insert description here
// Collision with Zombies
if (place_meeting(x, y, oZombie1)) 
{
	if (ds_map_size(global.inventory)==0)
	{
		instance_destroy();
	}
	else
	{
		direction =point_direction(other.x,other.y,x,y);
		hsp = lengthdir_x(6,direction);
		vsp = lengthdir_y(4,direction)-2;
		if (sign(hsp) != 0) image_scale = sign(hsp);
	}
}
