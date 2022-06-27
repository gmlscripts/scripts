string_limit
============

Returns a given string, truncated if it exceeds a certain length.
If truncated, an extension (such as an ellipsis) can be appended.

    //  string_limit(str, len, ext)
    s = string_limit("this is long text", 10, "...");   //  "this is..."
    s = string_limit("this is long text", 10);          //  "this is lo"
    s = string_limit("this is long text", 1);           //  "t"
    s = string_limit("this is long text", 1, "...");    //  "..."

script: string_limit.gml

contributors: xot
