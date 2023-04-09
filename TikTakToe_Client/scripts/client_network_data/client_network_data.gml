// Script Desc 

function client_network_data(){
	var _buffer = async_load[? NET_ASYNC_BUFFER];
	var _type = network_data_get_type(_buffer);	
	var _class = network_data_get_class(_type);
	
	_class.read_network_buffer(_buffer);
	_class.on_client_receive();
	_class.__destructor__();
}