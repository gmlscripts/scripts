/// @func   number_format(number, places, decimal, thousands)
///
/// @desc   Returns a number as a string with thousands and decimal markers.
///         The value can be rounded to a number of decimal places and the
///         decimal and thousands markers can be optionally specified.
///
///         eg. number_format(123456.789, 2) == "123,456.79"
///
/// @param  {real}      number      number to format
/// @param  {real}      places      decimal places to round to
/// @param  {string}    decimal     decimal marker, default "."
/// @param  {string}    thousands   thousands marker, default ","
///
/// @return {string}    formatted number
///
/// GMLscripts.com/license

function number_format(number, places, decimal = ".", thousands = ",")
{
    var out = string_format(abs(number), 0, places);
    var pos = string_pos(".", out);
    if (pos == 0) {
        pos = string_length(out) + 1;
    } else {
        out = string_replace(out, ".", decimal);
    }
    for (var i = pos - 3; i > 1; i -= 3) {
        out = string_insert(thousands, out, i);
    }
    if (number < 0) {
        out = "-" + out;
    }
    return out;
}
