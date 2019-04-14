/// @arg args

var str = "[" + string(current_time) + "]  ";

for (var a=0; a<argument_count; a++) {
	if (!is_real(argument[a]) || argument[a] != please_log) str += string(argument[a]);
}

show_debug_message(str);

//Save
var last = argument[argument_count-1];
if (is_real(last) && last == please_log) {
	var file = file_text_open_append(global.logFile);

	if (file > -1) {
		file_text_write_string(file, "\n" + str);
	
		file_text_close(file);
	}
}