#define bin_to_fraction
/// bin_to_fraction(bin)
//
//  Returns a decimal fraction converted from a binary string.
//
//      bin         binary digits, string
//
/// GMLscripts.com/license
{
    var bin = argument0,
        fraction = 0;
    
    var i = 0;
    repeat (string_length(bin)) {
        if (string_char_at(bin, i+1) == "1") fraction += (1 / (2 << i));
        i++;
    } 
    
    return fraction;
}