/// @description Item spawner
num = irandom_range(1,100);
if num<5
{
	// Spawn region
	xp = irandom_range(500,2100);
	yp = 100;
	
	// Randomly generate id for items
	if ((!instance_exists(oToiletPaper)) && (!instance_exists(oTPSource))) {
		r = irandom_range(1,5);
	} else { 
		r = irandom_range(1,4);
	}
	
	if r = 1
	{
		makethis = oListed;
	}	
	else if r = 2
	{
		makethis = oIrrelevant;
	}
	else if r = 3
	{
		makethis = oPotatoChips;
	}
	else if r = 4
	{
		makethis = oBanana;
	}
	else if r = 5
	{
		makethis = oToiletPaper;
	}

	// Spawns the items
	item = instance_create_layer(xp,yp,"instances",makethis);
}
