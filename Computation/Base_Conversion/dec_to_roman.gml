#define dec_to_roman
/// dec_to_roman(num)
//
//  Returns a string of Roman numerals
//  representing the given integer.
//
//      num         positive integer less than 5000, real
//
/// GMLscripts.com/license
{
    var n, ones, tens, huns, thos, roman;
    n = floor(argument0);
    if ((n < 0) || (n > 4999)) return "";
    n = string_replace_all(string_format(n, 4, 0), " ", "0");
    ones = "    I   II  III IV  V   VI  VII VIIIIX  ";
    tens = "    X   XX  XXX XL  L   LX  LXX LXXXXC  ";
    huns = "    C   CC  CCC CD  D   DC  DCC DCCCCM  ";
    thos = "    M   MM  MMM MMMM";
    roman  = string_copy(thos, 4 * real(string_char_at(n, 1)) + 1, 4);
    roman += string_copy(huns, 4 * real(string_char_at(n, 2)) + 1, 4);
    roman += string_copy(tens, 4 * real(string_char_at(n, 3)) + 1, 4);
    roman += string_copy(ones, 4 * real(string_char_at(n, 4)) + 1, 4);
    roman  = string_replace_all(roman, " ", "");
    return roman;
}