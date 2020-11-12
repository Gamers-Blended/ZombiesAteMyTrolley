/// @description Set up camera

cam = view_camera[0];
follow = oPlayer;
view_w = camera_get_view_width(cam)*0.5;
view_h = camera_get_view_height(cam)*0.5;
xTo = xstart;
yTo = ystart;

// 60 frames - 1 sec of shaking
shake_length = 0;
// how strong the shake
shake_magnitude = 0;
// when decrease to 0, stop shaking
shake_remain = 0;
//buff = 32;
buff = 20;

surface_resize(application_surface, room_width, room_height);