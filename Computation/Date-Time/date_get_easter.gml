#define date_get_easter
/// date_get_easter(year)
//
//  Returns the GM date-time of Easter for the given year.
//
//      year        calendar year, integer
//
/// GMLscripts.com/license
{
    var year,a,b,c,d,e,f,g,h,i,k,l,m,month,day;
    year = argument0;
    a = year mod 19;
    b = year div 100;
    c = year mod 100;
    d = b div 4;
    e = b mod 4;
    f = (b+8) div 25;
    g = (b-f+1) div 3;
    h = (19*a+b-d-g+15) mod 30;
    i = c div 4;
    k = c mod 4;
    l = (32+2*e+2*i-h-k) mod 7;
    m = (a+11*h+22*l) div 451;
    month = (h+l-7*m+114) div 31;
    day = ((h+l-7*m+114) mod 31)+1;
    return date_create_datetime(year, month, day, 0, 0, 0);
}