#define string_parse_single
/// string_parse_single(str,token,n,ignore)
//  GM:S v2.3+ compatible
//
//  Returns the nth substring from a string of elements separated by
//  a given token, or the separator token if an error occurred.
//
//  eg. string_parse_single("cat|dog|house|bee", "|", 2, true) == "dog"
//
//  @param str         elements, string
//  @param token       element separator, string
//  @param n           element to return, real
//  @param ignore      ignore empty substrings, bool
//
/// GMLscripts.com/license
function string_parse_single(str,token,n,ignore) {
    var sub  N, tle temp, i;
    
    N = n;
    
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