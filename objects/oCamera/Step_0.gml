/// @description Update camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo-x)/15;
y += (yTo-y)/15;


// Keep camera center inside room
x = clamp(x, view_w+buff, room_width-view_w-buff);
y = clamp(y, view_h+buff, room_height-view_h-buff);

// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

// Update camera view
camera_set_view_pos(cam,x-view_w,y-view_h);

