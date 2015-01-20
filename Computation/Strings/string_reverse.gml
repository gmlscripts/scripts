#define string_reverse
/// string_reverse(str)
//
//  Returns a given string with the characters in reverse order.
//
//      str         string to be reversed, string
//
/// GMLscripts.com/license
{
    var out,i;
    out = "";
    for(i=string_length(argument0); i>0; i-=1) {
        out += string_char_at(argument0,i);
    }
    return out;
}