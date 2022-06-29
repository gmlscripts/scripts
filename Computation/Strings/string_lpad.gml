/// @func   string_lpad(str, len, pad)
///
/// @desc   Returns a string padded on its left to a given length.
///         If the padded length is less than the original length,
///         the original string is returned.
///
///         eg. string_lpad("1234", 7, "0") == "0001234"
///
/// @param  {string}    str             string of text
/// @param  {real}      len             desired length
/// @param  {string}    pad             padding string (default " ")
///
/// @return {string}    padded string
///
/// GMLscripts.com/license

function string_lpad(str, len, pad=" ")
{
    var padsize = string_length(pad);
    var padding = len - string_length(str);
    if (padding <= 0) {
        return str;
    }
    var out = string_repeat(pad, padding div padsize);
    out += string_copy(pad, 1, padding mod padsize);
    out += str;
    out = string_copy(out, 1, len);
    return out;
}
