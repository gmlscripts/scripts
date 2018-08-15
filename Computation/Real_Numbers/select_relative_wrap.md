select_relative_wrap
====================

This is useful for sequentially selecting values from a list based on a current value.

    //  Move forwards {+1} through a list of colors
    color = select_relative_wrap(color, +1, c_red, c_orange, c_yellow, c_green, c_blue);
    
In the above example, if the current value of `color` is `c_orange`, then its new value 
would be set to the next value in the list, `c_yellow`.

    //  Or move backwards {-1} through a list of colors
    color = select_relative_wrap(color, -1, c_red, c_orange, c_yellow, c_green, c_blue);

If a relative position is beyond the range of given choices, the position "wraps around" 
to the other end of the list. In the second example, if the current value of `color` is 
`c_red`, then its new value would be set to `c_blue`.

If the current value isn't among the choices, the returned value is undefined.

script: select_relative_wrap.gml

contributors: xot
