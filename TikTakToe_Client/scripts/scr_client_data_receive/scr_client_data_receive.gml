
function client_data_execute(type, buffer = net_async_get(NET_ASYNC_BUFFER)){
	switch(type){
		case CLIENT_DATA.SERVER_CLOSE: 
			global.client_data.async_network_on_disconect();
			SatelliteBroadcast(MESSAGE_NET_CLIENT_LOST_SERVER); 
			break;
	}
}