function network_data_get_class(class_id){	
	switch(class_id){
		case CLIENT_DATA.SERVER_CLOSE: return new netdata_server_close_class();
	}
}
