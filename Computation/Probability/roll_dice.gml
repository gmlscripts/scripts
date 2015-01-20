#define roll_dice
/// roll_dice(num,sides)
//
//  Returns the sum of a number of die rolls 
//  using dice with a given number of sides.
//  eg. roll_dice(3,6) == (4 + 2 + 5) == 11
//
//      num         number of dice to roll, real
//      sides       number of sides on each die, real
//
/// GMLscripts.com/license
{
    var sum;
    sum = 0;
    repeat (argument0) sum += floor(random(argument1))+1;
    return sum;
}