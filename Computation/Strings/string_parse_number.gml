/// @func   string_parse_number(str, token, ignore)
///
/// @desc   Returns number of token-separated substrings from a given string.
///
///         eg. string_parse("cat|dog|house|bee", "|", true) == 4
///
/// @param  {string}    str         string of elements
/// @param  {string}    token       element separator
/// @param  {bool}      ignore      ignore empty substrings
///
/// @return {real}      number of elements
///
/// GMLscripts.com/license

function string_parse_number(str, token, ignore)
{
    var tlen = string_length(token);
    var substr = "";
    var i = 0;
    while (string_length(str) != 0) {
        var temp = string_pos(token, str);
        if (temp) {
            if (temp != 1 || !ignore) {
                substr = string_copy(str, 1, temp - 1);
                i++;
            }
            str = string_copy(str, temp + tlen, string_length(str));
        } else {
            substr = str;
            i++;
            str = "";
        }
    }
    return i;
}
