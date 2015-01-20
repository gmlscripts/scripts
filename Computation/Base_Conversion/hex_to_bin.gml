#define hex_to_bin
/// hex_to_bin(hex)
//
//  Returns a string of binary digits (1 bit each)
//  representing the given hexadecimal string.
//
//      hex         hexadecimal digits, string
//
/// GMLscripts.com/license
{
    var hex, bin, n, h, l, p;
    hex = string_upper(argument0);
    bin = "";
    n = "0000101100111101000";
    h = "0125B6C937FEDA48";
    l = string_length(hex);
    for (p=1; p<=l; p+=1) {
        bin += string_copy(n, string_pos(string_char_at(hex, p), h), 4);
    }
    return bin;
}