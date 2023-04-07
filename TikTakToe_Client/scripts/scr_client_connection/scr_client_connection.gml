// Script Desc 
function client_socket_class() constructor {
	socket_id = network_create_socket(SERVER_SOCKET_TYPE);
	trying_connect = false;
	server_socket_id = -1;
	
	
	
	/// Start a connection with the server
	static try_connect = function(){
		if(server_socket_id >= 0 || trying_connect) return;
		print("Connect With server. IP: ", SERVER_IP,  "Port",  global.server_info.port);

		trying_connect = true;
		network_connect_async(socket_id, SERVER_IP, global.server_info.port);
	}
	
	#region Getters / Setters
	
	/// Check if the client is connected with the server
	static is_connected = function(){
		return server_socket_id >= 0
	}
	
	static set_server_socket = function(socket_id){
		server_socket_id = socket_id;
		trying_connect = false;
	}
	#endregion
	
	#region Async event functions
	
	/// The async handler event of this client
	static async_network = function(){
		
		if(net_async_get(NET_ASYNC_ID) != socket_id) return;

		var _type = net_async_get(NET_ASYNC_TYPE);

		switch(_type){
			case network_type_connect:
			case network_type_non_blocking_connect: async_network_on_connect();
				break;
				
			case network_type_disconnect: async_network_on_disconect();
				break;
			
			case network_type_data: async_network_on_data();
				break;
		}
	}
	
	/// When this client connects with the server
	static async_network_on_connect = function(){
		var _sucess = net_async_get(NET_ASYNC_SUCESS) ?? true;
		if(_sucess){
			set_server_socket(net_async_get(NET_ASYNC_SOCKET));
			SatelliteBroadcast(MESSAGE_NET_CLIENT_CONNECT_ON_SERVER, server_socket_id);
		}
	}
	
	/// When this client is disconnected from the server
	static async_network_on_disconect = function(){
		network_destroy(server_socket_id);
		set_server_socket(-1);
	}
	
	/// When this client receives data
	static async_network_on_data = function(){
		var _buffer = net_async_get(NET_ASYNC_BUFFER);
		var _type = network_data_get_type(_buffer);
		client_data_execute(_type, _buffer);
	}

	#endregion

	/// Destroy all struct data from the client
	static clean_up = function(){
		network_destroy(socket_id);
		
		if(server_socket_id >= 0) 
			network_destroy(server_socket_id);
	}
}
global.client_data = new client_socket_class();
function client_socket_network(){ global.client_data.async_network(); }
function client_socket_is_connected(){ return global.client_data.is_connected(); } 
function client_socket_connect(){ global.client_data.try_connect(); }

function client_socket_reset(){
	global.client_data.clean_up();
	global.client_data = new client_socket_class();
}