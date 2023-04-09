
/// @param {Real} class_id
/// @return {Struct.netdata_abstract_class} 
function network_data_get_class(class_id){	
	switch(class_id){
		case NET_DATA.SERVER_CLOSE: return new netdata_server_lost_connection();
	
		case NET_DATA.GAME_FOUND:	return new netdata_game_found();
		case NET_DATA.GAME_PLAYER_IS_READY:	return new netdata_game_client_is_ready();
		
		case NET_DATA.GAME_MATCH_START:	return new netdata_game_match_start();
		case NET_DATA.GAME_SNAPSHOT: return new netdata_tictactoe_data();
	
	
		default:
			var _class = new netdata_abstract_class();
			_class.class_id = class_id;
			return _class;
	}
}
