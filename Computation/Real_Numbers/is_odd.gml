#define is_odd
/// is_odd(value)
//  GM:S v2.3+ compatible
//
//  Returns true if a given value is odd, false otherwise.
//
//  @param value       value, real
//
/// GMLscripts.com/license
function is_odd(value) {
    return (value & 1);
}