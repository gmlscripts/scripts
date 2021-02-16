#define bin_to_bytes
/// bin_to_bytes(bin)
//  GM:S v2.3+ compatible
//
//  Returns a string of raw bytes (8 bits each)
//  representing the given binary string.
//
//  @param bin         binary digits, string
//
/// GMLscripts.com/license
function bin_to_bytes(bin) {
    var str, p, byte;
    str = "";
    p = string_length(bin);
    repeat (ceil(p / 8)) {
        byte = 0;
        repeat (8) {
            byte = byte >> 1;
            if (p) if (string_char_at(bin, p) == "1") byte = byte | 128;
            p -= 1;
        }
        str = chr(byte) + str;
    }
    return str;
}