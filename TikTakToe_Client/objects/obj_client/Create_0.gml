/// @desc 
client_socket = network_create_socket(SERVER_SOCKET_TYPE);
network_socket = -1; 
network_trying_connect = false;

network_change_port = function(){
	if(network_socket >= 0 || network_trying_connect) return;
	
	var _str = get_string("INSIRA NOVO PORT DO SERVIDOR", "");
	try{
		global.server_info.port = real(_str);
	}
	catch(err){
		show("Não foi possível converter", _str, "em um número real");
	}
}

connect_with_server = function(){
	if(network_socket >= 0 || network_trying_connect) return;
	
	print("Connect With server. IP: ", SERVER_IP,  "Port",  global.server_info.port);
	
	network_trying_connect = true;
	network_connect_async(client_socket, SERVER_IP, global.server_info.port);
}
