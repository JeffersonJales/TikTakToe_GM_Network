// Script Desc 

global.client_socket_id = network_create_socket(SERVER_SOCKET_TYPE);
global.client_server_socket = -1;
global.client_trying_connect = false;


function client_set_server_socket(socket_id){
	global.client_server_socket = socket_id;
	global.client_trying_connect = false;
}

function client_try_coonect_server(){
	if(client_socket_is_connected() || global.client_trying_connect) return;
	
	global.client_trying_connect = true;
	network_connect_async(global.client_socket_id, global.server_ip, global.server_info_port);
}

function client_socket_is_connected(){ 
	return global.client_server_socket >= 0;
} 
