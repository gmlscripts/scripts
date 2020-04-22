#define bin_to_hex
/// bin_to_hex(bin)
//
//  Returns a hexadecimal string converted from a binary string.
//
//      bin         binary digits, string
//
/// GMLscripts.com/license
{
    var bin = argument0,
        hex = "";
    
    var nib = "0000101100111101000";
    var dig = "0125B6C937FEDA48";
    var len = string_length(bin);
    var bin = string_repeat("0", -len & 3) + bin;
    for (var pos=1; pos<=len; pos+=4) {
        hex += string_char_at(dig, string_pos(string_copy(bin, pos, 4), nib));
    }
    
    return hex;
}