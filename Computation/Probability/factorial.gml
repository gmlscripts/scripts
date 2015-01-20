#define factorial
/// factorial(number)
//
//  Returns the factorial of a given number.
//
//      number      value, real
//
/// GMLscripts.com/license
{
    if (argument0 <= 1) return 1;
    else return argument0 * factorial(argument0 - 1);
}
