#define string_parse_number
/// string_parse_number(str,token,ignore)
//
//  Returns the number of substring elements within
//  a given string and separated by a given token.
//
//  eg. string_parse("cat|dog|house|bee", "|", true) == 4
//
//      str         elements, string
//      token       element separator,  string
//      ignore      ignore empty substrings, bool
//
/// GMLscripts.com/license
{
    var str,substr,token,ignore,tlen,temp,i;
    str = argument0;
    token = argument1;
    ignore = argument2;
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