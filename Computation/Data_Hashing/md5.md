md5
===

Note: The GameMaker function md5_string_utf8() produces the same
and obsoletes this script ... which is fortunate because the script
below may not work correctly in current versions of GameMaker.

[Wikipedia]:
> In cryptography, MD5 (Message-Digest algorithm 5) is a widely used,
> partially insecure cryptographic hash function with a 128-bit hash value.
> As an Internet standard (RFC 1321), MD5 has been employed in a wide
> variety of security applications, and is also commonly used to check
> the integrity of files. An MD5 hash is typically expressed as a 32 digit
> hexadecimal number. Even a small change in the message will (with
> overwhelming probability) result in a completely different hash, due to
> the avalanche effect.
>
> `MD5("The quick brown fox jumps over the lazy dog")`
> `= 9e107d9d372bb6826bd81d3542a419d6`
>
> `MD5("The quick brown fox jumps over the lazy dog.")`
> `= e4d909c290d0fb1ca068ffaddf22cbd0`

[Wikipedia]: http://en.wikipedia.org/wiki/Md5

Note: This script requires initialization to use. To ready the script
for use it must first be called without any arguments. This only needs
to be done once.

script: md5.gml

contributors: xot
