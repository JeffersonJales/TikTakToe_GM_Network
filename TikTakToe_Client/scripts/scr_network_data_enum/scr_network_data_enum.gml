#macro NETWORK_BUFFER_SIZE_S8 1 
#macro NETWORK_BUFFER_SIZE_S16 2
#macro NETWORK_BUFFER_SIZE_S32 4

#macro NETWORK_BUFFER_SIZE_F16 2
#macro NETWORK_BUFFER_SIZE_F32 4
#macro NETWORK_BUFFER_SIZE_F64 8

#macro NETWORK_BUFFER_SIZE_U8 1
#macro NETWORK_BUFFER_SIZE_U16 2
#macro NETWORK_BUFFER_SIZE_U32 4
#macro NETWORK_BUFFER_SIZE_U64 8

#macro NETWORK_BUFFER_SIZE_BOOL 1
#macro NETWORK_BUFFER_SIZE_TEXT 0
#macro NETWORK_BUFFER_SIZE_STRING 0

#macro NETDATA_VAR_TYPE_U8			"NETDATA_U8"
#macro NETDATA_VAR_TYPE_U16			"NETDATA_U16"
#macro NETDATA_VAR_TYPE_U32			"NETDATA_U32"
#macro NETDATA_VAR_TYPE_U64			"NETDATA_U64"
																
#macro NETDATA_VAR_TYPE_S8			"NETDATA_S8"
#macro NETDATA_VAR_TYPE_S16			"NETDATA_S16"
#macro NETDATA_VAR_TYPE_S32			"NETDATA_S32"
																
#macro NETDATA_VAR_TYPE_F16			"NETDATA_F16"
#macro NETDATA_VAR_TYPE_F32			"NETDATA_F32"
#macro NETDATA_VAR_TYPE_F64			"NETDATA_F64"

#macro NETDATA_VAR_TYPE_TEXT		"NETDATA_TEXT"
#macro NETDATA_VAR_TYPE_BOOL		"NETDATA_BOOL"
#macro NETDATA_VAR_TYPE_STRING	"NETDATA_STRING"

#macro NETDATA_VAR_TYPE_GRID		"NETDATA_GRID"


enum NET_DATA {
	
	/// Dont know the type of package 
	UNKNOW = 0,
	
	/// SERVER CLIENT CONNECTION
	CONNECT,
	DISCONECT,
	CANT_CONNECT,
	
	/// CLIENT - SERVER DATA 
	SERVER_CLOSE,

	/// TIC-TAC-TOE DATA
	GAME_FOUND,
	GAME_PLAYER_IS_READY,
	GAME_MATCH_START,
	GAME_BUTTON_INPUT,
	GAME_SNAPSHOT,
}


