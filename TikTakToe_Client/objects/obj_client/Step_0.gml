/// @desc 
if(client_socket_is_connected()){
	if((last_time + interval) < current_time){
		last_time = current_time
	}
}