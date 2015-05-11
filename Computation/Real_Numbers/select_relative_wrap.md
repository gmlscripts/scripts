select_relative_wrap
====================

Returns an argument in a position relative to a given value.
If a relative position is beyond the range of given choices,
the position is wrapped until it is within range. If current
value isn't among the choices, the return value is undefined.

    val = select_relative_wrap("Name", -2, "Hello", "Doctor", "Name");  //  val == "Hello"
    val = select_relative_wrap("Name", 2, "Hello", "Doctor", "Name");   //  val == "Doctor"

script: select_relative_wrap.gml

contributors: xot
