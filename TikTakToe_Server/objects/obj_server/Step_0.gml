/// @desc SERVER STILL ALIVE

if((last_time + interval) < current_time){
	last_time = current_time
	
	print(last_time, text, global.server_info.current_players, text_2);
	print("Server Port:", global.server_info.port);
}



