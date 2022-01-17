/// @func   bin_to_fraction(bin)
///
/// @desc   Returns a decimal fraction converted from a binary string.
///
/// @param  {string}    bin         binary digits
///
/// @return {real}      decimal fraction
///
/// GMLscripts.com/license

function bin_to_fraction(bin) 
{
    var fraction = 0;

    var i = 0;
    repeat(string_length(bin)) {
        if (string_char_at(bin, i + 1) == "1") fraction += (1 / (2 << i));
        i++;
    }

    return fraction;
}
