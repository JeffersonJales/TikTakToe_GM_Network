#macro SERVER_IP "192.168.15.9"
#macro SERVER_MAX_PLAYERS 4
#macro SERVER_SOCKET_TYPE network_socket_tcp
#macro SERVER_PORT 6510

global.server_ip = SERVER_IP;
global.server_info_port = SERVER_PORT;
global.server_info_server_socket = -1;

global.connected_sockets_amount = 0;

global.connected_sockets = ds_list_create();
global.connected_sockets_in_game = ds_list_create();
global.connected_sockets_waiting_game = ds_list_create();

global.connected_socket_to_player_id = ds_map_create();
global.tictactoe_game = ds_map_create();
