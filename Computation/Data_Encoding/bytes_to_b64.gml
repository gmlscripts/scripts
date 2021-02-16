#define bytes_to_b64
/// bytes_to_b64(str)
//  GM:S v2.3+ compatible
//
//  Returns a string of base64 digits (RFC 3548), 6 bits each.
//
//  @param str         raw bytes, 8 bits each, string
//
/// GMLscripts.com/license
function bytes_to_b64(str) {
    var len, pad, tab, b64, i, bin;
    len = string_length(str);
    pad = "=";
    tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    b64 = "";
    for (i=0; i<len; i+=3) {
        bin[0] = ord(string_char_at(str,i+1));
        bin[1] = ord(string_char_at(str,i+2));
        bin[2] = ord(string_char_at(str,i+3));
        b64 += string_char_at(tab,1+(bin[0]>>2));
        b64 += string_char_at(tab,1+(((bin[0]&3)<<4)|(bin[1]>>4)));
        if (i+1 >= len) b64 += pad;
        else b64 += string_char_at(tab,1+(((bin[1]&15)<<2)|(bin[2]>>6)));
        if (i+2 >= len) b64 += pad;
        else b64 += string_char_at(tab,1+(bin[2]&63));
    }
    return b64;
}