/// @func   fraction_to_bin(fraction, length)
///
/// @desc   Returns a binary string converted from a decimal fraction.
///
/// @param  {real}      fraction    decimal fraction
/// @param  {real}      length      number of bits to return
///
/// @return {string}    binary digits
///
/// GMLscripts.com/license

function fraction_to_bin(fraction, length)
{
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