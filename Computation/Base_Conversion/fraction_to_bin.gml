#define fraction_to_bin
/// fraction_to_bin(fraction, length)
//
//  Returns a binary string converted from a decimal fraction.
//
//      fraction    decimal fraction
//      length      number of bits to return
//
/// GMLscripts.com/license
{
    var fraction = argument0,
        length = argument1,
        bin = "";
    
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