/// @func   roll_dice(num, sides)
///
/// @desc   Returns the sum of a number of die rolls using dice with a given
///         number of sides. For example, roll_dice(3, 6) will produce a range
///         of values from 3 to 18 with an average value of 10.5.
///
/// @param  {real}      num         number of dice to roll
/// @param  {real}      sides       number of sides on each die
///
/// @return {real}      sum of dice rolls
///
/// GMLscripts.com/license

function roll_dice(num, sides)
{
    var sum = 0;
    repeat (num) sum += floor(random(sides))+1;
    return sum;
}
