#define bin_to_dec
/// bin_to_dec(bin)
//
//  Returns a non-negative integer (real)
//  representing the given binary string.
//
//      bin         binary digits, string
//
/// GMLscripts.com/license
{
    var bin, dec, l, p;
    bin = argument0;
    dec = 0;
    l = string_length(bin);
    for (p=1; p<=l; p+=1) {
        dec = dec << 1;
        if (string_char_at(bin, p) == "1") dec = dec | 1;
    }
    return dec;
}