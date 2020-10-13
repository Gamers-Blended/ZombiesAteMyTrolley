/*
/// @function spawn_item
/// @arg item

// Arg
// var _item = argument[0];
var _item = choose(item.listed, item.irrelvant)

num = irandom_range(1,100);
if num<5
{
	xp = irandom_range(300,2100);
	yp = 100;
	
	// Spawn
	var inst = instance_create_layer(xp,yp,"Instances",_item);

	inst.speed = 8;
	inst.direction = 270;
	inst.itemType = _item;
	
	// Sprite
	inst.sprite_index = oGame.itemSprite[_item];
	
	
}


/*
num = irandom_range(1,100);
if num<5
{
	xp = irandom_range(300,2100);
	yp = 100;
	
	r = irandom_range(1,2);
	
	if r = 1
	{
		makethis = oListed;
	}	
	else if r = 2
	{
		makethis = oIrrelevant;
	}
	
	// Spawn
	var inst = instance_create_layer(xp,yp,"Instances",makethis);

	inst.itemType = makethis;
	
	// Sprite
	inst.sprite_index = oGame.itemSprite[makethis];
}
*/


