/// @func   dec_to_roman(num)
///
/// @desc   Returns a Roman numeral string converted from an integer.
///         Note: The largest value supported is 4999.
///
/// @param  {real}      num         positive integer
///
/// @return {string}    roman numerals
///
/// GMLscripts.com/license

function dec_to_roman(num)
{
    if ((num < 1) || (num > 4999)) return "";
    
    var roman;
    roman  = string_copy("    M   MM  MMM MMMM", 4*(num div 1000)+1, 4);
    roman += string_copy("    C   CC  CCC CD  D   DC  DCC DCCCCM  ", 4*((num mod 1000) div 100)+1, 4);
    roman += string_copy("    X   XX  XXX XL  L   LX  LXX LXXXXC  ", 4*((num mod 100) div 10)+1, 4);
    roman += string_copy("    I   II  III IV  V   VI  VII VIIIIX  ", 4*((num mod 10) div 1)+1, 4);
    roman  = string_replace_all(roman, " ", "");
    
    return roman;
}