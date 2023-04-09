// Script Desc 

function netdata_game_client_is_ready() : netdata_abstract_class() constructor{
	class_id = NET_DATA.GAME_PLAYER_IS_READY;
	
	static on_server_receive = function(){
		var _socket = async_load[? NET_ASYNC_ID];
		var _game = server_network_get_game(_socket);
		
		if(_game != undefined)
			_game.player_set_ready(_socket);
	}
}