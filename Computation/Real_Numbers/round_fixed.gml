#define round_fixed
/// round_fixed(number,places)
//
//  Returns the given number rounded to the a number of places.
//
//      number      number to round, real
//      places      decimal places to round to, real
//
/// GMLscripts.com/license
{
    return round(argument0*power(10,argument1))/power(10,argument1);
}