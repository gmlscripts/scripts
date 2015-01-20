#define word_max_value
/// word_max_value(length,size)
//
//  Returns the largest unsigned integer that can be stored in
//  the given number of words of the given size. If no size is
//  given, words are treated as bits.
//
//      length      number of words, positive integer, real
//      size        size of word in bits, positive integer, real (optional)
//
/// GMLscripts.com/license
{
    return (1 << (argument0 * max(1, argument1))) - 1;
}