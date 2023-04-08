/// @desc SETUP BUTTOn
image_speed = 0;


enable = true;	
set_enable = function(boolean){
	enable = boolean;
	image_blend = enable ? c_white : c_dkgray;
}

/// BUTTON BEHAVIOR
on_click_callback = do_nothing;
on_enter_callback = do_nothing;
on_leave_callback = do_nothing;

set_callback = function(on_click, on_enter = do_nothing, on_leave = do_nothing){
	on_click_callback = on_click;
	on_enter_callback = on_enter;
	on_leave_callback = on_leave;
}
	
if(btn_script != undefined)
	on_click_callback = btn_script;

/// TEXT IN BUTTOn
text_instance = noone;
if(btn_text != "") 
	btn_text_instance = instance_create_depth(x, y, depth, obj_text, {string_text : btn_text});

	