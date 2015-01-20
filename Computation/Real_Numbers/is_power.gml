#define is_power
/// is_power(value,base)
//
//  Returns true if a given value is a power of the a given base,
//  false if it is not, and (-1) if the result is undefined.
//
//      value       number, real
//      base        exponential base, real
//
/// GMLscripts.com/license
{
    var value,base;
    value = argument0;
    base = argument1;
    if (argument1 == 0 && argument0 == 0) return -1;
    if (argument1 == 1 || argument0 == 1) return true;
    if (argument0 == 0 || argument1 == 0) return false;
    return ((logn(argument1,argument0) mod 1) == 0);
}