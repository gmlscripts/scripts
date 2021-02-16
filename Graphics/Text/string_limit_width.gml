#define string_limit_width
/// string_limit_width(string,width,ext)
//  GM:S v2.3+ compatible
//
//  Returns a given string. If it exceeds a certain pixel width, it is
//  truncated to fit and an extension (such as an ellipsis) is appended.
//  Uses the currently defined font to determine text width.
//
//  @param str         text, string
//  @param width       width in pixels, real
//  @param ext         text to append, string
//
/// GMLscripts.com/license
function string_limit_width(string,width,ext) {
    var str,wid;
    str = string;
    wid = max(width, string_width(ext));
    if (string_width(str) <= wid) return str;
    while (string_width(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    } 
    return str + ext;
}