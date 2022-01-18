/// @func   date_format(format, datetime)
///
/// @desc   Returns a formatted string generated from a date-time.
///         If no date-time value is given, the current time is used. 
///         Find additional notes and format examples below.
///
/// @param  {string}    format      string controlling date formatting
/// @param  {real}      [datetime]  optional date-time value
///
/// @return {string}    the formatted date-time
///
/// Day format characters:
///     d - day of the month with leading zeros, 2 digits with leading zeros; 01 through 31
///     D - day of the week, textual, 3 letters; Fri
///     j - day of the month without leading zeros; 1 through 31
///     l - day of the week, textual, long; Friday
///     N - ISO 8601 day number of the week; 1 (Monday) through 7 (Sunday)
///     S - English ordinal suffix, textual, 2 characters; st, nd, rd, th
///     w - day of the week, numeric, 0 (Sunday) through 6 (Saturday)
///     z - day of the year (starting from zero); 0 through 365
///
/// Week format characters:
///     W - ISO 8601 week number of year, weeks starting on Monday; 42
///
/// Month format characters:
///     F - month, textual, long; January
///     m - month with leading zeros; 01 through 12
///     M - month, textual, 3 letters; Jan
///     n - month without leading zeros; 1 through 12
///     t - number of days in the given month; 28 through 31
///
/// Year format characters:
///     L - whether it is a leap year; 0 or 1
///     o - ISO 8601 year, like Y unless ISO week belongs to prev or next year; 2008
///     Y - year, 4 digits; 1999
///     y - year, 2 digits; 99
///
/// Time format characters:
///     a - lowercase Ante meridiem and Post meridiem; am or pm
///     A - uppercase Ante meridiem and Post meridiem; AM or PM
///     g - hour, 12-hour format without leading zeros; 1 through 12
///     G - hour, 24-hour format without leading zeros; 0 through 23
///     h - hour, 12-hour format; 01 through 12
///     H - hour, 24-hour format; 00 through 23
///     i - minutes, with leading zero; 00 through 59
///     s - seconds, with leading zero; 00 through 59
///
/// Full Date/Time format characters:
///     c - ISO 8601 extended format date; 2004-02-12T15:19:21
///     r - RFC 2822 formatted data; Thu, 21 Dec 2000 16:01:07 -0000
///     U - seconds since the Unix epoch
///
///     \ - next character output literally, not interpreted (see note below)
///
/// Note: \ (backslash) is an "escape" character in standard strings and must itself
///     be escaped. For instance, \t is interpreted as the TAB character in a standard
///     string; when written as \\t, a literal "t" is produced by this function instead.
///     However, GameMaker Studio 2 also has "verbatim" strings which do not use escape
///     sequences. These are literal strings prefixed by an @ symbol. Backslashes in
///     these do not require escaping and \t would produce a literal "t" not a TAB.
///
/// Examples:
///     date_format("l jS \\of F Y h:i:s A") == "Sunday 4th of May 2008 05:45:34 PM"
///     date_format("\\I\\t \\i\\s \\t\\h\\e zS \\d\\a\\y.") == "It is the 124th day."
///     date_format(@"\I\t \i\s \t\h\e zS \d\a\y.") == "It is the 124th day."
///
/// GMLscripts.com/license

function date_format(format, datetime=date_current_datetime())
{
    var out = "";
    var day,month,year,week,weekday,second,minute,hour24,hour12;
    day     = date_get_day(datetime);
    month   = date_get_month(datetime);
    year    = date_get_year(datetime);
    week    = date_get_week(datetime);
    weekday = date_get_weekday(datetime);
    second  = date_get_second(datetime);
    minute  = date_get_minute(datetime);
    hour24  = date_get_hour(datetime);
    hour12  = ((hour24 + 23) mod 12) + 1;
    for (var i = 1; i <= string_length(format); i += 1) {
        var c = string_char_at(format,i);
        switch (c) {
        case "F":
            switch (month) {
            case 1:  out += "January";   break;
            case 2:  out += "February";  break;
            case 3:  out += "March";     break;
            case 4:  out += "April";     break;
            case 5:  out += "May";       break;
            case 6:  out += "June";      break;
            case 7:  out += "July";      break;
            case 8:  out += "August";    break;
            case 9:  out += "September"; break;
            case 10: out += "October";   break;
            case 11: out += "November";  break;
            case 12: out += "December";  break;
            }
            break;
        case "M":
            switch (month) {
            case 1:  out += "Jan"; break;
            case 2:  out += "Feb"; break;
            case 3:  out += "Mar"; break;
            case 4:  out += "Apr"; break;
            case 5:  out += "May"; break;
            case 6:  out += "Jun"; break;
            case 7:  out += "Jul"; break;
            case 8:  out += "Aug"; break;
            case 9:  out += "Sep"; break;
            case 10: out += "Oct"; break;
            case 11: out += "Nov"; break;
            case 12: out += "Dec"; break;
            }
            break;
        case "l":
            switch (weekday) {
            case 0: out += "Sunday";    break;
            case 1: out += "Monday";    break;
            case 2: out += "Tuesday";   break;
            case 3: out += "Wednesday"; break;
            case 4: out += "Thursday";  break;
            case 5: out += "Friday";    break;
            case 6: out += "Saturday";  break;
            }
            break;
        case "D":
            switch (weekday) {
            case 0: out += "Sun"; break;
            case 1: out += "Mon"; break;
            case 2: out += "Tue"; break;
            case 3: out += "Wed"; break;
            case 4: out += "Thu"; break;
            case 5: out += "Fri"; break;
            case 6: out += "Sat"; break;
            }
            break;
        case "S":
            if (day >= 10 && day <= 20) out += "th";
            else if ((day mod 10) == 1) out += "st";
            else if ((day mod 10) == 2) out += "nd";
            else if ((day mod 10) == 3) out += "rd";
            else                        out += "th";
            break;
        case "o":
            if (month ==  1 && day <=  3 && week != 1) { out += string(year - 1); break; }
            if (month == 12 && day >= 29 && week == 1) { out += string(year + 1); break; }
        case "Y": out += string(year); break;
        case "y": out += string_copy(string(year),3,2); break;
        case "m": if (month < 10) out += "0";
        case "n": out += string(month); break;
        case "d": if (day < 10) out += "0";
        case "j": out += string(day); break;
        case "H": if (hour24 < 10) out += "0";
        case "G": out += string(hour24); break;
        case "h": if (hour12 < 10) out += "0";
        case "g": out += string(hour12); break;
        case "i": if (minute < 10) out += "0"; out += string(minute); break;
        case "s": if (second < 10) out += "0"; out += string(second); break;
        case "a": if (hour24 < 12) out += "am" else out += "pm"; break;
        case "A": if (hour24 < 12) out += "AM" else out += "PM"; break;
        case "U": out += string(floor(date_second_span(datetime, 25569))); break;
        case "z": out += string(date_get_day_of_year(datetime) - 1); break;
        case "t": out += string(date_days_in_month(datetime)); break;
        case "L": out += string(date_leap_year(datetime)); break;
        case "w": out += string(weekday); break;
        case "N": out += string(((weekday + 6) mod 7) + 1); break;
        case "W": out += string(week); break;
        case "c": out += date_format("o-m-dTH:i:s", datetime); break;
        case "r": out += date_format("D, d M Y H:i:s +0000", datetime); break;
        case "\\": i += 1; c = string_char_at(format, i);
        default:  out += c; break;
        }
    }
    return out;
}
