#define bin_to_fraction
/// bin_to_fraction(bin)
//
//  Returns a decimal fraction (real)
//  representing the given binary string.
//
//      bin         binary digits, string
//
/// GMLscripts.com/license
{
    var i,ret;
    i = 0;
    ret = 0;
    repeat (string_length(argument0)) {
        if (string_char_at(argument0, i+1) = "1") ret += 1 / (2 << i);
        i += 1; 
    } 
    return ret;
}