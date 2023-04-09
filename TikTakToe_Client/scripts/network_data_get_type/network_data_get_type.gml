#macro NETWORK_DATA_TYPE_VAR_TYPE buffer_u8

function network_data_get_type(buffer_data){
	var _type = 0;
	
	buffer_seek(buffer_data, buffer_seek_start, 0);
	_type = buffer_read(buffer_data, NETWORK_DATA_TYPE_VAR_TYPE);
	
	return _type;	
}