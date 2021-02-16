#define roman_to_dec
/// roman_to_dec(roman)
//  GM:S v2.3+ compatible
//
//  Returns an integer converted from a Roman numeral string.
//  Note: The largest value supported is 4999.
//
//  @param roman       roman numeral, string
//
/// GMLscripts.com/license
function roman_to_dec(roman) {
    var dec   = 0;
    
    var tab, val;
    tab = "MDCLXVI";
    val[0] = 0;   val[1] = 1000;  val[2] = 500;  val[3] = 100;
    val[4] = 50;  val[5] = 10;    val[6] = 5;    val[7] = 1;
    
    var v1, v2;
    v2 = val[string_pos(string_char_at(roman, 1), tab)];
    for (var i=1; i<=string_length(roman); i++) {
        v1 = v2;
        v2 = val[string_pos(string_char_at(roman, i+1), tab)];
        if (v2 <= v1) dec += v1; else dec -= v1;
    }
    
    return dec;
}