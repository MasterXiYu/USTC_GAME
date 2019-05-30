randomize();
room_goto_next();
Debug = false;

blackAlphy = 0;
spawnRoom = -1;
spawnX = 0;
spawnY = 0;
spawnplayerFacing = -1;

doTransition = false;

enum dir {
	right = 0,
	left = 180,
	up = 90,
	down = 270,
}

global.game_width = 800;
global.game_height = 600;

display_set_gui_size(global.game_width,global.game_height);