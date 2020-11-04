/// @description Item spawner

// Drop rate
dropRate = 1;
if (global.myTime <= 30)
{
	dropRate = 10;
}
else
{
	dropRate = 5;
}

num = irandom_range(1,100);
if num<dropRate
{
	// Spawn region
	xp = irandom_range(750,2100);
	yp = 100;
	
	// Level Selector
	if (global.level == 1) or (global.level == 2)
	{
		r = irandom_range(1,2);
	}
	else if (global.level == 3)  or (global.level == 4) or (global.level == 5)
	{
		r = irandom_range(1,3);
	}
	// Skip level 6
	else if (global.level == 7) or (global.level == 8) or (global.level == 9)
	{
		r = irandom_range(1,4);
	}
	
	if (global.level != 6)
	{
		
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
}

r=0;

// Level 6
num = irandom_range(1,100);
if num<5
{
	// Spawn region
	xp = irandom_range(750,2100);
	yp = 100;
	
	// Level Selector
	if (global.level == 6)
	{
		r = irandom_range(1,3);
		
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
			makethis = oBanana;
		}
		
		
		// Spawns the items
		item = instance_create_layer(xp,yp,"instances",makethis);
		//item = instance_create(xp,yp,makethis);
		
	}
}

if (global.level == 6)
		{
			instance_destroy(oListed);
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