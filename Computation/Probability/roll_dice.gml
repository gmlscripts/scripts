#define roll_dice
/// roll_dice(num,sides)
//
//  Returns the sum of a number of die rolls using dice with a given
//  number of sides. For example, roll_dice(3,6) will produce a range
//  of values from 3 to 18 with a mean value of 10.5.
//
//      num         number of dice to roll, integer
//      sides       number of sides on each die, integer
//
/// GMLscripts.com/license
{
    var sum = 0;
    repeat (argument0) sum += floor(random(argument1))+1;
    return sum;
}