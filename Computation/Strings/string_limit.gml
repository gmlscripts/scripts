#define string_limit
/// string_limit(string,length,ext)
//  GM:S v2.3+ compatible
//
//  Returns a given string, truncated if it exceeds a certain length.
//  If truncated, an extension (such as an ellipsis) can be appended.
//
//  @param str         text, string
//  @param length      character length, real
//  @param ext         text to append, string
//
/// GMLscripts.com/license
function string_limit(string,length,ext) {
    var str,wid;
    str = string;
    wid = max(length, string_length(ext));
    if (string_length(str) <= wid) return str;
    while (string_length(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    } 
    return str + ext;
}