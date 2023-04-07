/// @desc CONNECTION HANDLERS
var _type = net_async_get(NET_ASYNC_TYPE);
switch(_type){
	case network_type_data: server_netdata_receive(); break;
	case network_type_connect: server_client_connect(); break;
	case network_type_disconnect: server_cliente_disconnect(); break;
}
