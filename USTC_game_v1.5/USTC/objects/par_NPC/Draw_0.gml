//description
var anim_lenght=4;
var frame_size_x=32;
var frame_size_y=48;
var anim_speed=8;

//
if(move_X<0)			{y_frame=1;}
else if(move_X>0)		{y_frame=2;}
else if(move_Y<0)		{y_frame=3;}
else if(move_Y>0)		{y_frame=0;}
else					{x_frame=0;}

var xx = x - x_offset;
var yy = y - y_offset;


//draw character Shadow
if(spr_shadow !=-1)draw_sprite(spr_character_shadower,0,x,y);
//draw MPC
if(spr_base !=-1) draw_sprite_part(spr_base,0,floor(x_frame)*frame_size_x,y_frame*frame_size_y,frame_size_x,frame_size_y,xx,yy);

//Increment Frame for Animation
if (x_frame <anim_lenght-1)	{x_frame+= anim_speed/60;}
else						{x_frame=0;}


