/// @func   dec_to_oct(dec [, len=1])
///
/// @desc   Returns a given value as a string of octal digits.
///         Octal strings can be padded to a minimum length.
///         Note: If the given value is negative, it will
///         be converted using its two's complement form.
///
/// @param  {real}      dec         integer
/// @param  {real}      [len=1]     minimum number of digits
///
/// @return {string}    octal digits
///
/// GMLscripts.com/license

function dec_to_oct(dec, len)
{
    len = is_undefined(len) ? 1 : len;
    var oct = "";
    
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