/// @func   select(n, choice0, choice1, choice2, ...)
///
/// @desc   Returns an argument selected by n. If n equals 0,
///         the first choice is returned. The selection value
///         is clamped to return a valid argument. If n is
///         not a real value, undefined is returned.
///
///         eg. select(bool, "False", "True");
///
/// @param  {real}      n           selected array index
/// @param  {any*}      choiceN     possible values to return
///
/// @return {any*}      selected choice
///
/// GMLscripts.com/license

function select()
{
    if (!is_real(argument[0])) return undefined;
    return argument[clamp(argument[0] + 1, 1, argument_count - 1)];
}
