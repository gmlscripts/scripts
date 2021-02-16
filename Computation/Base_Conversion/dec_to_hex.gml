#define dec_to_hex
/// dec_to_hex(dec [,length])
//  GM:S v2.3+ compatible
//
//  Returns a given value as a string of hexadecimal digits.
//  Hexadecimal strings can be padded to a minimum length.
//  Note: If the given value is negative, it will
//  be converted using its two's complement form.
//
//  @param dec         integer
//  @param length      minimum number of digits
//
/// GMLscripts.com/license
function dec_to_hex(dec) {
    var len = (argument_count > 1) ? argument[1] : 1,
        hex = "";
    
    if (dec < 0) {
        len = max(len, ceil(logn(16, 2*abs(dec))));
    }
    
    var dig = "0123456789ABCDEF";
    while (len-- || dec) {
        hex = string_char_at(dig, (dec & $F) + 1) + hex;
        dec = dec >> 4;
    }
    
    return hex;
}