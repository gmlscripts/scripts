number_format
=============

Returns a number as a string with thousands and decimal markers.
The value can be rounded to a number of decimal places and the
decimal and thousands markers can be optionally specified.

    //  number_format(number, places, decimal, thousands)
    s = number_format(1000000, 0, ".", ",");       //  "1,000,000"
    s = number_format(1000000, 2, ".", ",");       //  "1,000,000.00"
    s = number_format(1234.5678, 2);               //  "1,234.57"
    s = number_format(1234.5678, 3, ",", "");      //  "1234,568"
    s = number_format(-1234.5678, 4, ",", "");     //  "-1234,5678"
    s = number_format(1234567.890, 5);             //  "1,234,567.89000";
    s = number_format(1234567.890, 5,  "", "");    //  "123456789000";

script: number_format.gml

contributors: xot
