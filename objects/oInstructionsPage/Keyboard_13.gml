/// @description Insert description here
// You can write your code in this editor

if (isPressable) {
  audio_play_sound(menuEnter, 1, false);
  switch(menu_index) {
  
    // back
    case 0:
      if (page_index == 0) {
        
        // Return control to menu parent
        // Note that it is assumed you can only enter instructions from 
        // Main Menu or Pause screen. Hence these objects NEED to have
        // oMenuParent as the parent.
        oMenuParent.is_in_menu = true;
        
        // Debounce for parent
        oMenuParent.isPressable = false;
        oMenuParent.alarm[0] = oMenuParent.buttonDelay;
        
        // Destroy this instance
        instance_destroy();
      }
      page_index -= 1;
      break;
  
    // next OR return to menu
    case 1:
      if (page_index == 2) {
        // Return control to menu parent
        // Note that it is assumed you can only enter instructions from 
        // Main Menu or Pause screen. Hence these objects NEED to have
        // oMenuParent as the parent.
        oMenuParent.is_in_menu = true;
        
        // Debounce for parent
        oMenuParent.isPressable = false;
        oMenuParent.alarm[0] = oMenuParent.buttonDelay;
        
        // Destroy this instance
        instance_destroy();
      } else {
        page_index +=1;
      }
      break;
    
  }
  
  // Prevent key spam
  isPressable = false;
  alarm[0] = buttonDelay;

}