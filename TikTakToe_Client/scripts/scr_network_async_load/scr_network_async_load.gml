
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


function net_async_get(str){
	return async_load[? str];
}

function net_async_exists(str){
	return async_load[? str] != undefined;
}
