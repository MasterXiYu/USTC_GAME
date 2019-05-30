move_cam = keyboard_check(ord("C"));

if(move_cam){
	y += (keyboard_check(ord("S"))-keyboard_check(ord("W")))*6;
	x += (keyboard_check(ord("D"))-keyboard_check(ord("A")))*6;
}
else{
	x = clamp(x, following.x-h_board,following.x+h_board);
	y = clamp(y, following.y-v_board,following.y+v_board);
}