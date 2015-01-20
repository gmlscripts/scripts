#define b64_to_bytes
/// b64_to_bytes(b64)
//
//  Returns a string of raw bytes, 8 bits each. b64 strings with 
//  characters outside of the RFC 3548 standard or with excess
//  padding characters at the end will not decode correctly.
//
//      b64         base64 digits (RFC 3548), 6 bits each, string
//
/// GMLscripts.com/license
{
    var b64, len, pad, tab, str, i, bin;
    b64 = argument0;
    len = string_length(b64);
    pad = "=";
    tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    str = "";
    while (string_length(b64) mod 4) b64 += pad;
    for(i=0; i<len; i+=4) {
        bin[0] = string_pos(string_char_at(b64,i+1),tab)-1;
        bin[1] = string_pos(string_char_at(b64,i+2),tab)-1;
        bin[2] = string_pos(string_char_at(b64,i+3),tab)-1;
        bin[3] = string_pos(string_char_at(b64,i+4),tab)-1;
        str += chr(255&(bin[0]<<2)|(bin[1]>>4));
        if (bin[2] >= 0) str += chr(255&(bin[1]<<4)|(bin[2]>>2));
        if (bin[3] >= 0) str += chr(255&(bin[2]<<6)|(bin[3]));
    }
    return str;
}