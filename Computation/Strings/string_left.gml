#define string_left
/// string_left(str,num)
//
//  Returns a number of characters from the start a string.
//  If the number of characters given is negative, the
//  string will be shortened by that amount.
//
//      str         string of text, string
//      num         number of characters, real
//
/// GMLscripts.com/license
{
    if (argument1 < 0)
        return string_copy(argument0, 1, string_length(argument0) + argument1);
    else
        return string_copy(argument0, 1, argument1);
}
