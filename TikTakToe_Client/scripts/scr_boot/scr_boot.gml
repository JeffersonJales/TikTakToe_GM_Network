// Script Desc 

function boot_game(){
	instance_create_depth(0, 0, 0, obj_client);
	instance_create_depth(0, 0, 0, obj_debugger);
	room_goto(RoomMenu);
}