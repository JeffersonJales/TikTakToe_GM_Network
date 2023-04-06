/// @desc Server communication
if(net_async_is_me(network_type_non_blocking_connect, client_socket)){
	
	network_trying_connect = false;

	if(net_async_get(NET_ASYNC_SUCESS)){
		network_socket = net_async_get(NET_ASYNC_SOCKET);
		room_goto(RoomGame);
	}
	
}


