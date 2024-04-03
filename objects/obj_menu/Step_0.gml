//inputs
up_key 		= keyboard_check(ord("W"));
down_key 	= keyboard_check(ord("S"));
accept_key = keyboard_check_pressed (vk_enter);

//stored options in menu 
op_length = array_length(option[menu_level1]);

//movement in menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length-1};


//using options
if accept_key {
	
var _sml = menu_level;

switch(menu_level) {
	
	//pause menu
		case 0:
		switch(pos){
			//start game
			case 0: room_goto_next (); break;
			//settings
			case 1:menu_level = 1; break;
			//quit game
			case 2: game_end (); break;
			}
		break;
		
		//settings menu
		case 1:
			switch(pos) {
				//window size
				case 0:
					
					break;
				//brightness
				case 1:
					
					break;
					
					//controls
				case 2:
					
					break;
					//back
				case 3:
					menu_level = 0;
					break;
				}
			break;
	}
	
	if _sml != menu_level {pos = 0};
	
	op_length = array_length(option[menu_level1]);
}