///@description stromg_wrap
///@arg string
///@arg max_width

var str = argument0; //original string
var max_width = argument1;

var str_len = string_length(str);
var last_space = 1; //check if last character is space

var count = 1;
var substr;

repeat(str_len) {// check if we exceed max width
	substr = string_copy(str, 1, count);
	
	if (string_char_at(str, count) == " ") {//keeps track of the last space
		last_space = count; 
	
	}
	
	if (string_width(substr) > max_width) { //if string is larger than max width, break line
		str = string_delete(str, last_space, 1);
		str = string_insert("\n", str, last_space); //set this string to str var
	}
	
	count++;
}

return str;