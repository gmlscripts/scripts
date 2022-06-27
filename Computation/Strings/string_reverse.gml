/// @func   string_reverse(str)
///
/// @desc   Returns a given string with the characters in reverse order.
///
/// @param  {string}    str         string to be reversed
///
/// @return {string}    reversed string
///
/// GMLscripts.com/license

function string_reverse(str)
{
    var out = "";
    for(var i=string_length(str); i>0; i--) {
        out += string_char_at(str, i);
    }
    return out;
}
