/// @description Insert description here
// You can write your code in this editor
if (!hasTP) {
	show_debug_message("Collected Toilet Paper");
	instance_destroy(oToiletPaper);
	hasTP = true;
	tpSource = instance_create_layer(x,y,"instances",oTPSource);
}
