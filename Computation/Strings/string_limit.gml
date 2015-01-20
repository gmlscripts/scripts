#define string_limit
/// string_limit(string,length,ext)
//
//  Returns a given string. If it exceeds a certain length, it is
//  truncated to fit and an extension (such as an ellipsis) is appended.
//
//      str         text, string
//      length      character length, real
//      ext         text to append, string
//
/// GMLscripts.com/license
{
    var str,ext,wid;
    str = argument0;
    ext = argument2;
    wid = max(argument1, string_length(ext));
    if (string_length(str) <= wid) return str;
    while (string_length(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    } 
    return str + ext;
}