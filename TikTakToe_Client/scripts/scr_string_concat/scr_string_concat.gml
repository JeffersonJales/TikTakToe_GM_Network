function string_concat(){
	var _str = "";
	
	for(var i = 0; i < argument_count; i++){
		_str += string(argument[i]) + " "; 
	}
	
	return _str;
}

function print(){
	var _str = "";
	
	for(var i = 0; i < argument_count; i++){
		_str += string(argument[i]) + " "; 
	}
	
	show_debug_message(_str);
}
	
function show(){
	var _str = "";
	
	for(var i = 0; i < argument_count; i++){
		_str += string(argument[i]) + " "; 
	}
	
	show_message(_str);
}