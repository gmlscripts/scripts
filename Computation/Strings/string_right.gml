#define string_right
/// string_right(str,num)
//
//  Returns a number of characters from the end a string.
//  If the number of characters given is negative, the
//  string will be shortened by that amount.
//
//      str         string of text, string
//      num         number of characters, real
//
/// GMLscripts.com/license
{
    if (argument1 < 0)
        return string_copy(argument0, 1 - argument1, string_length(argument0) + argument1);
    else
        return string_copy(argument0, 1 + string_length(argument0) - argument1, argument1);
}
