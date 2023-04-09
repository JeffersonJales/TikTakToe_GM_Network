
enum TTT_BOARD_DATA { NULL = 0, X, O }

function netdata_tictactoe_data() : netdata_abstract_class() constructor{
	static ttt_game_unique_id = 0;	/// UNIQUE ID OF THE MATCH

	class_id = NET_DATA.GAME_SNAPSHOT;
	
	players_socket = array_create(2, -1);
	players_is_ready = array_create(2);
	
	netdata_add_var("player_turn", NETDATA_VAR_TYPE_BOOL, false);
	netdata_add_var("ttt_game_id", NETDATA_VAR_TYPE_U16, 0);
	netdata_add_var("board_grid", NETDATA_VAR_TYPE_GRID, ds_grid_create(3, 3));

	
	static set_game_id = function(game_index){
		game_index ??= ttt_game_unique_id++; 
		ttt_game_id = game_index
	}
	
	static set_player_socket = function(player_info, index){
		players_socket[index] = player_info.socket;
		player_info.in_game = true;
		player_info.on_game_id = ttt_game_id;
	}
	
	static matchmaking_done = function(){
		var _matchfound = new netdata_game_found();
		_matchfound.send_buffer_broadcast(players_socket);
		_matchfound.__destructor__();
	}
	
	static player_set_ready = function(socket){
		if(socket == players_socket[0]) players_is_ready[0] = true;
		if(socket == players_socket[1]) players_is_ready[1] = true;
		
		if(players_is_ready[0] && players_is_ready[1]){
			var _ready_and_starting = new netdata_game_match_start(true);
			var _ready_but_second = new netdata_game_match_start(false);
			
			_ready_and_starting.send_buffer(players_socket[0]);
			_ready_but_second.send_buffer(players_socket[1]);

			_ready_and_starting.__destructor__();
			_ready_but_second.__destructor__();
		}
	}
		
	static on_client_receive = __send_self;
	
	static on_server_receive = function(){
		
		player_turn = player_turn == 1 ? 0 : 1;
		
		
	}
}