// Script Desc 

function netdata_game_found() : netdata_abstract_class() constructor{
	class_id = NET_DATA.GAME_FOUND;
	static on_client_receive = __send_self;
}