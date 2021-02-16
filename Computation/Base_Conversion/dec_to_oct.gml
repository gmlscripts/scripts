#define dec_to_oct
/// dec_to_oct(dec [, length])
//  GM:S v2.3+ compatible
//
//  Returns a given value as a string of octal digits.
//  Octal strings can be padded to a minimum length.
//  Note: If the given value is negative, it will
//  be converted using its two's complement form.
//
//  @param dec         integer
//  @param length      minimum number of digits
//
/// GMLscripts.com/license
function dec_to_oct(dec,length) {
    var len = (argument_count > 1) ? argument[1] : 1,
        oct = "";
    
    if (dec < 0) {
        len = max(len, ceil(logn(8, 2*abs(dec))));
    }
    
    var dig = "01234567";
    while (len-- || dec) {
        oct = string_char_at(dig, (dec & $7) + 1) + oct;
        dec = dec >> 3;
    }
    
    return oct;
}