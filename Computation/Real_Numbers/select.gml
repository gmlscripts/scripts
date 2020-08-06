#define select
/// select(n,choice0,choice1,choice2...)
//
//  Returns an argument selected by n. If n equals 0,
//  the first choice is returned. The selection value
//  is clamped to return a valid argument. If n is
//  not a real value, undefined is returned.
//
//      n           selection, integer
//      choiceN     value to return, if selected
//
//  eg. select(0, "False", "True") == "False"
//      select(1, "False", "True") == "True"
//
/// GMLscripts.com/license
{
    if (!is_real(argument[0])) return undefined;
    return argument[clamp(argument[0] + 1, 1, argument_count - 1)];
}