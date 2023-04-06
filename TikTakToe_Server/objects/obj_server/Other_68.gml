/// @desc CONNECTION HANDLERS
var _type = net_async_get(NET_ASYNC_TYPE);
switch(_type){
	case network_type_data:
		break;
	
	case network_type_connect:
		var _new_player_socket = net_async_get(NET_ASYNC_SOCKET);
		ds_list_add(global.server_info.list_socket_players, _new_player_socket);
		global.server_info.current_players++;
		
		break;
		
	case network_type_disconnect:
		var _player_disconect_socket = net_async_get(NET_ASYNC_SOCKET);
		var _index = ds_list_find_index(global.server_info.list_socket_players, _player_disconect_socket);
		
		if(_index >= 0){
			var _socket = global.server_info.list_socket_players[| _index];
			network_destroy(_socket);
			ds_list_delete(global.server_info.list_socket_players, _index);
			global.server_info.current_players--;
		}

		break;
		
	case network_type_non_blocking_connect:
		break;
}
