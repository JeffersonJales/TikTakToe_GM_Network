// Script Desc 

function netdata_game_match_start(player_is_starting = false) : netdata_abstract_class() constructor{
	class_id = NET_DATA.GAME_MATCH_START;
	
	netdata_add_var("starting", NETDATA_VAR_TYPE_BOOL, player_is_starting); 
	
	static on_client_receive = __send_self;
}