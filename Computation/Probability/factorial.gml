#define factorial
/// factorial(number)
//
//  Returns the factorial of a given number.
//
//      number      value, integer
//
//  Note: 21! is the largest factorial GameMaker:Studio can precisely
//  compute. Beyond that, floating-point arithmetic can represent 
//  factorials as large as 170! with decreasing precision.
//
/// GMLscripts.com/license
{
    if (argument0 <= 1) return 1;
    else return argument0 * factorial(argument0 - 1);
}