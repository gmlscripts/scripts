#define string_array.gml
/// string_array(str,substr)
//
//  Splits a string into an array of substrings separated using the given substr.
//
//      str          The str to extract the array from
//      substr       The string used to find substrings
//
/// GMLscripts.com/license
{
	var str,substr,substr_length,result,i,cur_pos;
	str=string(argument0);
	substr=string(argument1);
	substr_length=string_length(substr);
	i=0;
	cur_pos=string_pos(substr,str);
	while (cur_pos>0) {
	    result[i++] = string_copy(str,1,cur_pos);
	    str=string_delete(str,1,cur_pos+substr_length);
	    cur_pos=string_pos(substr,str);
	}
	result[i]=string_copy(str,1,string_length(str));
	return result;
}