Script Submission Style Guide
=============================

The recommended style for script functions featured on [GMLscripts.com]
is in the spirit of [K&R] and One True Brace.

* Precede functions with a header in the form of a `/// comment block`.
* Use [JSDoc]-style markup in headers, including a function signature,
  description, list of parameters, and return values.
* Ensure the first sentence of a function is descriptive but as brief as
  possible; place usage details and special notes in additional sentences
  and paragraphs.
* List any function or asset dependencies in the header.
* Use short and descriptive names for parameters and variables.
* Separate parameters and arguments using a comma followed by a space.
* Limit line lengths to 80 characters, if possible.
* Terminate statements with a semicolon.
* Place an opening brace on the same line as its construct or conditional.
* Align a closing brace with its controlling statement.
* Place an `else` or `until` conditional on the same line as its preceding
  brace.
* Indent blocks of code consistently using four spaces per level.
* Avoid single-line blocks of code.
* Always declare local variables with a `var` statement and static
  variables with a `static` statement.
* Never create or modify global or instance variables unless it is a
  well-defined feature of the function.
* Terminate the execution of a function with a returned value.

Always check this style guide for changes before submitting contributions.

````````````````````````````````````````````````````````````````````````
/// @func   my_function(alfa, bravo, charlie)
///
/// @desc   Returns or does something briefly described in the
///         first sentence. Full usage details should follow.
///
///         Note: Use multiple paragraphs for clarity or to add
///         any special usage notes.
///
/// @param  {datatype}  alfa        brief parameter description
/// @param  {datatype}  bravo       brief parameter description
/// @param  {datatype}  charlie     brief parameter description
///
/// @return {datatype}  description of returned value
///
/// GMLscripts.com/license

function my_function(alfa, bravo, charlie)
{
    var delta = 0;

    // Useful comments are encouraged.
    for (var i=alfa; i<bravo; i+=charlie) {
        if (delta mod 3) {
            delta += i;
        } else {
            delta -= i;
        }
    }

    // Break up code sections to improve clarity.
    do {
        delta += 10;
        delta /= 2;
    } until (delta > 0);

    // Functions should always return some value.
    return delta;
}
````````````````````````````````````````````````````````````````````````

[GMLscripts.com]: #
[K&R]: https://en.wikipedia.org/wiki/Indent_style#K.26R_style
[JSDoc]: https://manual.gamemaker.io/monthly/en/#t=The_Asset_Editors%2FCode_Editor_Properties%2FJSDoc_Script_Comments.htm
