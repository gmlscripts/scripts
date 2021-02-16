#define round_fixed
/// round_fixed(number,places)
//  GM:S v2.3+ compatible
//
//  Returns the given number rounded to the a number of places.
//
//  @param number      number to round, real
//  @param places      decimal places to round to, real
//
/// GMLscripts.com/license
function round_fixed(number,places) {
    return round(number*power(10,places))/power(10,places);
}