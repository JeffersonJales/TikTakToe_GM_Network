// Script Desc 

function client_network_connect(){
	var _sucess = async_load[? NET_ASYNC_SUCESS] ?? true;
	if(_sucess){
		client_set_server_socket(async_load[? NET_ASYNC_SOCKET]);
		SatelliteBroadcast(NET_DATA.CONNECT, global.client_server_socket);
	}
	else 
		SatelliteBroadcast(NET_DATA.CANT_CONNECT);
}