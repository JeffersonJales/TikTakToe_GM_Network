/// @desc 
x = display_get_gui_width() * 0.5;
y = display_get_gui_height() * 0.5;

/// FSM SETUP
text_display = "PRESSIONE ESPAÇO PARA COMEÇAR";
menu_fsm = new SnowState("wait", true);
menu_fsm.event_set_default_function("step", function(){});
menu_fsm.event_set_default_function("on_login_server", function(){});
menu_fsm.event_set_default_function("on_lost_connection", function(){ menu_fsm.change("wait"); });

menu_fsm.add("wait", {
	enter : function(){
		text_display = "PRESSIONE ESPAÇO PARA CONECTAR";
		
		if(client_socket_is_connected()) 
			menu_fsm.change("wait_player");
	},
	
	step : function(){
		if(keyboard_check_pressed(vk_space)){
			menu_fsm.change("wait_connect");
			client_socket_connect();
		}
	}
})

menu_fsm.add("wait_player", {
	enter : function(){
		text_display = "CONECTADO. ESPERANDO OUTRO JOGADOR.";
	},
	
})
menu_fsm.add("wait_connect", {
	enter : function(){
		text_display = "ESPERANDO CONEXÃO";
	}, 
	on_login_server : function(){
		menu_fsm.change("wait_player");
	}
})
menu_fsm.add("player_found", {
	enter : function(){
		alarm[0] = 60;
		text_display = "JOGADOR ENCONTRADO!!!";
	}
})


satellite = Satellite();
satellite.
	add(MESSAGE_NET_CLIENT_CONNECT_ON_SERVER, function(){ menu_fsm.on_login_server() }).
	add(MESSAGE_NET_CLIENT_LOST_SERVER, function(){ menu_fsm.on_lost_connection() }). 
	add(MESSAGE_CLIENT_START_GAME, function(){ menu_fsm.change("player_found")})