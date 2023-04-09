/// @desc 
x = display_get_gui_width() * 0.5;
y = display_get_gui_height() * 0.5;

text_display = inst_menu_text_context;
button_game_exit = inst_menu_button_exit;
button_search_match = inst_menu_button_search_match;
button_create_server = inst_menu_button_create_server;



try_connect = function(){
	menu_fsm.change("wait_connect");
}

create_server = function(){
	menu_fsm.change("server_create");
}

/// FSM SETUP
menu_fsm = new SnowState("wait", false);
menu_fsm.event_set_default_function("step", function(){});
menu_fsm.event_set_default_function("on_login_server", function(){});
menu_fsm.event_set_default_function("on_lost_connection", function(){ menu_fsm.change("wait"); });
menu_fsm.event_set_default_function("on_player_found", do_nothing);

menu_fsm.add("wait", {
	enter : function(){
		text_display.set_text("");
		button_search_match.set_enable(true);
		button_create_server.set_enable(true);
	},
	leave : function(){
		button_search_match.set_enable(false);
		button_create_server.set_enable(false);
	}
})

menu_fsm.add("wait_player", {
	enter : function(){
		text_display.set_text("Conectado. Esperando outro jogador");
	},
	on_player_found : function(){
		alarm[0] = 60;
		text_display.set_text("Jogador encontrado!!!");
	}
})
menu_fsm.add("wait_connect", {
	enter : function(){
		client_try_coonect_server();
		text_display.set_text("Conectando...");
	}, 
	on_login_server : function(){
		menu_fsm.change("wait_player");
	},
	on_player_found : function(){
		alarm[0] = 60;
		text_display.set_text("Jogador encontrado!!!");
	}
})

menu_fsm.add("server_create", {
	enter : function(){
		//var _ip = network_resolve("127.0.0.1");
		//global.server_ip = _ip;
		instance_create_depth(0,0,0, obj_server);
		client_try_coonect_server();
		text_display.set_text("Criando servidor");
	},
	on_login_server : function(){
		menu_fsm.change("server_wait_player");
	}
})
menu_fsm.add("server_wait_player", {
	enter : function(){
		text_display.set_text("Esperando jogador conectar.");
	},
	on_player_found : function(){
		alarm[0] = 60;
		text_display.set_text("Jogador encontrado!!!");
	}
})

satellite = Satellite();
satellite.
	add(NET_DATA.CONNECT, function(){ menu_fsm.on_login_server() }).
	add(NET_DATA.DISCONECT, function(){ menu_fsm.on_lost_connection() }). 
	add(NET_DATA.CANT_CONNECT, function(){ menu_fsm.on_lost_connection() }). 
	add(NET_DATA.GAME_FOUND, function(){ menu_fsm.on_player_found() })