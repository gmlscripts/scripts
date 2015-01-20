#define bin_to_hex
/// bin_to_hex(bin)
//
//  Returns a string of hexadecimal digits 
//  representing the given binary string.
//
//      bin         binary digits, string
//
/// GMLscripts.com/license
{
    var bin, hex, n, h, l, p;
    bin = argument0;
    hex = "";
    n = "0000101100111101000";
    h = "0125B6C937FEDA48";
    l = string_length(bin);
    bin = string_repeat("0", 3-(l-1) mod 4) + bin;
    for (p=1; p<=l; p+=4) {
        hex += string_char_at(h, string_pos(string_copy(bin, p, 4), n));
    }
    return hex;
}