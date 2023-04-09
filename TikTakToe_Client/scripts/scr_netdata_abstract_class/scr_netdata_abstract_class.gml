/// 

function netdata_abstract_class() constructor {
	
	class_id = NET_DATA.UNKNOW;
	netdata_var_type = {};
	netdata_var_type_read = {};
	netdata_var_type_write = {};
	netdata_var_type_destructor = {}
	netdata_var_type_order = [];
	
	#region FUNCTIONS 
	
	/// Creates a buffer with this class info
	/// @func create_network_buffer 
	static create_network_buffer = function(){
		var _buff = buffer_create(1, buffer_grow, 1);
		var _callback = undefined;
		
		for(var i = 0; i < array_length(netdata_var_type_order); i++){
			_callback = netdata_var_type_write[$ netdata_var_type_order[i]];
			_callback(_buff, netdata_var_type[$ netdata_var_type_order[i]], variable_struct_get(self, netdata_var_type_order[i]));
		}
		
		return _buff;
	}		
	
	/// Set the seeker and get the type
	/// @func read_network_buffer
	static read_network_buffer = function(buffer){
		buffer_seek(buffer, buffer_seek_start, 0);
		var _callback = undefined;
		
		for(var i = 0; i < array_length(netdata_var_type_order); i++){
			_callback = netdata_var_type_read[$  netdata_var_type_order[i]];
			_callback(buffer, self, netdata_var_type_order[i]);
		}
	}
	
	/// @func send_buffer
	static send_buffer = function(socket, buffer = create_network_buffer(), destroy_buffer = true){
		network_send_packet_simple(socket, buffer);
		if(destroy_buffer) buffer_delete(buffer);
	}
	
	/// @func send_buffer_broadcast
	static send_buffer_broadcast = function(arr_socket, buffer = create_network_buffer(), destroy_buffer = true){
		for(var i = 0; i < array_length(arr_socket); i++){
			network_send_packet_simple(arr_socket[i], buffer);
		}
		
		if(destroy_buffer) buffer_delete(buffer);
	}
	
	/// The REAL destructor for the class
	static __destructor__ = function(){
		var _keys = variable_struct_get_names(netdata_var_type_destructor);
		var _callback = undefined;
		for(var i = 0; i < array_length(_keys); i++){
			_callback = netdata_var_type_destructor[$ _keys[i]];
			_callback(variable_struct_get(self, _keys[i]));
		}
	}
	
	/// @func netdata_add_var
	static netdata_add_var = function(var_str, type, value){
		variable_struct_set(self, var_str, value);
		variable_struct_set(netdata_var_type, var_str, __network_get_buffer_type(type));
		variable_struct_set(netdata_var_type_read, var_str, __netdata_get_read_callback(type));
		variable_struct_set(netdata_var_type_write, var_str, __netdata_get_write_callback(type));
		netdata_set_type_destructor(type, var_str);
		array_push(netdata_var_type_order, var_str);
	}
	
	static netdata_set_type_destructor = function(var_type, var_key){
		switch(var_type){
			case NETDATA_VAR_TYPE_GRID: 
				netdata_var_type_destructor[$ var_key] = ds_grid_destroy;
				break;
		}
	}
	
	#endregion
	
	/// PLEASE OVERWRITE THIS
	static on_client_receive = do_nothing;
	static on_server_receive = do_nothing;
	static __send_self = function(){ SatelliteBroadcast(class_id, self); }
	
	/// 
	netdata_add_var("class_id", NETDATA_VAR_TYPE_U8, NET_DATA.UNKNOW);
}

function __network_get_buffer_type(var_type){
	switch(var_type){
		case NETDATA_VAR_TYPE_U8:		return buffer_u8;
		case NETDATA_VAR_TYPE_U16:	return buffer_u16;
		case NETDATA_VAR_TYPE_U32:	return buffer_u32;
		case NETDATA_VAR_TYPE_U64:	return buffer_u64;
		
		case NETDATA_VAR_TYPE_S8:		return buffer_s8;
		case NETDATA_VAR_TYPE_S16:	return buffer_s16;
		case NETDATA_VAR_TYPE_S32:	return buffer_s32;
		case NETDATA_VAR_TYPE_F16:	return buffer_f16;
		case NETDATA_VAR_TYPE_F32:	return buffer_f32;
		case NETDATA_VAR_TYPE_F64:	return buffer_f64;
				
		case NETDATA_VAR_TYPE_BOOL: return buffer_bool;
		case NETDATA_VAR_TYPE_TEXT: return buffer_text;
		case NETDATA_VAR_TYPE_STRING: return buffer_string;
			
		default: return var_type;
	}
}

function __netdata_get_read_callback(var_type){
		switch(var_type){
			case NETDATA_VAR_TYPE_GRID: return __netdata_read_grid;
			default: return __netdata_read_default;
		}
	}

function __netdata_get_write_callback(var_type){
		switch(var_type){
			case NETDATA_VAR_TYPE_GRID: return __netdata_write_grid;
			default: return __netdata_write_default;
		}
	}

/// DEFAULT VALUES
function __netdata_write_default(buffer, type, value){
	buffer_write(buffer, type, value);
}
function __netdata_read_default(buffer, struct_class, var_key){
	var _value = buffer_read(buffer, struct_class.netdata_var_type[$ var_key]);
	struct_class[$ var_key] = _value;
}

/// DS GRID VALUES
function __netdata_write_grid(buffer, type, value){
	buffer_write(buffer, buffer_string, ds_grid_write(value));
}
function __netdata_read_grid(buffer, struct_class, var_key){
	var _grid = struct_class[$ var_key];
	var _str = buffer_read(buffer, buffer_string);
	
	ds_grid_read(_grid, _str);
}

