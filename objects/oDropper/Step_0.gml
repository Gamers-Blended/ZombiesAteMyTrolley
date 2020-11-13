/// @description Item spawner
// NOTE: Room speed is at 60, so step runs 60 times a second.
//       This means that irandom_range will check 60 times each second.

// Drop rate
dropRate = baseDropRate;
dropRateMultiplier = 1;
//new_width = sprite_width * image_xscale;

if (global.level != 13) {
	if (global.myTime <= 30)
	{
		dropRate = 10;
	}
	else
	{
		dropRate = 5;
	}
} else {
	if (global.myTime <= 60)
	{
		dropRate = 10;
	}
	else
	{
		dropRate = 5;
	}
}

num = irandom_range(1,100);
if num < dropRate
{
	// Spawn region
	xp = irandom_range(x-sprite_width/2,x+sprite_width/2);
	yp = 100;
	
	isChipsActive = global.isChipsActive;
	isIrrelevantActive = global.isIrrelevantActive;
	isBananaActive = global.isBananaActive;
	isRiceActive = global.isRiceActive;
	
	// Generate random number to spawn
	// numOfItems = isIrrelevantActive + isChipsActive + isRiceActive + isBananaActive;
	r = irandom_range(1,numOfItems);
	
	// Initialialise makethis array
	for (i = 0; i < numOfItems; i ++) {
		if (isIrrelevantActive) {
			makethis[i] = oIrrelevant;
			isIrrelevantActive = false; // Prevent this from happening again
		} else if (isChipsActive) {
			makethis[i] = oPotatoChips;
			show_debug_message(i);
			isChipsActive = false; // Prevent this from happening again
		} else if (isRiceActive) {
			makethis[i] = oListed;
			isRiceActive = false; // Prevent this from happening again
		} else if (isBananaActive) {
			makethis[i] = oBanana;
			isBananaActive = false; // Prevent this from happening again
		}
	}
	
	// Spawns the items
	item = instance_create_layer(xp,yp,"instances",makethis[r-1]);
	
}
	