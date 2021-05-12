/// @func   time_string(format [,sep])
///
/// @desc   Returns the system time as a string in 12 or 24 hour "HH:MM:SS" format.
///         The default separator is ":" but a custom string can be supplied.
///
/// @param  {real}      format      12 or 24
/// @param  {string}    [sep=":"]   separator
///
/// @return {string}    some value
///
/// GMLscripts.com/license

function time_string(format, sep) 
{
    sep = is_undefined(sep) ? ":" : sep;

    var date = date_current_datetime();
    var hours = date_get_hour(date);
    var mins = date_get_minute(date);
    var secs = date_get_second(date);
    
    if ((format == 12) && (hours > 12)) hours -= 12;

    var str_hr, str_mn, str_sc;
    
    if (hours < 10) str_hr = "0" + string(hours); 
    else str_hr = string(hours);

    if (mins < 10) str_mn = "0" + string(mins); 
    else str_mn = string(mins);

    if (secs < 10) str_sc = "0" + string(secs); 
    else str_sc = string(secs);

    return (str_hr + sep + str_mn + sep + str_sc);
}