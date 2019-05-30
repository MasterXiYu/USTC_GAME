//draw duihua
depth = -1;//深度
scale = 2;//拉伸
show_inventory = false;//是否显示
show_inventory_item = false;
show_inventory_task = false;

gui_weight = display_get_gui_width();
gui_height = display_get_gui_height();

spr_inv_UI = spr_inventor_UI;
spr_inv_Item = spr_inventor_Item;
spr_inv_arrow = spr_inventor_arrow;

inv_UI_width = 200;
inv_UI_height = 200;
inv_Item_width = 400;
inv_Item_height = 600;
inv_arrow_width = 40;
inv_arrow_height = 40;
//箭头位置
choose_1 = 0;
choose_2 = 0;

inv_UI_x = (gui_weight * 0.5) - (inv_UI_width * 0.5*scale)-100;
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5*scale)+100;
inv_item_x = inv_UI_x+250;
inv_item_y = inv_UI_y-100;

info_x_1_name = inv_UI_x + 30;//第一栏初始坐标
info_y_1_name = inv_UI_y + 20; 
info_x_1_arrow = inv_UI_x + 20;
info_y_1_arrow = inv_UI_y + 20 + 50;
info_x_1_item_second = inv_item_x + 40;//第二栏初始坐标
info_y_1_item_second = inv_item_y + 30;
info_x_1_arrow_2 = inv_item_x + 30;
info_y_1_arrow_2 = inv_item_x + 40;

ds_player_UI_print = ds_grid_create( 2, 3);
ds_player_UI_print[# 0, 0]="姓名";
ds_player_UI_print[# 1, 0]="习羽";
ds_player_UI_print[# 0, 1]="物品";
ds_player_UI_print[# 0, 2]="任务";

ds_player_item = ds_grid_create( 2, 10);
ds_player_item[# 0, 0]="通知书";
ds_player_item[# 0, 1]="身份证";
ds_player_item[# 0, 2]="两寸照片";
ds_player_item[# 0, 3]="行李";
ds_player_item[# 0, 4]="手机";
ds_player_item[# 0, 5]="体检单";
ds_player_item[# 0, 6]="未知";
ds_player_item[# 0, 7]="名字";

ds_player_item[# 1, 0]= 1;
ds_player_item[# 1, 1]= 1;
ds_player_item[# 1, 2]= 1;
ds_player_item[# 1, 3]= 1;
ds_player_item[# 1, 4]= 1;
ds_player_item[# 1, 5]= 1;
ds_player_item[# 1, 6]= 1;
ds_player_item[# 1, 7]= 1;





