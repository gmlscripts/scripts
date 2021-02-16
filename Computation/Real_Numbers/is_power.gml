#define is_power
/// is_power(value,base)
//  GM:S v2.3+ compatible
//
//  Returns true if a given value is a power of the a given base,
//  false if it is not, and (-1) if the result is undefined.
//
//  @param value       number, real
//  @param base        exponential base, real
//
/// GMLscripts.com/license
function is_power(value,base) {
    
    if (base == 0 && value == 0) return -1;
    if (base == 1 || value == 1) return true;
    if (value == 0 || base == 0) return false;
    return ((logn(base,value) mod 1) == 0);
}