event_inherited();

v_spd = 1;
n_spd = 2;
r_spd = 3;
x_frame = 0;
y_frame = 0;
spd = v_spd;


x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//draw default;
spr_base   = -1;
spr_shadow = spr_character_shadower;
//reset movement variable
move_X = 0;
move_Y = 0;
can_move = true;

alarm[1] = 1;

portrait_index = 0;
voice = Suo_voice;
name = "Anonymous";
text = ["This person has nothing to say."];
speakers = [id];