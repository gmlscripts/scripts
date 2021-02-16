#define select
/// select(n,choice0,choice1,choice2...)
//  GM:S v2.3+ compatible
//
//  Returns an argument selected by n. If n equals 0,
//  the first choice is returned. The selection value
//  is clamped to return a valid argument. If n is
//  not a real value, undefined is returned.
//
//  @param n           selection, integer
//  @param choiceN     value to return, if selected
//
//  eg. select(0, "False", "True") == "False"
//      select(1, "False", "True") == "True"
//
/// GMLscripts.com/license
function select(n,choice0,choice1,choice2...) {
    if (!is_real(argument[0])) return undefined;
    return argument[clamp(argument[0] + 1, 1, argument_count - 1)];
}