#define word_max_value
/// word_max_value(length,size)
//
//  Returns the largest unsigned integer that can be stored in
//  the given number of words of the given size.
//
//      length      number of words, integer
//      size        size of word in bits, integer
//
/// GMLscripts.com/license
{
    return (1 << (argument0 * argument1)) - 1;
}