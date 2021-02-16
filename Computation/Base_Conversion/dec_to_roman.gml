#define dec_to_roman
/// dec_to_roman(num)
//  GM:S v2.3+ compatible
//
//  Returns a Roman numeral string converted from an integer.
//  Note: The largest value supported is 4999.
//
//  @param num         positive integer
//
/// GMLscripts.com/license
function dec_to_roman(num) {
    if ((num < 1) || (num > 4999)) return "";
    
    var roman;
    roman  = string_copy("    M   MM  MMM MMMM", 4*(num div 1000)+1, 4);
    roman += string_copy("    C   CC  CCC CD  D   DC  DCC DCCCCM  ", 4*((num mod 1000) div 100)+1, 4);
    roman += string_copy("    X   XX  XXX XL  L   LX  LXX LXXXXC  ", 4*((num mod 100) div 10)+1, 4);
    roman += string_copy("    I   II  III IV  V   VI  VII VIIIIX  ", 4*(num mod 10)+1, 4);
    roman  = string_replace_all(roman, " ", "");
    
    return roman;
}