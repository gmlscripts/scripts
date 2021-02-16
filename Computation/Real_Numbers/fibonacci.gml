#define fibonacci
/// fibonacci(n)
//  GM:S v2.3+ compatible
//
//  Returns the nth number of the Fibonacci sequence.
//
//  @param n           desired Fibonacci number, non-negative integer, real
//
/// GMLscripts.com/license
function fibonacci(n) {
    return round(power((1+sqrt(5))/2,n)/sqrt(5));
}