#define fraction_to_bin
/// fraction_to_bin(fraction, length)
//  GM:S v2.3+ compatible
//
//  Returns a binary string converted from a decimal fraction.
//
//  @param fraction    decimal fraction
//  @param length      number of bits to return
//
/// GMLscripts.com/license
function fraction_to_bin(fraction, length) {
    var bin = "";
    
    var i = 1;
    repeat (length) {
        i /= 2;
        if (fraction >= i) {
            fraction -= i;
            bin += "1";
        } else {
            bin += "0";
        }
    }
    return bin;
}