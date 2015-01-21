#define hex_to_bytes
/// hex_to_bytes(hex)
//
//  Returns a string of raw bytes (8 bits each)
//  representing the given hexadecimal string.
//
//      hex         hexadecimal digits, string
//
/// GMLscripts.com/license
{
    var hex, str, h, l, p, hi, lo;
    hex = string_upper(argument0);
    str = "";
    h = "0123456789ABCDEF";
    l = string_length(hex);
    if (l mod 2) hex = "0" + hex;
    for (p=1; p<=l; p+=2) {
        hi = string_pos(string_char_at(hex, p) ,h) - 1;
        lo = string_pos(string_char_at(hex, p+1) ,h) - 1;
        str += chr(hi << 4 | lo);
    }
    return str;
}