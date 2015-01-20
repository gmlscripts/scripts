#define roman_to_dec
/// roman_to_dec(roman)
//
//  Returns a decimal integer (real)
//  representing the given Roman numeral string.
//
//      roman       roman numeral, string
//
/// GMLscripts.com/license
{
    var roman, dec, tab, val, v1, v2, i;
    roman = argument0;
    dec = 0;
    tab = "MDCLXVI";
    val[0] = 0;   val[1] = 1000;  val[2] = 500;  val[3] = 100;
    val[4] = 50;  val[5] = 10;    val[6] = 5;    val[7] = 1;
    v2 = val[string_pos(string_char_at(roman, 1), tab)];
    for (i=1; i<=string_length(roman); i+=1) {
        v1 = v2;
        v2 = val[string_pos(string_char_at(roman, i+1), tab)];
        if (v2 <= v1) dec += v1 else dec -= v1;
    }
    return dec;
}