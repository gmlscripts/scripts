#define string_limit_width
/// string_limit_width(string,width,ext)
//
//  Returns a given string. If it exceeds a certain pixel width, it is
//  truncated to fit and an extension (such as an ellipsis) is appended.
//  Uses the currently defined font to determine text width.
//
//      str         text, string
//      width       width in pixels, real
//      ext         text to append, string
//
/// GMLscripts.com/license
{
    var str,ext,wid;
    str = argument0;
    ext = argument2;
    wid = max(argument1, string_width(ext));
    if (string_width(str) <= wid) return str;
    while (string_width(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    } 
    return str + ext;
}