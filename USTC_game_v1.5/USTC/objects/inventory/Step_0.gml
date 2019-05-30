if(keyboard_check_pressed(ord("I"))){show_inventory = !show_inventory;}
if(keyboard_check_pressed(ord("Z"))&&choose_1 == 0){
	show_inventory_item  = true ;}
if(keyboard_check_pressed(ord("Z"))&&choose_1 == 1){
	show_inventory_task  = true ;
	}
if(keyboard_check_pressed(ord("X"))&&choose_1 == 0){
	show_inventory_item  = false ;
	}
if(keyboard_check_pressed(ord("X"))&&choose_1 == 1){
	show_inventory_task  = false ;
	}

if(keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)){
	if(!show_inventory_task&&!show_inventory_item){
		choose_1++;
	}
}
if(choose_1>1){
	choose_1=0;
}
if(keyboard_check_pressed(vk_down)){
	if(show_inventory_item){
		choose_2++;
	}
}
if(keyboard_check_pressed(vk_up)){
	if(show_inventory_item){
		choose_2--;
	}
}
if(choose_2>7){
	choose_2=0;
}
if(choose_2<0){
	choose_2 = 7;
}

