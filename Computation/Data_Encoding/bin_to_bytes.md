bin_to_bytes
============

This function can turn a string of binary digits into a string of raw bytes.

For instance, "01001000" is equal to 72 in decimal, which is the ASCII/Unicode
value for "H".

    // Convert a string of binary digits to
    // a string raw bytes spelling "HELLO"
    binary = "0100100001000101010011000100110001001111";
    bytes = bin_to_bytes(binary);
    show_message(bytes);

NOTE: Care must be taken when using this function with GameMaker. Unlike
earlier editions of GameMaker, strings are "null-terminated" and string
functions are not "binary safe". Inserting a byte with a value of zero into
a string will prevent the rest of the string from being usable. Further,
certain combinations of bytes may be interpreted as UTF-8 multibyte characters
and results may vary on different target platforms. Storing arbitrary binary
data in GameMaker strings is NOT recommended.

script: bin_to_bytes.gml

contributors: xot
