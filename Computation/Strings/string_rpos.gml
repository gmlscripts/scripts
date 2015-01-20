#define string_rpos
/// string_rpos(substr,str)
//
//  Returns the right-most position of a substring within a string.
//
//      substr      substring of text, string
//      str         string of text, string
//
/// GMLscripts.com/license
{
    var sub,str,pos,ind;
    sub = argument0;
    str = argument1;
    pos = 0;
    ind = 0;
    do {
        pos += ind;
        ind = string_pos(sub,str);
        str = string_delete(str,1,ind);
    } until (ind == 0);
    return pos;
}