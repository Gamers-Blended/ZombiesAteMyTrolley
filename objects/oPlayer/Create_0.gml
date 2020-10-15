/// @description Init Vars
event_inherited();

hsp = 0; // horizontal speed
vsp = 0; // vertical speed
walksp = 13;
original_walksp = walksp;

counter = 0;
//walksp = 3;
//hsp = walksp;


// Forces and Speeds
// Acceleration and jumping forces
x_force = 3000;
y_force = 1250;
// How fast player can move (pixels/second)
max_x_speed = 15;
// Jumping is limited by y_force and gravity room setting

// Input buffering
// Adding a buffer in frames to make jumping more forgiving
jump_buffer = 10;
// Count placeholder (should be 0 here)
jump_buffer_count = 0;

// Controls
control_left = vk_left;
control_right = vk_right;
control_jump = vk_space;

// Prevent player from falling over.
// Disable this if you're making a face dragging game.
//phy_fixed_rotation=true;

// Item Tracker
global.inventory = ds_map_create();
global.inventoryItems = ds_list_create();
shouldShowInventory = true;
