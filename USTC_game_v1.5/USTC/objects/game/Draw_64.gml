if(doTransition == true){
	//handle black fade
	if(room != spawnRoom){
		blackAlphy += 0.1;
		if(blackAlphy >= 1){
			room_goto(spawnRoom);
		}
	}
	else{
		blackAlphy -= 0.1;
		if(blackAlphy <= 0){
			doTransition = false;
		}
	}
	//drawing black fade
	draw_set_alpha(blackAlphy);
	draw_rectangle_color(0,0,global.game_width,global.game_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}


