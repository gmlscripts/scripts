#define bytes_to_bin
/// bytes_to_bin(str)
//
//  Returns a string of binary digits, 1 bit each.
//
//      str         raw bytes, 8 bits each, string
//
/// GMLscripts.com/license
{
    var str, bin, p, byte;
    str = argument0;
    bin = "";
    p = string_length(str);
    repeat (p) {
        byte = ord(string_char_at(str,p));
        repeat (8) {
            if (byte & 1) bin = "1" + bin else bin = "0" + bin;
            byte = byte >> 1;
        }
        p -= 1;
    }
    return bin;
}