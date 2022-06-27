/// @func   string_ucwords(str)
///
/// @desc   Returns a string with each word capitalized.
///
/// @param  {string}    str         string of text
///
/// @return {string}    capitalized string
///
/// GMLscripts.com/license

function string_ucwords(str)
{
    var out = "";
    var w = true;
    var i = 1;
    repeat (string_length(str)) {
        var c = string_char_at(str, i);
        var o = ord(c);
        if ((o > 8) && (o < 14) || (o == 32)) {
            w = true;
        }else{
            if (w == true) c = string_upper(c);
            w = false;
        }
        out += c;
        i++;
    }
    return out;
}
