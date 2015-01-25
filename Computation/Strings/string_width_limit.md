#related
fonts_and_text
#contributors
IceMetalPunk
xot
#keywords
fit
box
summary
crop
ellipsis
abbreviate
#usage
string_width_limit(string,width,extension)
Returns the string (including an extension if used) that fits within the given width when drawn.
#define string_width_limit
/*
**  Usage:
**      string_width_limit(string,width,extension)
**
**  Arguments:
**      str         string to limit
**      width       width in pixels to constrain the string to
**      extension   text to append to string if it is cut
**
**  Returns:
**      the string (including an extension if used) 
**      that fits within the given width when drawn
**
**  GMLscripts.com
*/
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