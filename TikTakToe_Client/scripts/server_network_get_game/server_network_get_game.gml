// Script Desc 

/// @return {Struct.netdata_tictactoe_data} 
function server_network_get_game(socket){
	var _player = global.connected_socket_to_player_id[? socket];
	
	if(_player == undefined || _player.on_game_id == undefined) 
		return undefined;
	
	return global.tictactoe_game[? _player.on_game_id];
}