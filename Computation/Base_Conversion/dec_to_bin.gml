#define dec_to_bin
/// dec_to_bin(dec [, length])
//  GM:S v2.3+ compatible
//
//  Returns a given value as a string of binary digits.
//  Binary strings can be padded to a minimum length.
//  Note: If the given value is negative, it will
//  be converted using its two's complement form.
//
//  @param dec         integer
//  @param length      minimum number of digits
//
/// GMLscripts.com/license
function dec_to_bin(dec,length) {
    var len = (argument_count > 1) ? argument[1] : 1,
        bin = "";
    
    if (dec < 0) {
        len = max(len, ceil(logn(2, 2*abs(dec))));
    }
    
    while (len-- || dec) {
        bin = ((dec & 1) ? "1" : "0") + bin;
        dec = dec >> 1;
    }
    
    return bin;
}