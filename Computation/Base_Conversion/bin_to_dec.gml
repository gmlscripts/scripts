/// @func   bin_to_dec(bin)
///
/// @desc   Returns an integer converted from a binary string.
///
/// @param  {string}    bin         binary digits
///
/// @return {real}      positive integer
///
/// GMLscripts.com/license

function bin_to_dec(bin)
{
    var dec = 0;
    
    var len = string_length(bin);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 1;
        if (string_char_at(bin, pos) == "1") dec |= 1;
    }
    
    return dec;
}