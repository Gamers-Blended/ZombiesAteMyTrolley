/// @description Alert icon

draw_self();
if (isChasing)
{
	draw_sprite(sAlert,0,x,y-80);
}

if (is_stunned)
{
	draw_sprite(sStun,0,x,y-80);
}