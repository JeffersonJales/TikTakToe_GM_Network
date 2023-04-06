#macro SERVER_IP "192.168.15.9"
#macro SERVER_MAX_PLAYERS 2
#macro SERVER_SOCKET_TYPE network_socket_tcp

global.server_info = {
	current_players : 0,
	port : -1,
	socket_id : -1,
	list_socket_players : ds_list_create(),
}
