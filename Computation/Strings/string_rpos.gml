/// @func   string_rpos(substr, str)
///
/// @desc   Returns the right-most position of a substring within a string.
///
/// @param  {string}    substr      substring of text
/// @param  {string}    str         string of text
///
/// @return {real}      position of substr
///
/// GMLscripts.com/license

function string_rpos(substr, str)
{
    var pos = 0;
    var ind = 0;
    do {
        pos += ind;
        ind = string_pos(substr, str);
        str = string_delete(str, 1, ind);
    } until (ind == 0);
    return pos;
}
