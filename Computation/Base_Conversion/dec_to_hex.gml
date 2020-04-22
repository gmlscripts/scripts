#define dec_to_hex
/// dec_to_hex(dec [,length])
//
//  Returns a given value as a string of hexadecimal digits.
//  Hexadecimal strings can be padded to a minimum length.
//  Note: If the given value is negative, it will
//  be converted using its two's complement form.
//
//      dec         integer
//      length      minimum number of digits
//
/// GMLscripts.com/license
{
    var dec = argument[0],
        len = (argument_count > 1) ? argument[1] : 1,
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