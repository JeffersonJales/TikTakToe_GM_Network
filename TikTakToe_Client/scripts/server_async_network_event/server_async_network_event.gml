// Script Desc 

function server_async_network_event(){
	gml_pragma("forceinline");
	
	var _type = async_load[? NET_ASYNC_TYPE];
	switch(_type){
		case network_type_data: server_network_data(); break;
		case network_type_connect: server_network_connect(); break;
		case network_type_disconnect: server_network_disconnect(); break;
	}
	
}