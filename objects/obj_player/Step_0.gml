//MOVEMENT
image_speed = walkspeed/7;
if(!blockinput){
	//if(isdir[1]==0 and isdir[2]==0 and isdir[3]==0 and isdir[4]==0) isdir[2] = 1;	
	if(keyboard_check(vk_up)){
		walkup();
	}
	else if(keyboard_check(vk_down)){
		walkdown();
	}
	if(keyboard_check(vk_left)){
		walkleft();
	}
	else if(keyboard_check(vk_right)){
		walkright();
	}
	if(not keyboard_check(vk_down) and not keyboard_check(vk_up) and not keyboard_check(vk_left) and not keyboard_check(vk_right)){
		image_speed=0; image_index=2;
	} else {
		if(!keyboard_check(vk_up)) isdir[1]=false;
		if(!keyboard_check(vk_down)) isdir[2]=false;
		if(!keyboard_check(vk_left)) isdir[3]=false;
		if(!keyboard_check(vk_right)) isdir[4]=false;
	}
	switch(facing){
		case 1:
			sprite_index = anm_playerTest_up
			break;
		case 2:
			sprite_index = anm_playerTest_down;
			break;
		case 3:
			sprite_index = anm_playerTest_left;
			break;
		case 4:
			sprite_index = anm_playerTest_right;
			break;
	}
			walkbackup();
			walkbackdown();
			walkbackleft();
			walkbackright();
} else if(!blockmoving){
	image_speed=0; image_index=0;	
}
if(keyboard_check_pressed(vk_space)) testvar=1;
if(testvar!=0) switch(testvar){
	case 1:
		if(objmove_time(400,400,1)) testvar=0;
		break;
}