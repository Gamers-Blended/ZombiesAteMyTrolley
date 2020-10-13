/// @description Draws the Shopping List
// You can write your code in this editor

//draw_self();
// draw textbox
draw_sprite(sTextBox, 0,x,y);

// Draw text
// Guide: draw_text_transformed(x, y, string, xscale, yscale, angle);
// Shopping List
draw_text_transformed(x,y,"Shopping List",1.5,1.5,0);
// Inventory
draw_text_transformed(x,y+150,"Currently Holding",1.5,1.5,0);