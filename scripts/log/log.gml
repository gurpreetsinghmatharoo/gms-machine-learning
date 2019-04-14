/// @arg args

var str = "[" + string(current_time) + "]  ";

for (var a=0; a<argument_count; a++) {
	str += is_real(argument[a]) ? string(argument[a]) : argument[a];;
}

show_debug_message(str);