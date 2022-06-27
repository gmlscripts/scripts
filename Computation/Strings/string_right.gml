/// @func   string_right(str, num)
///
/// @desc   Returns a number of characters from the end of a string.
///         If the number of characters given is negative,
///         the string will be shortened by that amount.
///
/// @param  {string}    str         string of text
/// @param  {real}      num         number of characters
///
/// @return {string}    shortened string
///
/// GMLscripts.com/license

function string_right(str, num)
{
    if (num < 0) {
        return string_copy(str, 1 - num, string_length(str) + num);
    } else {
        return string_copy(str, 1 + string_length(str) - num, num);
    }
}
