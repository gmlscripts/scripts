#define fraction_to_bin
/// fraction_to_bin(value,size)
//
//  Returns a string of binary digits (1 bit each)
//  representing the given decimal fraction.
//
//      value       fraction, real
//      size        number of bits, real
//
/// GMLscripts.com/license
{
    var i, ret;
    i = 0;
    ret = "";
    repeat (argument1) {
        if (argument0 >= 1/(2<<i)) {
            ret += "1";
            argument0 -= 1/(2<<i);
        } else {
            ret += "0";
        }
        i += 1;
    }
    return ret;
}