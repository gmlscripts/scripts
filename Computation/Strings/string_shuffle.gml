/// @func   string_shuffle(str)
///
/// @desc   Returns a given string with charactars shuffled.
///
/// @param  {string}    str         string of text
///
/// @return {string}    shuffled string
///
/// GMLscripts.com/license

function string_shuffle(str)
{
    var out = "";
    var len = string_length(str);
    do {
        var i = floor(random(len)) + 1;
        out += string_char_at(str, i);
        str = string_delete(str, i, 1);
        len--;
    } until (len < 1);
    return out;
}
