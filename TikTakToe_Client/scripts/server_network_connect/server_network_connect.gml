// Script Desc 

function server_network_connect(){
	gml_pragma("forceinline");

	
	var _new_player_socket = net_async_get(NET_ASYNC_SOCKET);
	
	var _player = new client_connected_class(_new_player_socket);
	
	/// Found a new player to start game
	var _len = ds_list_size(global.connected_sockets_waiting_game);
	if(_len > 0){
		var _ind = irandom_range(0, _len - 1);
		var _random_player = global.connected_sockets_waiting_game[| _ind];
		
		ds_list_add(global.connected_sockets_in_game, _random_player, _player);
		ds_list_delete(global.connected_sockets_waiting_game, _ind);
		
		var _game = new game_connection(_random_player, _player);
		_game.game_start();
	}
	else{
		ds_list_add(global.connected_sockets_waiting_game, _player);
	}
		
	ds_list_add(global.connected_sockets, _new_player_socket);
	global.connected_socket_to_player[? _new_player_socket] = _player;
	global.connected_sockets_amount++;
}

function client_connected_class(socket_id) constructor{
	socket = socket_id;
	in_game = false;
	on_game_id = undefined;
}

function game_connection(player1, player2) constructor{
	client_x = choose(player1, player2);
	client_o = client_x == player1 ? player2 : player1;
	
	static game_start = function(){
		var _x = new netdata_game_start(true);
		var _o = new netdata_game_start(false);
		_x.send_buffer(client_x.socket);
		_o.send_buffer(client_o.socket);
	}
}

