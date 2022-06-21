/// @func   map(x, start1, end1, start2, end2)
///
/// @desc   Returns a value remapped from one range to another.
///         Values outside the bounds of the current range will
///         be remapped outside the bounds of the new range.
///
/// @param  {real}      x           value to remap
/// @param  {real}      start1      start of current range
/// @param  {real}      end1        end of current range
/// @param  {real}      start2      start of new range
/// @param  {real}      end2        end of new range
///
/// @return {real}      remapped value
///
/// GMLscripts.com/license

function map(x, start1, end1, start2, end2)
{
    return start2 + (end2-start2) * (x-start1) / (end1-start1);
}
