/// @description Insert description here
// You can write your code in this editor

if (isPressable) {
	
	switch(menu_index) {
	
		// back
		case 0:
			if (page_index == 0) room_goto(Menu);
			page_index -= 1;
			break;
	
		// next
		case 1:
			if (page_index != 2) {
				page_index += 1;
			}
			break;
		
	}
	
	// Prevent key spam
	isPressable = false;
	alarm[0] = buttonDelay;

}
