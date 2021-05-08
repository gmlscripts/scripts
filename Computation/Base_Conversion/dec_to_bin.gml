/// @func   dec_to_bin(dec [, len=1])
///
/// @desc   Returns a given value as a string of binary digits.
///         Binary strings can be padded to a minimum length.
///         Note: If the given value is negative, it will
///         be converted using its two's complement form.
///
/// @param  {real}      dec         integer
/// @param  {real}      [len=1]     minimum number of digits
///
/// @return {string}    binary digits
///
/// GMLscripts.com/license

function dec_to_bin(dec, len)
{
    len = is_undefined(len) ? 1 : len;
    var bin = "";
    
    if (dec < 0) {
        len = max(len, ceil(logn(2, 2*abs(dec))));
    }
    
    while (len-- || dec) {
        bin = ((dec & 1) ? "1" : "0") + bin;
        dec = dec >> 1;
    }
    
    return bin;
}