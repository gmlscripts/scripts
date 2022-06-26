/// @func   random_weighted(p0 [, p1, ..., pN])
///
/// @desc   Returns a randomly selected index based on their given relative
///         probabilities. Any number of index probabilities can be supplied,
///         expressed by any positive numerical value including percentages.
///
///         eg. random_weighted(1,2,3) == 0: 1/6 of the time
///                                    or 1: 1/3 of the time
///                                    or 2: 1/2 of the time
///
/// @param  {real}      p0          first index probability
/// @param  {real}      p1...pN     additional probabilities
///
///	@return {real}      index of the selected probability
///
/// GMLscripts.com/license

function random_weighted() 
{
    var sum = 0;
    for (var i=0; i<argument_count; i++) {
        sum += argument[i];
    }
    var rnd = random(sum);
    for (var i=0; i<argument_count; i++) {
        if (rnd < argument[i]) return i;
        rnd -= argument[i];
    }
}
