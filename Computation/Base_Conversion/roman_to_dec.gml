/// @func   roman_to_dec(roman)
///
/// @desc   Returns an integer converted from a Roman numeral string.
///         Note: The largest value supported is 4999.
///
/// @arg    {string}    roman       roman numeral
///
/// @return {real}      positive integer
///
/// GMLscripts.com/license

function roman_to_dec(roman) 
{
    var dec = 0;

    var tab, val;
    tab = "IVXLCDM";
    val = [0, 1, 5, 10, 50, 100, 500, 1000];

    var v1, v2;
    v2 = val[string_pos(string_char_at(roman, 1), tab)];
    for (var i = 1; i <= string_length(roman); i++) {
        v1 = v2;
        v2 = val[string_pos(string_char_at(roman, i + 1), tab)];
        if (v2 <= v1) dec += v1;
        else dec -= v1;
    }

    return dec;
}
