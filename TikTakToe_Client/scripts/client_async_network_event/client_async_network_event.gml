// Script Desc 

function client_async_network_event(){
	if(async_load[? NET_ASYNC_ID] != global.client_socket_id ) return;

	var _type = async_load[? NET_ASYNC_TYPE];

	switch(_type){
		case network_type_data: 
			client_network_data();
			break;
				
		case network_type_connect:
		case network_type_non_blocking_connect: 
			client_network_connect();
			break;
				
		case network_type_disconnect: 
			client_network_disconnect();
			break;
	}
}