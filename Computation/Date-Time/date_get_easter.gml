/// @func   date_get_easter(year)
///
/// @desc   Returns the date-time of Easter for the given year.
///         Based on an algorithm printed in Nature, April 20, 1876.
///
/// @param  {real}      year        calendar year
///
/// @return {string}    date of Easter
///
/// GMLscripts.com/license

function date_get_easter(year) 
{
    var a = year mod 19;
    var b = year div 100;
    var c = year mod 100;
    var d = b div 4;
    var e = b mod 4;
    var f = (b + 8) div 25;
    var g = (b - f + 1) div 3;
    var h = (19 * a + b - d - g + 15) mod 30;
    var i = c div 4;
    var k = c mod 4;
    var l = (32 + 2 * e + 2 * i - h - k) mod 7;
    var m = (a + 11 * h + 22 * l) div 451;
    var month = (h + l - 7 * m + 114) div 31;
    var day = ((h + l - 7 * m + 114) mod 31) + 1;
    return date_create_datetime(year, month, day, 0, 0, 0);
}
