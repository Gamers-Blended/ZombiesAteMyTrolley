/// @description Item spawner

num = irandom_range(1,100);
if num<5
{
	// Spawn region
	xp = irandom_range(500,2100);
	yp = 100;
	
	// Randomly generate id for items
	r = irandom_range(1,3);
	if r = 1
	{
		makethis = oListed;
	}	
	else if r = 2
	{
		makethis = oIrrelevant;
	}
	else if r = 3 && (!ds_map_exists(global.inventory, oToiletPaper))
	{
		makethis = oToiletPaper;
	}

	// Spawns the items
	item = instance_create_layer(xp,yp,0,makethis);
	item.speed = 8;
	item.direction = 270;
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
		//makethis = oListed;
		makethis = item.listed;
	}	
	else if r = 2
	{
		//makethis = oIrrelevant;
		makethis = item.irrelvant;
	}
	
	//abc = instance_create_layer(xp,yp,0,makethis);
	var _item = makethis;
	var abc = instance_create_layer(xp,yp,0,_item);
	abc.speed = 8;
	abc.direction = 270;
	abc.itemType = _item;
	
	// Sprite
	abc.sprite_index = oGame.itemSprite[_item];

}
*/

