#define hex_to_bin
/// hex_to_bin(hex)
//  GM:S v2.3+ compatible
//
//  Returns a binary string converted from a hexadecimal string.
//
//  @param hex         hexadecimal digits, string
//
/// GMLscripts.com/license
function hex_to_bin(hex) {
    var hex = string_upper(hex),
        bin = "";
    
    var nib = "0000101100111101000";
    var dig = "0125B6C937FEDA48";
    var len = string_length(hex);
    for (var pos=1; pos<=len; pos+=1) {
        bin += string_copy(nib, string_pos(string_char_at(hex, pos), dig), 4);
    }
    return bin;
}