
/// 
function netdata_server_lost_connection() : netdata_abstract_class() constructor{
	class_id = NET_DATA.SERVER_CLOSE;
	
	static on_client_receive = function(){
		client_network_disconnect();
		SatelliteBroadcast(NET_DATA.DISCONECT, self); 
	}
}