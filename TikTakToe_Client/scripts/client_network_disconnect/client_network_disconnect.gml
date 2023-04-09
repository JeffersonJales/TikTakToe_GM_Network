// Script Desc 

function client_network_disconnect(){
	network_destroy(global.client_server_socket);
	client_set_server_socket(-1);
}