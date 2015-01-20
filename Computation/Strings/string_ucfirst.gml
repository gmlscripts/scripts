#define string_ucfirst
/// string_ucfirst(str)
//
//  Returns a string with the first character capitalized.
//
//      str         string of text, string
//
/// GMLscripts.com/license
{
    var str,out;
    str = argument0;
    out = string_upper(string_char_at(str,1));
    out += string_copy(str,2,string_length(str)-1);
    return out;
}