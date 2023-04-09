// Script Desc 

enum TTT_BOARD_DATA { NULL = 0, X, O }

function netdata_tictactoe_data() : netdata_abstract_class() constructor{
	class_id = NET_DATA.TTT_GAME_SNAPSHOT;
	static ttt_game_unique_id = 0;
	
	netdata_add_var("ttt_game_id", NETDATA_VAR_TYPE_U16, ttt_game_unique_id++);
	netdata_add_var("board_grid", NETDATA_VAR_TYPE_GRID, ds_grid_create(3, 3));
}