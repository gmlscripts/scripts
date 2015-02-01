crc16
=====

Performs a cyclic redundancy check on a string.

[Wikipedia]:
> A cyclic redundancy check (CRC) is a type of function that takes as input
> a data stream of any length, and produces as output a value of a certain 
> space, commonly a 32-bit integer. The term CRC is often used to denote 
> either the function or the function's output. A CRC can be used as a 
> checksum to detect alteration of data during transmission or storage. 
> CRCs are popular because they are simple to implement in binary hardware, 
> are easy to analyze mathematically, and are particularly good at detecting 
> common errors caused by noise in transmission channels. The CRC was 
> invented by W. Wesley Peterson, and published in his 1961 paper.

[Wikipedia]: http://en.wikipedia.org/wiki/Cyclic_redundancy_check

    crc16();                    //  initialize
    text = "Hello World";
    hash = crc16(text);         //  hash == 0x4D25
    hash = crc16(text,true);    //  hash == 0xB126
    
Note: This uses the common 16-bit CRC16-CCITT algorithm (with two modes 
of operation) used in X.25, V.41, CDMA, Bluetooth, XMODEM, PPP, IrDA, 
BACnet, and other protocols.

Note: This script requires initialization to use. To ready the script
for use it must first be called without any arguments. This only needs
to be done once.

script: crc16.gml

contributors: xot
