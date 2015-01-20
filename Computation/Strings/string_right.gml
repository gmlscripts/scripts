#define string_right
/// string_right(str,num)
//
//  Returns a number of characters from the end a string.
//
//      str         string of text, string
//      num         number of characters, real
//
/// GMLscripts.com/license
{
    return (string_delete(argument0,1,string_length(argument0)-argument1));
}