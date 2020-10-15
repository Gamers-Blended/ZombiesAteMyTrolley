/*
// Get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -10;
}

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
}

y = y + vsp; // position

if (place_meeting(x,y+vsp,oIrrelevant) or (place_meeting(x,y+vsp,oItem)))
{
	counter = counter + 1;
	
}
*/

/// @description Player Movement
key_jump = keyboard_check_pressed(vk_space);

// Move right
if keyboard_check(control_right)
{
   physics_apply_force(x, y, x_force, 0); 
}

// Move left
if keyboard_check(control_left)
{
   physics_apply_force(x, y, -x_force, 0); 
}

// Jump Input
if keyboard_check_pressed(control_jump) && jump_buffer_count >= jump_buffer
{
   jump_buffer_count = 0;
}

// Check / increment jump buffer
if jump_buffer_count < jump_buffer
{
   jump_buffer_count++;
}

if (place_meeting(x,y+1,oGround)) && (key_jump) && (place_meeting(x,y+1,oItem))
{
	//vsp = -10;
	physics_apply_impulse(x, y, 0, -y_force+10)
} else if (place_meeting(x,y+1,oGround)) && (key_jump)
{
	physics_apply_impulse(x, y, 0, -y_force)
}

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	physics_apply_impulse(x, y, 0, -y_force)
}
/*
// Player is standing on ground and account for jump_buffer
if place_meeting(x, y + 1, oWall) && jump_buffer_count < jump_buffer
{
   // Jump!
   physics_apply_impulse(x, y, 0, -y_force);
}
*/

if (place_meeting(x,y+1,oItem)) && (key_jump)
{
	physics_apply_impulse(x, y, 0, -y_force+1500)
}

// Clamp movement speed so we don't accelerate forever
phy_speed_x = clamp(phy_speed_x, -max_x_speed, max_x_speed);

// Collision with Zombies
if (place_meeting(x, y, oZombie1)) 
{
	if (ds_map_size(global.inventory)==0)
	{
		instance_destroy();
	}
	else
	{
	}
}

// Collision with deposit zone
if (place_meeting(x,y+1,oDepositZone)) && (key_jump)
{
	physics_apply_impulse(x, y, 0, -y_force)
}