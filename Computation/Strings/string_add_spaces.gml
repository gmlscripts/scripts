#define string_add_spaces
/// string_add_spaces(str)
//  GM:S v2.3+ compatible
//
//  Returns the given string with spaces inserted between each character.
//
//  @param str         string to add spaces to, string
//
/// GMLscripts.com/license
function string_add_spaces(str) {
    var len;
    len = string_length(str);
    for (j=len; j>0; j-=1) str = string_insert(' ', str, j);
    return str;
}