#define string_parse_number
/// string_parse_number(str,token,ignore)
//  GM:S v2.3+ compatible
//
//  Returns the number of substring elements within
//  a given string and separated by a given token.
//
//  eg. string_parse("cat|dog|house|bee", "|", true) == 4
//
//  @param str         elements, string
//  @param token       element separator,  string
//  @param ignore      ignore empty substrings, bool
//
/// GMLscripts.com/license
function string_parse_number(str,token,ignore) {
    var subtlen,temp,i;
    tlen = string_length(token);
    substr = "";
    i = 0;
    while (string_length(str) != 0) {
        temp = string_pos(token,str);
        if (temp) {
            if (temp != 1 || !ignore) {
                substr = string_copy(str,1,temp-1);
                i += 1;
            }
            str = string_copy(str,temp+tlen,string_length(str));
        } else {
            substr = str;
            i += 1;
            str = "";
        }
    }
    return i;
}