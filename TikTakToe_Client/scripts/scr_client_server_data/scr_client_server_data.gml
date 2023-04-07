enum CLIENT_DATA {
	CONNECT = 0,
	DISCONECT,
	SERVER_CLOSE,
}

function client_data_get_class(class_id){	
	switch(class_id){
		case CLIENT_DATA.SERVER_CLOSE: return new net_server_closed();
	}
}


function network_data_get_type(buffer_data){
	var _type = 0;
	
	buffer_seek(buffer_data, buffer_seek_start, 0);
	_type = buffer_read(buffer_data, buffer_u8);
	
	return _type;	
}

function network_abstract_class(id_class) constructor {
	class_id = CLIENT_DATA.SERVER_CLOSE;
	
	static read_network_buffer = function(buffer){}		/// 
	static create_network_buffer = function(){ return undefined; }	///	
}

function net_server_closed(id_class) : network_abstract_class(id_class) constructor{
	
	static read_network_buffer = function(buffer){
		
	}
	
	static create_network_buffer = function(){ 
		var _buff = buffer_create(32, buffer_fixed, 1);
		buffer_write(_buff, buffer_u8, class_id);
		return _buff;
	}	
}