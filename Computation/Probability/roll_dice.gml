#define roll_dice
/// roll_dice(num,sides)
//  GM:S v2.3+ compatible
//
//  Returns the sum of a number of die rolls using dice with a given
//  number of sides. For example, roll_dice(3,6) will produce a range
//  of values from 3 to 18 with a mean value of 10.5.
//
//  @param num         number of dice to roll, integer
//  @param sides       number of sides on each die, integer
//
/// GMLscripts.com/license
function roll_dice(num,sides) {
    var sum = 0;
    repeat (num) sum += floor(random(sides))+1;
    return sum;
}