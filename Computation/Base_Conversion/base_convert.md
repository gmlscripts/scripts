base_convert
============

This script is used to convert integer values between to arbitrary bases. 
The numbers are supplied and returned as strings and the bases are supplied 
as integers. 

    n = base_convert("789", 10, 8);  //  decimal to octal returns "1425"
    n = base_convert("abc", 16, 10); //  hex to decimal returns "2748"
    n = base_convert("123", 10, 2);  //  decimal to binary returns "1111011"

Note: Check related scripts for several faster conversions of specific bases.

script: base_convert.gml

contributors: xot
