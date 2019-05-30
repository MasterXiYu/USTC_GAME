if(!show_inventory ) exit;
//画第一个框
draw_sprite_part_ext(
	spr_inv_UI,0,0,0,inv_UI_width,inv_UI_height,inv_UI_x,
	inv_UI_y,1,1,c_white,1
	);

//画箭头
draw_sprite_part_ext(
	spr_inv_arrow,0,0,0,inv_arrow_width,inv_arrow_height,info_x_1_arrow,
	info_y_1_arrow +choose_1*50,1,1,c_white,1
	);
var info_UI_first = ds_player_UI_print ;
var info_UI_second = ds_player_item ;

draw_set_font(fnt_text_STFangsong);
var c = c_white;
//draw_text_color(info_x,info_y,info_grid[# 0, 7]+"; " + info_grid[# 1, 7],c ,c ,c ,c,1);
//画出第一层
draw_text_color(info_x_1_name,info_y_1_name,
info_UI_first[# 0, 0]+" : " + info_UI_first[# 1, 0],c ,c ,c ,c,1);
draw_text_color(info_x_1_name+40,info_y_1_name+50,info_UI_first[# 0, 1],
c ,c ,c ,c,1);
draw_text_color(info_x_1_name+40,info_y_1_name+100,info_UI_first[# 0, 2],
c ,c ,c ,c,1);

//画出第二层
//画物品框	
if(show_inventory_item == true){
	draw_sprite_part_ext(
		spr_inv_Item,0,0,0,inv_Item_width,inv_Item_height,inv_item_x ,
		inv_item_y,0.7,0.7,c_white,1
		);
	draw_sprite_part_ext(
		spr_inv_arrow,0,0,0,inv_arrow_width,inv_arrow_height,info_x_1_item_second-30,
		info_y_1_item_second +choose_2*40,1,1,c_white,1
		);
	for(var i = 0;i<8;i++){
		if(info_UI_second[# 1, i] >= 1){
			draw_text_color(info_x_1_item_second,info_y_1_item_second+i*40,
			info_UI_second[# 0, i],c ,c ,c ,c,1);
			draw_text_color(info_x_1_item_second+150,info_y_1_item_second+i*40,
			string(info_UI_second[# 1, i]),c ,c ,c ,c,1);
		}
	}
}

if(show_inventory_task == true){
	draw_sprite_part_ext(
		spr_inv_Item,0,0,0,inv_Item_width,inv_Item_height,inv_item_x ,
		inv_item_y,0.7,0.7,c_white,1
		);
}







