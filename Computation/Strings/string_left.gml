#define string_left
/// string_left(str,num)
//  GM:S v2.3+ compatible
//
//  Returns a number of characters from the start of a string.
//  If the number of characters given is negative,
//  the string will be shortened by that amount.
//
//  @param str         string of text, string
//  @param num         number of characters, real
//
/// GMLscripts.com/license
function string_left(str,num) {
    if (num < 0)
        return string_copy(str, 1, string_length(str) + num);
    else
        return string_copy(str, 1, num);
}