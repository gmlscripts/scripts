#define fibonacci
/// fibonacci(n)
//
//  Returns the nth number of the Fibonacci sequence.
//
//      n           desired Fibonacci number, non-negative integer, real
//
/// GMLscripts.com/license
{
    return round(power((1+sqrt(5))/2,argument0)/sqrt(5));
}