
if(!can_move)exit;

//check collision
//check collision x;
//check collision
//check collision x;
if(move_X!=0){
	var collisionH = instance_place(x+move_X,y,obj_collision);
	if(collisionH!=noone and collisionH.collideable){
		repeat(abs(move_X)){
			if(!place_meeting(x+sign(move_X),y,obj_collision)){ 
				x += sign(move_X);
				}
			else{ 
				break ;
				}
		}
		move_X = 0;
	}
}

//check collision y;
if(move_Y!=0){	
	var collisionV = instance_place(x,y+move_Y,obj_collision);
	if(collisionV!=noone and collisionV.collideable){
		repeat(abs(move_Y)){
			if(!place_meeting(x,y + sign(move_Y),obj_collision)){ 
				y += sign(move_Y);
				}
			else{ 
				break ;
				}
		}
		move_Y = 0;
	}
}

//move it
x += move_X;
y += move_Y;