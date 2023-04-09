// Script Desc 

function array_from_list(ds_list){
	var _len = ds_list_size(ds_list);
	var _arr = array_create(_len);
	
	for(var i = 0; i < _len; i++){
		_arr[i] = ds_list[| i];
	}
	
	return _arr;
	
}