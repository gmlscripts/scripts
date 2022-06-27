/// @func   string_random(str, count)
///
/// @desc   Returns a string of a given length composed of characters 
///         randomly selected from a given set. If the set is empty, 
///         the set of all printable ASCII characters will be used.
///
/// @param  {string}    str         set of characters, optional
/// @param  {real}      count       number of characters to return
///
/// @return {string}    random string
///
/// GMLscripts.com/license

function string_random(str, count)
{
    var out = "";
    var len = string_length(str);
    if (len > 0) {
        repeat (count) {
            out += string_char_at(str, floor(random(len)) + 1);
        }
    } else {
        repeat (count) {
            out += chr(floor(random(95)) + 32);
        }
    }
    return out;
}
