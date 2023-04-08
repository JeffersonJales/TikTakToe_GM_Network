/// @desc DISABLE DRAW + CREATE SERVER


/// Server is Alive checker
text = " I'm still alive and I have ";
text_2 = " players connected!";

interval = 5000; // as milisseconds
last_time = 0;

/// Server Create
var port = SERVER_PORT;
var server = network_create_server(SERVER_SOCKET_TYPE, port, SERVER_MAX_PLAYERS);
while (server < 0 && port < 65535){
  port++
  server = network_create_server(SERVER_SOCKET_TYPE, port, SERVER_MAX_PLAYERS);
}

global.server_info_port = port;
global.server_info_server_socket = server;


