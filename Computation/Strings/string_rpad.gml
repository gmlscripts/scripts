/// @func   string_rpad(str, len, pad)
///
/// @desc   Returns a string padded on its right to a given length.
///         If the padded length is less than the original length,
///         the original string is returned.
///
///         eg. string_rpad("1234", 7, "0") == "1234000"
///
/// @param  {string}    str             string of text
/// @param  {real}      len             desired length
/// @param  {string}    pad             padding string, default " "
///
/// @return {string}    padded string
///
/// GMLscripts.com/license

function string_rpad(str, len, pad=" ")
{
    var padsize = string_length(pad);
    var padding = max(0, len - string_length(str));
    if (padding <= 0) {
        return str;
    }
    var out = str;
    out += string_repeat(pad, padding div padsize);
    out += string_copy(pad, 1, padding mod padsize);
    out = string_copy(out, 1, len);
    return out;
}
