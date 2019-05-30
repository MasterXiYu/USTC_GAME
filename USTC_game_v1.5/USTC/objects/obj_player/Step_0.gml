//Update input;
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
input_interact = keyboard_check_pressed(vk_space);




//Alter speed
if(input_walk or input_run)	{
	spd=abs((input_walk*n_spd)-(input_run*r_spd));
}
else{
	spd = n_spd;
}

//reset movement variable
move_X = 0;
move_Y = 0;


//instant movement
move_Y= (input_down-input_up)*spd;
if(move_Y==0){
	move_X = (input_right-input_left)*spd;
}

//to get dectortion player is facing
if(move_X!=0){
	switch(sign(move_X)){
		case 1: facing = dir.right;	break;
		case -1:facing = dir.left;	break;
	}
}
else if(move_Y!=0){
	switch(sign(move_Y)){
		case 1: facing = dir.down;	break;
		case -1:facing = dir.up;	break;
	}
}
else{
	facing = -1;
}

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


//transation:
var inst = instance_place(x,y,obj_transation);
if(inst!=noone and facing == inst.playerFacingBefore){
	with(game){
		if(!doTransition){
			spawnRoom = inst.targetRoom;
			spawnX = inst.targetX;
			spawnY = inst.targetY;
			spawnplayerFacing = inst.playerFacingAfter;
			doTransition = true;
		}
	}
} 

//Textbox
if(input_interact){
	
	if(active_textbox == noone){
		var inst = collision_rectangle(x-radius,y-radius,x+radius,y+radius,par_NPC,false,false);
		if(inst!=noone){
			with(inst){
				var tbox = Create_textbox(text,speakers);
				can_move = false;
				move_X = 0;move_Y = 0;
			}
			active_textbox=tbox;
		}
	}
	else{
		if(!instance_exists(active_textbox)){
			active_textbox = noone;
		}
	}


}




//move it
x += move_X;
y += move_Y;

