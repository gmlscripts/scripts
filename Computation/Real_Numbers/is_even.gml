#define is_even
/// is_even(value)
//  GM:S v2.3+ compatible
//
//  Returns true if a given value is even, false otherwise.
//
//  @param value       value, real
//
/// GMLscripts.com/license
function is_even(value) {
    return !(value & 1);
}