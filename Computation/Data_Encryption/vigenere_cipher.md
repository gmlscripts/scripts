vigenere_cipher
===============

This is based on the classic Vigenère cipher. Using a repeating key, the
letters in the target text are shifted in the alphabet by varying amounts.
While effective, this is not a strong encryption. A determined person would
likely be able to crack it. The cipher becomes more effective as the length
of the key increases. The biggest weakness with Vigenère ciphers is in cases
where many spaces or zero-value characters exist in the source data. When
that happens the enciphering key can be exposed. Using long keys which appear
random can help hide the exposure.

    G  A  M  E  M  A  K  E  R        7  1 13  5 13  1 11  5 18
    K  E  Y  K  E  Y  K  E  Y       11  5 25 11  5 25 11  5 25
    -  -  -  -  -  -  -  -  -       -- -- -- -- -- -- -- -- --
    R  F  L  P  R  Z  V  J  Q       18  6 12 16 18 26 22 10 17

Warning: This script is NO LONGER SUITABLE FOR GAMEMAKER. Because GameMaker
strings are null terminated, there is a very high chance that the encrypted
strings generated by this script will be truncated resulting in data loss.
The script must be modified to perform its actions using a different data
type. Buffers are the recommended type for arbitrary binary data such as
that produced by this script. Alternatively, you may wish to try
[vigenere_ascii], although it may have other problems caused by GameMaker
string handling.

script: vigenere_cipher.gml

contributors: xot

[vigenere_ascii]: /script/vigenere_ascii
