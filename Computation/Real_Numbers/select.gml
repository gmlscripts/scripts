#define select
/// select(n,choice0,choice1,..)
//
//  Returns an argument selected by n. If n equals 0,
//  the first choice is returned. The selection value
//  is clamped to return a valid argument.
//
//  eg. select(boolean, "False", "True");
//
//      n           selection, integer
//      choiceN     value to return, if selected
//
/// GMLscripts.com/license
{
    return argument[clamp(argument[0] + 1, 1, argument_count - 1)];
}