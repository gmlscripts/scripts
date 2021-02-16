#define word_max_value
/// word_max_value(length,size)
//  GM:S v2.3+ compatible
//
//  Returns the largest unsigned integer that can be
//  stored in a given number of words of a given size.
//
//  @param length      number of words, integer
//  @param size        size of word in bits, integer
//
/// GMLscripts.com/license
function word_max_value(length,size) {
    return (1 << (length * size)) - 1;
}