/// @func   map_range(x, a1, a2, b1, b2)
///
/// @desc   Returns a value remapped from one range to another.
///         Values outside the bounds of the current range will
///         be remapped outside the bounds of the new range.
///
/// @param  {real}      x           value to remap
/// @param  {real}      a1          start of current range
/// @param  {real}      a2			end of current range
/// @param  {real}      b1			start of new range
/// @param  {real}      b2			end of new range
///
/// @return {real}      remapped value
///
/// GMLscripts.com/license

function map_range(x, a1, a2, b1, b2)
{
    return b1 + (x-a1) * (b2-b1) / (a2-a1);
}
