array_select_relative
=====================

Returns an array element in a position relative to a given value. This is useful
for sequentially selecting values from an array based on a current value.

    //  Move forwards {+1} through a list of colors
    color = select_relative(color, +1, [c_red, c_orange, c_yellow, c_green, c_blue]);

In the above example, if the current value of `color` is `c_orange`, then its
new value would be set to the next value in the list, `c_yellow`.

    //  Or move backwards {-1} through a list of colors
    color = select_relative(color, -1, [c_red, c_orange, c_yellow, c_green, c_blue]);

If a relative position is beyond the range of given choices, the position is clamped
to be within range. In the second example, if the current value of `color` is `c_red`,
then it would keep its value because `c_red` is the first value in the list.

If the current value isn't among the choices, the returned value is undefined.

script: array_select_relative.gml

contributors: xot
