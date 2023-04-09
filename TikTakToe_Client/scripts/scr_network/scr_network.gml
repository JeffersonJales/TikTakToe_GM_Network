
/// GENERAL
#macro NET_ASYNC_TYPE "type"	/// The type of socket connection
#macro NET_ASYNC_ID "id"			/// The socket id
#macro NET_ASYNC_IP "ip"			/// 
#macro NET_ASYNC_PORT "port"	

/// When connecting / disconnecting
#macro NET_ASYNC_SOCKET "socket"
#macro NET_ASYNC_SUCESS "succeeded"

/// When recieving data
#macro NET_ASYNC_BUFFER "buffer"
#macro NET_ASYNC_SIZE "size"
#macro NET_ASYNC_MESSAGE_TYPE "message_type"

function network_send_packet_simple(socket, buffer){
	var _size = buffer_get_size(buffer);
	print("Buffer packet _size", _size, " bytes");
	return network_send_packet(socket, buffer, _size);
}

function network_send_packet_data(class_constructor, socket = global.client_server_socket){
	var _class = new class_constructor();
	_class.send_buffer(socket);
	_class.__destructor__();
}

function network_send_packet_data_enum(net_data_enum, socket = global.client_server_socket){
	var _class = network_data_get_class(net_data_enum)
	_class.send_buffer(socket);
	_class.__destructor__();
}