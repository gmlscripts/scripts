#define string_reverse
/// string_reverse(str)
//  GM:S v2.3+ compatible
//
//  Returns a given string with the characters in reverse order.
//
//  @param str         string to be reversed, string
//
/// GMLscripts.com/license
function string_reverse(str) {
    var out,i;
    out = "";
    for(i=string_length(str); i>0; i-=1) {
        out += string_char_at(str,i);
    }
    return out;
}