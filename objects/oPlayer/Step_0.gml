// Get player input
// 1 when down, 0 when up
key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var move = 0;

if (!is_stunned) {
	var move = key_right - key_left;
}

// Calculate penalty due to items in inventory
var hor_item_drag = (original_walksp - full_inventory_walksp) * global.inventory_amt / max_inventory_size;
var ver_item_drag = (original_jumpsp - full_inventory_jumpsp) * global.inventory_amt / max_inventory_size;

if (!isTeleporting) {
	hsp = move * (walksp - hor_item_drag);
	vsp = vsp + global.levelGrv;
}

// Jump
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -jumpsp + ver_item_drag;
}

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	//show_debug_message("ASDF");
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
	//show_debug_message("FDSA");
}

y = y + vsp; 

if (key_left) {
	dir = 0;
} else if (key_right) {
	dir = 1;
}

// Move player when he has toilet paper protection
if (isTeleporting) {
	if (!place_meeting(x,y,tpSource)) {
		move_towards_point(tpSource.x, tpSource.y, 100);
	} else {
		speed = 0;
		isTeleporting = false;
		instance_destroy(tpSource);
	}
}

event_inherited();

// Undo Teleportation
if(instance_exists(oGame)){
	inTime = oGame.inTime;
}

if (inTime > 0) {
	inTime=inTime-delta_time/1000000
} else if (inTime < 0) {
	inTime = 0;
} else if (inTime == 0) {
	// Adjust position here!
	x = oDepositZone.x-10;
	y = oDepositZone.y-50;
	// Flash effect
	flashAlpha = 1;
	// Reset undo timer is done in oGame
}

// Reduce Flash
if (flashAlpha > 0){
	flashAlpha -= 0.05;
}
/*

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
} else if (place_meeting(x,y+1, oDepositZone) && (key_jump)) {
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

/*
if (place_meeting(x,y+1,oItem)) && (key_jump)
{
	physics_apply_impulse(x, y, 0, -y_force+1500)
}

// Clamp movement speed so we don't accelerate forever
phy_speed_x = clamp(phy_speed_x, -max_x_speed, max_x_speed);

if (place_meeting(x, y, oZombie1)) 
{
  instance_destroy();
}

*/