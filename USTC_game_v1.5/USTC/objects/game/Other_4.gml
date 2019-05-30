if(spawnRoom == -1)exit;

obj_player.x = spawnX;
obj_player.y = spawnY;

obj_player.facing = spawnplayerFacing; 
with(obj_player){
	switch(facing){
	case dir.left:	y_frame=1;	break;
	case dir.right:	y_frame=2;	break;
	case dir.up:	y_frame=3;	break;
	case dir.down:	y_frame=0;	break;
	case -1:		x_frame=0;	break;
	}
}