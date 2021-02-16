#define factorial
/// factorial(number)
//  GM:S v2.3+ compatible
//
//  Returns the factorial of a given number.
//
//  @param number      value, integer
//
//  Note: 21! is the largest factorial GameMaker:Studio can precisely
//  compute. Beyond that, floating-point arithmetic can represent 
//  factorials as large as 170! with decreasing precision.
//
/// GMLscripts.com/license
function factorial(number) {
    if (number <= 1) return 1;
    else return number * factorial(number - 1);
}