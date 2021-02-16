#define is_factor
/// is_factor(divisor,value)
//  GM:S v2.3+ compatible
//
//  Returns true if a given divisor is a factor of 
//  a given value, false otherwise.
//
//  @param divisor     divisor, real
//  @param value       value, real
//
/// GMLscripts.com/license
function is_factor(divisor,value) {
    return !(value mod divisor);
}