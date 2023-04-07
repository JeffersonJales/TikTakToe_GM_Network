/// @desc TERMINATE SERVER TOO

var _server_clode_data = new net_server_closed();
var _buff = _server_clode_data.create_network_buffer();
var _socket;
for(var i = 0; i < ds_list_size(global.server_info.list_socket_players); i++){
	_socket_player = global.server_info.list_socket_players[| i];
	network_send_packet(_socket_player, _buff, buffer_get_size(_buff))
}

buffer_delete(_buff);
network_destroy(global.server_info.socket_id);
