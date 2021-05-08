/// @func   bin_to_hex(bin)
///
/// @desc   Returns a hexadecimal string converted from a binary string.
///
/// @param  {string}    bin         binary digits
///
/// @return {string}    hexadecimal digits
///
/// GMLscripts.com/license

function bin_to_hex(bin)
{
    var hex = "";
    
    var nib = "0000101100111101000";
    var dig = "0125B6C937FEDA48";
    var len = string_length(bin);
    bin = string_repeat("0", -len & 3) + bin;
    for (var pos=1; pos<=len; pos+=4) {
        hex += string_char_at(dig, string_pos(string_copy(bin, pos, 4), nib));
    }
    
    return hex;
}