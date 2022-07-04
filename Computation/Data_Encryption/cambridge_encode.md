cambridge_encode
================

Because the average brain processes entire words all at once (not
recursively by letter) only the start and stop characters in a word
need be constant for most people to be able to read the word. Using
this encoding method people can read your text, but machines will
have a harder time picking out keywords.

    s = cambridge_encode("Hello, World!");  //  eg. "Hlelo, Wrlod!"
    s = cambridge_encode("Hello, World!");  //  eg. "Hlleo, Wolrd!"
    s = cambridge_encode("tossed salads");  //  eg. "tsesod sdalas"
    s = cambridge_encode("scrambled egg");  //  eg. "srbleacmd egg"

script: cambridge_encode.gml

contributors: Leif902, xot
