/// @func   string_parse_single(str, token, n, ignore)
///
/// @desc   Returns the nth token-separated substring from a given string.
///
///         eg. string_parse_single("cat|dog|house|bee", "|", 2, true) == "dog"
///
/// @param  {string}    str         string of elements
/// @param  {string}    token       element separator
/// @param  {real}      n           element to return
/// @param  {bool}      ignore      ignore empty substrings
///
/// @return {string}    nth substring
///
/// GMLscripts.com/license

function string_parse_single(str, token, n, ignore)
{
    var tlen = string_length(token);
    var substr = "";
    var i = 0;
    while (string_length(str) != 0 && i < n) {
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

    if (i != n) {
        return "";
    }
    return substr;
}
