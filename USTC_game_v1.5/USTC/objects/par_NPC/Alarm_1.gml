move_X = 0;
move_Y = 0;


if(can_move){
	var idle = choose(0,1);
	if(idle == false){
		var dir = choose(1,2,3,4);
		switch(dir){
			case 1: move_X = -spd; break ;
			case 2:	move_X =  spd; break ;
			case 3:	move_Y = -spd; break ;
			case 4:	move_Y =  spd; break ;
		}
	}
}



alarm[1] = random_range(2.5,4) * room_speed;


