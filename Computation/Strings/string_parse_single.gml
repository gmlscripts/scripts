#define string_parse_single
/// string_parse_single(str,token,n,ignore)
//
//  Returns the nth substring from a string of elements separated by
//  a given token, or the separator token if an error occurred.
//
//  eg. string_parse_single("cat|dog|house|bee", "|", 2, true) == "dog"
//
//      str         elements, string
//      token       element separator, string
//      n           element to return, real
//      ignore      ignore empty substrings, bool
//
/// GMLscripts.com/license
{
    var str, token, substr, ignore, N, tlen, temp, i;
    
    str = argument0;
    token = argument1;
    N = argument2;
    ignore = argument3;

    tlen = string_length( token);
    
    substr = "";
    i = 0;
    while( string_length( str) != 0 && i < N) {
        temp = string_pos( token, str);
        if( temp) {
            if( temp != 1 || !ignore) {
                substr = string_copy(str, 1, temp - 1);
                i += 1;
            }
            str = string_copy( str, temp + tlen, string_length( str));
        }
        else {
            substr = str;
            i += 1;
            str = "";
        }
    }
    
    if( i != N)
        return "";
    else
        return substr;
}