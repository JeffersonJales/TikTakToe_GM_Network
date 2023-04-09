/// @desc 

win = false;
plaing_is_x = false;
obj_instantiate_mark = obj_board_mark_o;

player_board_data = TTT_BOARD_DATA.NULL;

board_grid_info = ds_grid_create(3, 3);
board_grid_button = ds_grid_create(3, 3);

/// BOARD BUTTONS
buttons_board = instance_find_all(obj_button_board);

/// @param {Id.obj_button_board} button_id
on_button_board_click = function(button_id){
	if(button_id.marked) return;
	
	var _x = button_id.position_x;
	var _y = button_id.position_y;
	
	var _value = board_grid_info[# _x, _y];
	if(_value == TTT_BOARD_DATA.NULL){
		button_id.marked = true;
		instance_create_depth(button_id.x, button_id.y, button_id.depth - 1, obj_instantiate_mark);
		
		board_grid_info[# _x, _y] = player_board_data;
		
		var _tic_state = new netdata_tictactoe_data();
		ds_grid_copy(_tic_state.board_grid, board_grid_info);
		
		_tic_state.send_buffer(global.client_server_socket);
		_tic_state.__destructor__();
		game_fsm.change("wait_player");
	}
}

for(var i = 0; i < array_length(buttons_board); i++){
	buttons_board[i].set_enable(false);
	buttons_board[i].set_callback(on_button_board_click);
	board_grid_button[# buttons_board[i].position_x, buttons_board[i].position_y] = buttons_board[i];
}

/// TEXT STUFF
text_title = inst_game_text_title;
text_state = inst_game_text_state;

/// FSM SETUP
game_fsm = new SnowState("wait");
game_fsm.add("wait", {
	leave : function(){
		var _x = plaing_is_x ? "x" : "o";
		text_title.set_text(string_concat("Voce joga com", _x));
	}
});


game_fsm.add("wait_player", {
	enter : function(){
		text_state.set_text("ESPERANDO JOGADOR");
		with(obj_button_board) self.set_enable(false);
	}
})
game_fsm.add("my_turn", {
	enter : function(){
		text_state.set_text("SUA VEZ");
		with(obj_button_board) self.set_enable(true);
	}
})

game_fsm.add("game_end", {})

/// SATELLITE SETUP
satellite = Satellite();
satellite.add(NET_DATA.DISCONECT, function(){
	game_fsm.change("wait");
	room_goto(RoomInit);
}); 

satellite.add(NET_DATA.GAME_MATCH_START, function(broad){
	plaing_is_x = broad.starting;
	if(plaing_is_x){
		obj_instantiate_mark = obj_board_mark_x;
		player_board_data = TTT_BOARD_DATA.X;
		game_fsm.change("my_turn");
	}
	else{ 
		player_board_data = TTT_BOARD_DATA.O;
		game_fsm.change("wait_player");
	}
})
