string_random
=============

Returns a string of a given length composed of characters 
randomly selected from a given set. If the set is empty, 
the set of all printable ASCII characters will be used. 

Note: This differs from the legacy version which could select from
256 possible characters. GameMaker's current null-terminated string
handling would cause it to fail if character 0 was selected. The new
default behavior using printable ASCII is probably more useful. If
you need to produce random byte values, a buffer should be used.

script: string_random.gml

contributors: xot
