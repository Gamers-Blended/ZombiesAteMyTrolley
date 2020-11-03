/// @description Spawns rice droppings

// Inherit the parent event
event_inherited();

instance_create_layer(x,y-sprite_get_height(sEffectRice)/2,"instances",oEffectRice);
