// Script Desc 

#macro BOOT_GAME_CALL boot_game
#macro Server:BOOT_GAME_CALL boot_server

function boot_game(){
	instance_create_depth(0, 0, 0, obj_client);
	instance_create_depth(0, 0, 0, obj_debugger);
	room_goto(RoomMenu);
}

function boot_server(){
	draw_enable_drawevent(false);
	instance_create_depth(0,0,0, obj_server);
}