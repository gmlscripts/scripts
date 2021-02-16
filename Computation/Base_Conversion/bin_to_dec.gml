#define bin_to_dec
/// bin_to_dec(bin)
//  GM:S v2.3+ compatible
//
//  Returns an integer converted from a binary string.
//
//  @param bin         binary digits, string
//
/// GMLscripts.com/license
function bin_to_dec(bin) {
    var dec = 0;
    
    var len = string_length(bin);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 1;
        if (string_char_at(bin, pos) == "1") dec |= 1;
    }
    
    return dec;
}