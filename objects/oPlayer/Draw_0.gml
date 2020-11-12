/// @description Draw inventory to screen
// You can write your code in this editor

event_inherited();

//Flash
if (flashAlpha > 0){
  shader_set(shFlash);
  
  //draw_sprite_ext(sRewind, image_index, room_width/2, room_height/2, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
  
  // Draw rectangle
  
  // Draw rewind symbol
  //draw_sprite_ext(sWhiteFlash, image_index, room_width/2, room_height/2, 1, 1, image_angle, c_white, flashAlpha);
  draw_sprite_ext(sRewind, image_index, room_width/2, room_height/2, 1, 1, image_angle, c_black, flashAlpha);
  
  //draw_sprite_ext(sRewind, image_index, x, y, 1, 1, image_angle, c_black, flashAlpha);
  
  shader_reset();
}