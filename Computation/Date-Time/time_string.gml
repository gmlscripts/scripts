#define time_string
/// time_string(format,sep)
//
//  Returns the system time as a string in 12 or 24 hour "HH:MM:SS" format.
//
//      format      12 or 24, real
//      sep         seperator, string, (optional; ":" is default)
//
/// GMLscripts.com/license
{
    var format,sep,date,hours,mins,secs,str_hr,str_mn,str_sc,str_time;

    format = argument[0];
    if (argument_count > 1) sep = argument[1] else sep = ":";

    date = date_current_datetime();
    hours = date_get_hour(date);
    if ((format == 12) && (hours > 12)) hours -= 12;

    if (hours < 10) str_hr = "0" + string(hours); 
    else str_hr = string(hours);

    mins = date_get_minute(date);
    if (mins < 10) str_mn = "0" + string(mins); 
    else str_mn = string(mins);

    secs = date_get_second(date);
    if (secs < 10) str_sc = "0" + string(secs); 
    else str_sc = string(secs);

    str_time = str_hr + sep + str_mn + sep + str_sc;
    return (str_time);
}