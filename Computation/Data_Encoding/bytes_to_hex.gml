#define bytes_to_hex
/// bytes_to_hex(str)
//
//  Returns a string of hexadecimal digits, 4 bits each.
//
//      str         raw bytes, 8 bits each, string
//
/// GMLscripts.com/license
{
    var str, hex, h, l, p, byte;
    str = argument0;
    hex = "";
    h = "0123456789ABCDEF";
    l = string_length(str);
    for (p=1; p<=l; p+=1) {
        byte = ord(string_copy(str, p, 1));
        hex += string_copy(h,byte div 16 + 1, 1);
        hex += string_copy(h,byte mod 16 + 1, 1);
    }
    return hex;
}