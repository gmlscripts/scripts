#define bytes_to_bin
/// bytes_to_bin(str)
//  GM:S v2.3+ compatible
//
//  Returns a string of binary digits, 1 bit each.
//
//  @param str         raw bytes, 8 bits each, string
//
/// GMLscripts.com/license
function bytes_to_bin(str) {
    var bin, p, byte;
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