md2
===

[Wikipedia]:

> Message Digest Algorithm 2 (MD2) is a cryptographic hash function 
> developed by Ronald Rivest in 1989. The algorithm is optimized for 
> 8-bit computers. MD2 is specified in RFC 1319. Although other algorithms 
> have been proposed since, such as MD4, MD5 and SHA, even as of 2004 MD2 
> remains in use in public key infrastructures as part of certificates 
> generated with MD2 and RSA. The 128-bit (16-byte) MD2 hashes (also termed 
> message digests) are typically represented as 32-digit hexadecimal numbers.
> Even a small change in the message will (with overwhelming probability) 
> result in a completely different hash:
>
> `MD2("The quick brown fox jumps over the lazy dog")`
> `= 03d85a0d629d2c442e987525319fc471`
>  
> `MD2("The quick brown fox jumps over the lazy cog")`
> `= 6b890c9292668cdbbfda00a4ebf31f05`

[Wikipedia]: http://en.wikipedia.org/wiki/MD2_(cryptography)

Note: This script requires initialization to use. To ready the script
for use it must first be called without any arguments. This only needs
to be done once.

script: md2.gml

contributors: xot
