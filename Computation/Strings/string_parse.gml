/// @func   string_parse(str, token, ignore)
///
/// @desc   Returns a list of token-separated substrings from a given string.
///
///         eg. string_parse("cat|dog|house|bee", "|", true)
///             returns a ds_list { "cat", "dog", "house", "bee" }
///
/// @param  {string}    str         string of elements
/// @param  {string}    token       element separator
/// @param  {bool}      ignore      ignore empty substrings
///
/// @return {list}      list of elements
///
/// GMLscripts.com/license

function string_parse(str, token, ignore)
{
    var list = ds_list_create();
    var tlen = string_length(token);
    while (string_length(str) != 0) {
        var temp = string_pos(token, str);
        if (temp) {
            if (temp != 1 || !ignore) {
                ds_list_add(list, string_copy(str, 1, temp - 1));
            }
            str = string_copy(str, temp + tlen, string_length(str));
        } else {
            ds_list_add(list, str);
            str = "";
        }
    }
    return list;
}
