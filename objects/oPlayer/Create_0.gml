/// @description Init Vars
event_inherited();

hsp = 0; // horizontal speed
vsp = 0; // vertical speed

dir = 0; // direction, 0 = left, 1 = right
isInvulnerable = false;
invulnerable_duration = 50;
hasTP = false;
isTeleporting = false;
tpSource = undefined;
num_afterimages = 4;

walksp = 14;
full_inventory_walksp = 7;
original_walksp = walksp;

jumpsp = 10;
original_jumpsp = jumpsp;
full_inventory_jumpsp = 5

global.inventory_amt = 0;
max_inventory_size = 10;
counter = 0;

zombie_knockback_dist = 10;

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


// 10 seconds time
//inTime_max = oGame.inTime_max;
//inTime = 10;

// Flashing
flashAlpha = 0;
flashColor = c_white;

// Inventory Bar
max_inventory_size = 10;
global.inventory_amt = 0;

weight_width = 20;
weight_height = 10;