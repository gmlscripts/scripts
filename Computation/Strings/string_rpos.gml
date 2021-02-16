#define string_rpos
/// string_rpos(substr,str)
//  GM:S v2.3+ compatible
//
//  Returns the right-most position of a substring within a string.
//
//  @param substr      substring of text, string
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_rpos(substr,str) {
    var sub,pos,ind;
    sub = substr;
    pos = 0;
    ind = 0;
    do {
        pos += ind;
        ind = string_pos(sub,str);
        str = string_delete(str,1,ind);
    } until (ind == 0);
    return pos;
}