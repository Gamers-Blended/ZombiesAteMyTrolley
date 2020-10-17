/// @description Insert description here
// You can write your code in this editor
has_control = false;
alarm[0] = banana_stun_duration;
stun_effect_sprite = instance_create_layer(x,y,"instances",oStunEffect);
stun_effect_sprite.depth = -1;
instance_destroy(other);
show_debug_message("Banana stepped");