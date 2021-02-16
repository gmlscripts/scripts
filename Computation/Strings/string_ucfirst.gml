#define string_ucfirst
/// string_ucfirst(str)
//  GM:S v2.3+ compatible
//
//  Returns a string with the first character capitalized.
//
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_ucfirst(str) {
    var out;
    out = string_upper(string_char_at(str,1));
    out += string_copy(str,2,string_length(str)-1);
    return out;
}