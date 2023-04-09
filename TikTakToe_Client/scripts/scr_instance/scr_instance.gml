
/// @param {Asset.GMObject} obj
/// @return {Array<Id.Instance>}
function instance_find_all(obj){
	var _num = instance_number(obj);
	var _arr = array_create(_num);
	
	for(var i = 0; i < _num; i++){
		_arr[i] = instance_find(obj, i);
	}
	
	return _arr;
}