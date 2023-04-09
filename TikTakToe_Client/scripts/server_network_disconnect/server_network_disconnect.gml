// Script Desc 

function server_network_disconnect(){
	gml_pragma("forceinline");

	var _socket = net_async_get(NET_ASYNC_SOCKET);
	var _socket_to_client_id = global.connected_socket_to_player_id[? _socket];
	
	if(_socket_to_client_id != undefined && _socket_to_client_id.in_game){
		var _game_info = global.tictactoe_game[? _socket_to_client_id.on_game_id];
		var _socket_1 = _game_info.socket_player_1;
		var _socket_2 = _game_info.socket_player_2;
		
		var _loss_data = new netdata_server_close_class();
		if(_socket != _socket_1) _loss_data.send_buffer(_socket_1);
		else if(_socket != _socket_2) _loss_data.send_buffer(_socket_2);
	}
	
	global.connected_sockets_amount--;
}