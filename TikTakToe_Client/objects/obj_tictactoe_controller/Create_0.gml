/// @desc 

/// Board data
enum BOARD_DATA { NOTHING = 0, X, O}

win = false;
plaing_is_x = false;
player_board_data = BOARD_DATA.NOTHING;
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
	if(_value == BOARD_DATA.NOTHING){
		button_id.marked = true;
		
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

/// SATELLITE SETUP
satellite = Satellite();
satellite.add(MESSAGE_NET_CLIENT_LOST_CONNECTION, function(){
	game_fsm.change("wait");
	room_goto(RoomInit);
});

/// FSM SETUP
game_fsm = new SnowState("wait");
game_fsm.add("wait", {
	leave : function(){
		var _x = plaing_is_x ? "x" : "o";
		text_title.set_text(string_concat("Voce joga com", _x));
	}
});


game_fsm.add("wait_player", {})
game_fsm.add("my_turn", {})

game_fsm.add("game_end", {})
