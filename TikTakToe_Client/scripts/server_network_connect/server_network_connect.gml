// Script Desc 

function server_network_connect(){
	gml_pragma("forceinline");

	
	var _new_player_socket = async_load[? NET_ASYNC_SOCKET];
	
	var _player = new server_client_data(_new_player_socket);
	
	/// Found a new player to start game
	var _len = ds_list_size(global.connected_sockets_waiting_game);
	if(_len > 0){
		var _ind = irandom_range(0, _len - 1);
		var _random_player = global.connected_sockets_waiting_game[| _ind];
		
		ds_list_add(global.connected_sockets_in_game, _random_player, _player);
		ds_list_delete(global.connected_sockets_waiting_game, _ind);
		
		var _first_player = choose(_random_player, _player);
		var _second_player = _first_player == _random_player ? _player : _random_player;
		
		var _game = new netdata_tictactoe_data();
		_game.set_game_id();
		_game.set_player_socket(_first_player, 0);
		_game.set_player_socket(_second_player, 1);
		
		_game.matchmaking_done();
		
		global.tictactoe_game[? _game.ttt_game_id] = _game;
	}
	else{
		ds_list_add(global.connected_sockets_waiting_game, _player);
	}
		
	ds_list_add(global.connected_sockets, _new_player_socket);
	global.connected_socket_to_player_id[? _new_player_socket] = _player;
	global.connected_sockets_amount++;
}


