/// @description Init Vars
/*
// Create Fixture
var cart_width = sprite_width / 16;
var fixture_density = 1;
var fixture_restitution = 0;
var fixture_linear_damping = 1;
var fixture_angular_damping = 0.1;
var fixture_friction = 0.2;

var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, -(sprite_width / 2), -(sprite_height / 2));
physics_fixture_add_point(fixture, (-(sprite_width / 2) + cart_width), -(sprite_height / 2));
physics_fixture_add_point(fixture, (-(sprite_width / 2) + cart_width), (sprite_height / 2));
physics_fixture_add_point(fixture, -(sprite_width / 2), (sprite_height / 2));
physics_fixture_set_density(fixture, fixture_density);
physics_fixture_set_restitution(fixture, fixture_restitution);
physics_fixture_set_linear_damping(fixture, fixture_linear_damping);
physics_fixture_set_angular_damping(fixture, fixture_angular_damping);
physics_fixture_set_friction(fixture, fixture_friction);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);

var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, -(sprite_width / 2), (sprite_height / 2));
physics_fixture_add_point(fixture, -(sprite_width / 2), ((sprite_height / 2) - cart_width));
physics_fixture_add_point(fixture, (sprite_width / 2), ((sprite_height / 2) - cart_width));
physics_fixture_add_point(fixture, (sprite_width / 2), (sprite_height / 2));
physics_fixture_set_density(fixture, fixture_density);
physics_fixture_set_restitution(fixture, fixture_restitution);
physics_fixture_set_linear_damping(fixture, fixture_linear_damping);
physics_fixture_set_angular_damping(fixture, fixture_angular_damping);
physics_fixture_set_friction(fixture, fixture_friction);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);

var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, (sprite_width / 2), -(sprite_height / 2));
physics_fixture_add_point(fixture, (sprite_width / 2), (sprite_height / 2));
physics_fixture_add_point(fixture, ((sprite_width / 2) - cart_width), (sprite_height / 2));
physics_fixture_add_point(fixture, ((sprite_width / 2) - cart_width), -(sprite_height / 2));
physics_fixture_set_density(fixture, fixture_density);
physics_fixture_set_restitution(fixture, fixture_restitution);
physics_fixture_set_linear_damping(fixture, fixture_linear_damping);
physics_fixture_set_angular_damping(fixture, fixture_angular_damping);
physics_fixture_set_friction(fixture, fixture_friction);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);
*/

hsp = 0; // horizontal speed
vsp = 0; // vertical speed
walksp = 7;

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
