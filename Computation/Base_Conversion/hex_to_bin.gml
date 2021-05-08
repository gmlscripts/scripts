/// @func   hex_to_bin(hex)
///
/// @desc   Returns a binary string converted from a hexadecimal string.
///
/// @param  {string}    hex         hexadecimal digits
///
/// @return {string}    binary digits
///
/// GMLscripts.com/license

function hex_to_bin(hex)
{
    hex = string_upper(hex);
    var bin = "";
    
    var nib = "0000101100111101000";
    var dig = "0125B6C937FEDA48";
    var len = string_length(hex);
    for (var pos=1; pos<=len; pos+=1) {
        bin += string_copy(nib, string_pos(string_char_at(hex, pos), dig), 4);
    }
    return bin;
}