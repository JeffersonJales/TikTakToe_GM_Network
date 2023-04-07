/// @desc TERMINATE SERVER TOO

var _server_close_data = new netdata_server_close_class();
var _buff = _server_close_data.create_network_buffer();
for(var i = 0; i < ds_list_size(global.connected_sockets); i++){
	var _socket = global.connected_sockets[| i];
	network_send_packet(_socket, _buff, buffer_get_size(_buff))
}

buffer_delete(_buff);
network_destroy(global.server_info_server_socket);
