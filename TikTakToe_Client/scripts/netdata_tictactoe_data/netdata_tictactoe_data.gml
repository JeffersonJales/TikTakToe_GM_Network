// Script Desc 

enum TTT_BOARD_DATA { NULL = 0, X, O }

function netdata_tictactoe_data(player1_socket, player2_socket) : netdata_abstract_class() constructor{
	static ttt_game_unique_id = 0;	/// UNIQUE ID OF THE MATCH

	class_id = NET_DATA.TTT_GAME_SNAPSHOT;
	ttt_game_id = ttt_game_unique_id++;
	
	socket_player_1 = player1_socket.socket; socket_player_2 = player2_socket.socket;
	player1_socket.in_game = true; player1_socket.on_game_id = ttt_game_id;
	player2_socket.in_game = true; player2_socket.on_game_id = ttt_game_id;
	
	
	netdata_add_var("board_grid", NETDATA_VAR_TYPE_GRID, ds_grid_create(3, 3));
	
	static matchmaking_done = function(){
		var _matchfound = new netdata_game_start();
		_matchfound.send_buffer_broadcast([socket_player_1, socket_player_2],, true);
		delete _matchfound;
	}
	
}