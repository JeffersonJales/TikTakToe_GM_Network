function __debug_client_socket_force_connect(){
	global.client_data.try_connect();
}

function __debug_client_change_port(){
		if(network_socket >= 0 || network_trying_connect) return;
	
	var _str = get_string("INSIRA NOVO PORT DO SERVIDOR", "");
	try{
		global.server_info.port = real(_str);
	}
	catch(err){
		show("Não foi possível converter", _str, "em um número real");
		print(err)
	}
}