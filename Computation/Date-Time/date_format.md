date_format
===========

Returns a date/time value in a wide variety of useful, customizable forms.
Designed to closely mimic [PHP's date function].

demo: date_format 512 64

    // Assuming today is March 10th, 2001, 5:16:18 pm

    today = date_format("F j, Y, g:i a");                 // March 10, 2001, 5:16 pm
    today = date_format("m.d.y");                         // 03.10.01
    today = date_format("j, n, Y");                       // 10, 3, 2001
    today = date_format("Ymd");                           // 20010310
    today = date_format('h-i-s, j-m-y, it is w Day');     // 05-16-18, 10-03-01, 1631 1618 6 Satpm01
    today = date_format('\i\t \i\s \t\h\e jS \d\a\y.');   // it is the 10th day.
    today = date_format("D M j G:i:s Y");                 // Sat Mar 10 17:16:18 2001
    today = date_format('H:m:s \m \i\s\ \m\o\n\t\h');     // 17:03:18 m is month
    today = date_format("H:i:s");                         // 17:16:18 

script: date_format.gml

contributors: xot

[PHP's date function]: http://us2.php.net/manual/en/function.date.php