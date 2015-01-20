#define string_add_spaces
/// string_add_spaces(str)
//
//  Returns the given string with spaces inserted between each character.
//
//      str         string to add spaces to, string
//
/// GMLscripts.com/license
{
    var str, len;
    str = argument0;
    len = string_length(str);
    for (j=len; j>0; j-=1) str = string_insert(' ', str, j);
    return str;
}