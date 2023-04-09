/// @desc TERMINATE SERVER TOO

var _server_close_data = new netdata_server_lost_connection();
var _arr = array_from_list(global.connected_sockets);
_server_close_data.send_buffer_broadcast(_arr,, true);
network_destroy(global.server_info_server_socket);
