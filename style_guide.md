Script Submission Style Guide
=============================

The recommended style for scripts featured on GMLscripts.com is in the spirit of [K&R].
More specific guidelines can be found in [Sun Java Code Conventions] document.
The point is to maintain site-wide consistency while encouraging good coding practices.

* Scripts are preceded by a header in the form of a comment block. 
* Script headers are placed outside of the main function block.
* Script headers are descriptive and include sample usage, arguments, returns, and data types.
* Script headers should include any special usage notes.
* If a script is dependent on others, they should be listed in the script header.
* Scripts are enclosed in curly braces, the "{" symbol and the "}" symbol.
* Indentation is 4 characters.
* Statements use a semicolon as a terminator.
* Line length should be limited to 80 characters if possible.
* Opening braces are on the same line as the preceding construct or conditional.
* Closing braces are on their own line aligned with the construct. 
* An "until" conditional goes on the same line as the closing brace.
* Single-line code blocks (with or without braces) should be avoided unless very simple.
* Always declare temporary variables with a "var" statement.
* Never create global or local variables unless it is a well defined function of the script.
* All scripts in all cases should terminate execution with some form of returned value.

This site may change styles at some point, so always check this style guide before submitting new scripts. 


    /// script_name(a,b,c);
    //
    //  Returns or does something briefly described in the
    //  first sentence. Full usage details should follow.
    //
    //  Use multiple paragraphs to add any special notes
    //  as required for clarity.
    //
    //      a       brief argument description, data type
    //      b       brief argument description, data type
    //      c       brief argument description, data type
    //
    //  Less important notes can be placed down here.
    //
    /// GMLscripts.com/license
    {
        var a,b,c,d,i;
        a = argument0;
        b = argument1;
        c = argument2;
        d = 0;
        
        //  Useful comments are encouraged.
        for (i=a; i<b; i+=c) {
            if (d mod 3) d += i;
            else d -= i;
        }
        
        //  Break up code sections to improve clarity.
        do {
            d += 10;
            d /= 2;
        } until (d > 0);
        
        //  Scripts should always return some value.
        return d;
    }

[Sun Java Code Conventions]: http://java.sun.com/docs/codeconv/CodeConventions.pdf
[K&R]: http://en.wikipedia.org/wiki/Indent_style#K.26R_style