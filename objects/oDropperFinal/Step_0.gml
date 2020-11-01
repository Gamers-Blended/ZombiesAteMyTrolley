/// @description Item spawner

num = irandom_range(1,100);
if num<5
{
	// Spawn region
	xp = irandom_range(750,2100);
	yp = 100;
	
	// Level Selector
	if (global.clearLevel == 1)
	{
		r = irandom_range(1,2);
	}
	else if (global.clearLevel == 2)
	{
		r = irandom_range(1,3);
	}
	else if (global.clearLevel == 4)
	{
		r = irandom_range(1,4);
	}
	
	// Items
	if r = 1
	{
		makethis = oPotatoChips;
	}	
	else if r = 2
	{
		makethis = oIrrelevant;
	}
	else if r = 3
	{
		makethis = oListed;
	}
	else if r = 4
	{
		makethis = oBanana;
	}
	
	// Spawns the items
	item = instance_create_layer(xp,yp,"instances",makethis);
}


	
	/*
	// Randomly generate id for items
	if ((!instance_exists(oToiletPaper)) && (!instance_exists(oTPSource))) {
		r = irandom_range(1,);
	} else { 
		r = irandom_range(1,numberofItems);
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
	else if r = toiletPaper_id
	{
		makethis = oToiletPaper;
	}
	*/



// Toilet Paper code
/*
		// Randomly generate id for items
		if ((!instance_exists(oToiletPaper)) && (!instance_exists(oTPSource)))
		{
			r = irandom_range(1,3);
		} else { 
			r = irandom_range(1,2);
		}
		*/