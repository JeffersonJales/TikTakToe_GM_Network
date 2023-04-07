/// 
function netdata_abstract_class() constructor {
	class_id = CLIENT_DATA.UNKNOW;
	
	/// The REAL constructor for the class 
	static __init__ = function(){}
	
	/// The REAL destructor for the class
	static __destructor__ = function(){}
	
	/// Read the given buffer to overwrite the 
	static read_network_buffer = function(buffer){
		__read_buffer_id(buffer);
	}
	
	/// Creates a buffer with this class info
	static create_network_buffer = function(){
		var _buff = buffer_create(NETWORK_BUFFER_SIZE_U8, buffer_fixed, 1);
		buffer_write(_buff, NETWORK_DATA_TYPE_VAR_TYPE, class_id);
		return _buff;
	}		
	
	/// Set the seeker and get the type
	static __read_buffer_id = function(buffer){
		buffer_seek(buffer, buffer_seek_start, 0);
		class_id = buffer_read(buffer, NETWORK_DATA_TYPE_VAR_TYPE);
	}
}