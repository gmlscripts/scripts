select_relative
===============

If a relative position is beyond the range of given choices, 
the position is clamped to be within range. If current value 
isn't among the choices, the return value is undefined.

    val = select_relative("Name", -2, "Hello", "Doctor", "Name");   //  val == "Hello"
    val = select_relative("Doctor", 2, "Hello", "Doctor", "Name");  //  val == "Name"

script: select_relative.gml

contributors: xot
